import 'package:animal_love/model/BottomIcon.dart';
import 'package:animal_love/model/category.dart';
import 'package:animal_love/model/favorite.dart';
import 'package:animal_love/util/Linepainter.dart';
import 'package:animal_love/util/constants.dart';
import 'package:animal_love/view/FavoritesView.dart';
import 'package:animal_love/view/Profile.dart';
import 'package:animal_love/view/detailAnimal.dart';
import 'package:animal_love/view/successStories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/Animal.dart';
import '../model/User.dart';
import '../util/CategoryItem.dart';
import '../util/ShowDialog.dart';

class Home extends StatefulWidget {

  final User user;
  final List<Animal> listFavorites;
  const Home({Key? key, required this.user, required this.listFavorites}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentPage) {
        case 0:
          return HomePage(user: widget.user,listFavorites: widget.listFavorites,);

        case 1:
          return const SuccessStories();

        case 2:
          return Profile(user: widget.user,);

        default:
          return Center(
            child: Text(
              'Hubo un error',
              style: GoogleFonts.roboto(),
            ),
          );
      }
    }

    return WillPopScope(
      onWillPop: () async {
        showAlertDialogExit(context, Icons.exit_to_app, "Salir",
            "¿Seguro que quieres salir?", Colors.red, () {
          Navigator.popUntil(context, (route) => route.isFirst);
        });

        return false;
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: body(),
        bottomNavigationBar: Container(
          height: 60.h,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                  bottomIcons.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentPage = index;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              currentPage == index
                                  ? bottomIcons[index].select
                                  : bottomIcons[index].unselect,
                              color: currentPage == index
                                  ? kPrimary2Color
                                  : Colors.black,
                            ),
                            const SizedBox(height: 10),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              decoration: BoxDecoration(
                                  color: currentPage == index
                                      ? kPrimary2Color
                                      : Colors.black,
                                  shape: BoxShape.circle),
                              width: currentPage == index ? 7 : 0,
                              height: currentPage == index ? 7 : 0,
                            )
                          ],
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final User user;
  final List<Animal> listFavorites;
  const HomePage({Key? key, required this.user, required this.listFavorites}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentCategory = 10;
  bool favorite = false;
  List<Animal> listOriginalAnimals = animalsModel;
  List<Animal> listFilterAnimals = [];
  static const List<String> listCity = <String>[
    'Todos',
    'Barranquilla',
    'Bogota',
    'Medellin',
    'Cali',
    'Valledupar',
    'Bucaramanga'
  ];
  String listSelect = listCity.first;

  @override
  void initState() {
    super.initState();
    listFilterAnimals.addAll(listOriginalAnimals);
    listFilterAnimals.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Tu ubicación',
                              style: GoogleFonts.roboto(
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: kPrimary2Color,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: listSelect,
                              icon:
                                  const Icon(Icons.keyboard_arrow_down_rounded),
                              style: const TextStyle(color: Colors.black),
                              onChanged: (String? value) {
                                setState(() {
                                  if (value == listCity[0]) {
                                    listSelect = value!;
                                    listFilterAnimals = listOriginalAnimals;
                                    listFilterAnimals.shuffle();
                                  } else {
                                    listSelect = value!;
                                    filterList(listSelect);
                                    listFilterAnimals.shuffle();
                                  }
                                });
                              },
                              items: listCity.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async{
                    final favorite = Favorite([], widget.user.user);
                    final favoriteAnimals =
                        await favorite.loadFavoriteAnimals(widget.user.user);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FavoriteView(
                            user: widget.user,
                            listFavorites: favoriteAnimals,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.favorite_outline_outlined,
                          color: Colors.black)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(4, 8))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Buscar Mascotas',
                      hintStyle: GoogleFonts.poppins(),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: kPrimary2Color),
                  onChanged: (value) {
                    currentCategory = 10;
                    filterList(value);
                    listFilterAnimals.shuffle();
                  },
                ),
              )),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Mascotas",
                  style: GoogleFonts.roboto(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "ver todos",
                  style: GoogleFonts.roboto(color: kPrimary2Color),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 5),
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (currentCategory == index) {
                            currentCategory = 10;
                            listFilterAnimals = listOriginalAnimals;
                            listFilterAnimals.shuffle();
                          } else {
                            currentCategory = index;
                            filterList(categories[index].name);
                            listFilterAnimals.shuffle();
                          }
                        });
                      },
                      child: CategoryItem(
                        selected: currentCategory == index,
                        category: categories[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text('Result (${listFilterAnimals.length})',
                    style: GoogleFonts.roboto(
                        color: Colors.black.withOpacity(0.6))),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: CustomPaint(
                    painter: LinePainter(),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listFilterAnimals.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () async {
                        final favorite = Favorite([], widget.user.user);
                        final favoriteAnimals =
                            await favorite.loadFavoriteAnimals(widget.user.user);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailAnimals(
                                user: widget.user,
                                animal: listFilterAnimals[index],
                                listFavorites: favoriteAnimals,
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(4, 8))
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.transparent,
                                width: double.infinity,
                                child: Image.asset(
                                  listFilterAnimals[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  listFilterAnimals[index].name,
                                  style: GoogleFonts.poppins(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  void filterList(String filter) {
    setState(() {
      listFilterAnimals = listOriginalAnimals
          .where((animals) =>
              animals.name.toLowerCase().contains(filter.toLowerCase()) ||
              animals.age.toString().contains(filter.toLowerCase()) ||
              animals.rating == filter ||
              animals.location == filter)
          .toList();
    });
  }
}
