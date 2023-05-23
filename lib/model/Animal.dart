class Animal {
  final String image, name, location, rating, description;
  final int age;

  Animal(this.image, this.name, this.location, this.rating, this.age,
      this.description);
}

List<Animal> animalsModel = [

  //perros
  Animal(
      "assets/perros/perro1.jpg",
      "Siria",
      "Barranquilla",
      "Perros",
      5,
      "Siria es un perro de raza Labrador Retriever de 2 años de edad. Es un compañero juguetón y le encanta jugar a buscar la pelota. Max es muy amigable y se lleva bien con otros perros. Está buscando una familia activa que pueda darle mucho amor y tiempo para jugar al aire libre."),
  Animal(
      "assets/perros/perro2.jpg",
      "Luna",
      "Barranquilla",
      "Perros",
      2,
      "Luna es una perrita mestiza de 3 años de edad. Es de tamaño mediano y tiene un pelaje suave y negro. Luna es cariñosa y le encanta ser acariciada. Es una excelente compañera y siempre estará dispuesta a recibir mimos. Luna se adapta bien a diferentes entornos y sería una gran adición a cualquier hogar amoroso."),
  Animal(
      "assets/perros/perro3.jpg",
      "Bella",
      "Valledupar",
      "Perros",
      8,
      "Bella es una perrita de raza Yorkshire Terrier de 5 años de edad. Es pequeña pero tiene un corazón enorme. Bella es leal y protectora, siempre estará a tu lado. Es una perrita tranquila que disfruta de los paseos relajantes y los momentos de descanso en el regazo de su dueño. Bella busca un hogar donde pueda recibir atención y cariño constante."),
  Animal(
      "assets/perros/perro4.jpeg",
      "Coco",
      "Medellin",
      "Perros",
      12,
      "Coco es un perro mestizo de 1 año de edad. Tiene un pelaje marrón y blanco y unos ojos expresivos. Coco es un perro amigable y sociable, le encanta estar rodeado de personas. Es juguetón y le gusta aprender nuevos trucos. Coco sería un compañero leal y divertido para una familia que pueda brindarle amor y atención."),
  Animal(
      "assets/perros/perro5.jpg",
      "Rocky",
      "Bogota",
      "Perros",
      4,
      "Rocky es un perro de raza Boxer de 4 años de edad. Es enérgico y lleno de vida. A Rocky le encanta correr y jugar al aire libre. Es inteligente y aprende rápidamente nuevos comandos. Rocky se lleva bien con los niños y es un gran protector de su familia. Está buscando un hogar activo que pueda satisfacer su necesidad de ejercicio y estimulación mental."),
  Animal(
      "assets/perros/perro6.jpg",
      "Daisy",
      "Cali",
      "Perros",
      7,
      " Daisy es una perrita de raza Beagle de 3 años de edad. Tiene un pelaje corto y tricolor que la hace adorable. Daisy es una compañera tranquila y amigable. Le encanta pasear y explorar nuevos lugares. Es muy buena con los niños y se lleva bien con otros perros. Daisy está lista para encontrar un hogar lleno de cariño y aventuras."),
  Animal(
      "assets/perros/perro7.jpeg",
      "Duke",
      "Barranquilla",
      "Perros",
      9,
      "Duke es un perro de raza Pastor Alemán de 2 años de edad. Es un perro inteligente y leal, perfecto para familias activas. Duke es enérgico y disfruta de largas caminatas y actividades al aire libre. Es un perro protector y se lleva bien con otros perros después de una adecuada socialización. Duke busca una familia que pueda brindarle amor, entrenamiento y estimulación mental."),

  //gatos
  Animal(
      "assets/gatos/gato1.jpg",
      "lamarash",
      "Bucaramanga",
      "Gatos",
      10,
      "lamarash es una gata de pelaje blanco y ojos verdes. Tiene aproximadamente 1 año de edad. Es una gata juguetona y curiosa que siempre está explorando su entorno. Luna es muy cariñosa y le encanta recibir mimos y ronronear en el regazo de sus dueños. Está buscando un hogar tranquilo donde pueda recibir amor y atención constante"),
  Animal(
      "assets/gatos/gato2.png",
      "simba",
      "Valledupar",
      "Gatos",
      1,
      "Simba es un gato naranja y blanco de 3 años de edad. Es un gato tranquilo y relajado que disfruta de largas siestas bajo el sol. Simba es independiente pero también le gusta la compañía humana. Es un gato cariñoso y le encanta recibir caricias en la cabeza. Está buscando un hogar sereno donde pueda disfrutar de momentos de tranquilidad y afecto"),
  Animal(
      "assets/gatos/gato3.jpg",
      "Oliver",
      "Medellin",
      "Gatos",
      5,
      "Oliver es un gato negro de 2 años de edad. Es un gato aventurero y curioso que le encanta explorar cada rincón de su hogar. Oliver es muy sociable y se lleva bien con otros gatos. Es juguetón y siempre está buscando una oportunidad para divertirse. Oliver busca una familia activa y amorosa que pueda satisfacer su necesidad de juego y exploración."),
  Animal(
      "assets/gatos/gato4.jpg",
      "Fofo",
      "Barranquilla",
      "Gatos",
      6,
      "es un gato negro y blanco de 1 año de edad. Es un gato lleno de energía y curiosidad. Max es muy juguetón y le encanta cazar juguetes y perseguir pelotas. Es un gato amigable y se lleva bien con otros gatos y perros. Max está buscando una familia activa que pueda brindarle estímulos mentales y mucho juego."),
  Animal(
      "assets/gatos/gato5.jpg",
      "Bella",
      "Bucaramanga",
      "Gatos",
      8,
      "Bella es una gata de pelaje atigrado y blanco. Tiene aproximadamente 4 años de edad. Bella es una gata tímida al principio, pero una vez que se siente segura, se convierte en una compañera leal y cariñosa. Le encanta pasar el tiempo en su rascador y observar el mundo desde las alturas. Bella está buscando un hogar tranquilo y paciente donde pueda sentirse segura y amada."),
  Animal(
      "assets/gatos/gato6.jpeg",
      "arcangel",
      "Cali",
      "Gatos",
      11,
      "es una gata siamesa de 2 años de edad. Tiene ojos azules brillantes y un pelaje suave y sedoso. Coco es una gata inteligente y vocal que disfruta de la interacción con sus dueños. Es cariñosa y le encanta recibir atención. Coco también es una excelente cazadora de juguetes y le gusta jugar enérgicamente. Está buscando un hogar donde pueda recibir estímulos mentales y afecto constante."),
  Animal(
      "assets/gatos/gato7.jpg",
      "Mia",
      "Valledupar",
      "Gatos",
      1,
      "Mia es una gata de pelo largo y color gris. Tiene aproximadamente 5 años de edad. Mia es una gata tranquila y relajada que disfruta de momentos de calma y serenidad. Le gusta tomar siestas en lugares acogedores y recibir caricias suaves. Mia busca un hogar tranquilo donde pueda tener un espacio seguro para relajarse y ser apreciada por su belleza y serenidad."),

  //aves
  Animal(
      "assets/aves/aves1.jpg",
      "Kiwi",
      "Barranquilla",
      "Aves",
      1,
      "Kiwi es un loro de color verde brillante con plumas suaves y un pico curvo. Es un loro sociable y inteligente que puede aprender a imitar palabras y sonidos. Kiwi disfruta de la interacción humana y le encanta jugar y explorar. Está buscando un hogar con dueños comprometidos que puedan brindarle estimulación mental y tiempo de calidad."),
  Animal(
      "assets/aves/ave2.jpg",
      "Pepe",
      "Bucaramanga",
      "Aves",
      2,
      " Pepe es un canario de color amarillo vibrante con un canto melodioso. Es un pájaro pequeño pero lleno de personalidad. Pepe es curioso y disfruta de la compañía humana. Le gusta cantar y llenar el ambiente con su alegre melodía. Pepe está buscando un hogar con alguien que aprecie su canto y pueda proporcionarle un espacio seguro y una alimentación adecuada"),
  Animal(
      "assets/aves/ave3.jpg",
      "pacho",
      "Medellin",
      "Aves",
      2,
      "pacho es un loro cacatúa de cresta amarilla. Es una ave grande y hermosa con un plumaje blanco y una cresta distintiva en la cabeza. Coco es muy cariñoso y le encanta interactuar con su familia humana. Es inteligente y puede aprender trucos y comandos. Coco busca un hogar con personas que comprendan las necesidades de las cacatúas y puedan brindarle atención y cuidado adecuados."),
  Animal(
      "assets/aves/ave4.jpg",
      "lolita",
      "Bogota",
      "Aves",
      1,
      "lolita es una periquita de colores brillantes. Tiene un plumaje azul, verde y amarillo, y es conocida por su energía y su capacidad para hacer trucos. Lola es muy sociable y disfruta de la compañía de otros periquitos. Le gusta volar y explorar su entorno. Lola está buscando un hogar con una jaula espaciosa y dueños que puedan brindarle estimulación mental y socialización adecuadas."),
  Animal(
      "assets/aves/ave5.jpg",
      "Charlie",
      "Bogota",
      "Aves",
      1,
      "Charlie es un pájaro del amor, también conocido como inseparable. Es un pájaro pequeño con un plumaje verde y un anillo de color alrededor del cuello. Charlie es muy leal y disfruta de la compañía de su pareja o de su familia humana. Es inteligente y puede aprender a hacer trucos simples. Charlie busca un hogar donde pueda formar un vínculo fuerte y duradero con sus dueños."),
  Animal(
      "assets/aves/ave6.jpg",
      "Pedro",
      "Cali",
      "Aves",
      2,
      "Pedro es un loro amazona de frente azul. Tiene un plumaje principalmente verde con un parche de color azul en la frente. Pedro es conocido por su capacidad para hablar y tiene un amplio vocabulario. Es sociable y disfruta de la interacción con su familia humana. Pedro busca un hogar con personas que le brinden estimulación mental, ejercicio y atención constante."),
  Animal(
      "assets/aves/ave7.jpg",
      "Ruby",
      "Valledupar",
      "Aves",
      1,
      "Ruby es un ave del paraíso de colores vibrantes. Tiene plumas de color rojo intenso y azul brillante, con una cola larga y elegante. Ruby es una ave exótica y hermosa que requiere un ambiente adecuado y cuidados especiales. Es tímida pero puede ser cariñosa con su dueño. Ruby está buscando un hogar con experiencia en aves exóticas y que pueda proporcionarle una dieta equilibrada y un espacio enriquecedor."),

  //peces
  Animal(
      "assets/peces/pez1.jpg",
      "Angel",
      "Medellin",
      "Peces",
      1,
      "Angel es un pez ángel, conocido por su cuerpo plano y sus aletas elegantes y alargadas. Viene en una variedad de colores, como negro, plateado y blanco. Angel es un pez pacífico que se adapta bien a los acuarios comunitarios. Su belleza y gracia lo convierten en una opción popular para los amantes de los peces."),
  Animal(
      "assets/peces/pez2.jpg",
      "Nemo",
      "Valledupar",
      "Peces",
      1,
      "Nemo es un pez payaso, conocido por su llamativo color naranja y blanco y sus aletas características. Es un pez sociable y amigable que se lleva bien con otros peces de su especie. Nemo es perfecto para acuarios de agua salada y aporta un toque de color y vitalidad a cualquier entorno acuático."),
  Animal(
      "assets/peces/pez3.jpg",
      "Goldie",
      "Bucaramanga",
      "Peces",
      2,
      "Goldie es un pez dorado clásico, con su característico color dorado y aletas largas y fluidas. Es un pez tranquilo y pacífico que se lleva bien con otros peces dorados. Goldie es ideal para acuarios de agua fría y agrega un toque de belleza y serenidad a cualquier ambiente acuático."),
  Animal(
      "assets/peces/pez4.jpg",
      "Coral",
      "Cali",
      "Peces",
      1,
      "Coral es un pez cíclido, conocido por su vibrante coloración y su comportamiento interesante. Viene en una variedad de colores, como el rojo, amarillo y azul. Coral es un pez territorial y puede ser bastante activo. Su belleza y su personalidad distintiva lo convierten en una opción popular para los acuarios de agua dulce."),
  Animal(
      "assets/peces/pez5.jpg",
      "Blue",
      "Cali",
      "Peces",
      1,
      "Blue es un pez Betta, también conocido como luchador de Siam. Tiene un hermoso color azul intenso y aletas largas y esplendorosas. Blue es un pez de aspecto elegante y se adapta bien a acuarios pequeños. Es un nadador ágil y le encanta explorar su entorno. Blue es una excelente opción para aquellos que buscan un pez llamativo y de bajo mantenimiento."),
  Animal(
      "assets/peces/pez6.jpg",
      "Sparkle",
      "Bogota",
      "Peces",
      1,
      " Sparkle es un pez arcoíris australiano, caracterizado por sus colores brillantes y llamativos. Tiene una variedad de tonos, desde el azul y el verde hasta el rojo y el amarillo. Sparkle es un pez pacífico que agrega una explosión de color a cualquier acuario. Su presencia animada y su aspecto fascinante lo hacen destacar entre otros peces."),
  Animal(
      "assets/peces/pez7.jpg",
      "Bubbles",
      "Barranquilla",
      "Peces",
      1,
      "Bubbles es un pez globo, famoso por su capacidad para inflarse cuando se siente amenazado. Tiene un cuerpo redondeado y aletas cortas. Bubbles es un pez curioso y entretenido que agrega diversión y encanto a cualquier acuario. Requiere un ambiente adecuado y una alimentación apropiada para asegurar su bienestar."),

  //conejos
  Animal(
      "assets/conejos/conejo1.jpg",
      "Floppy ",
      "Barranquilla",
      "Conejos",
      2,
      "Floppy es un conejo Holland Lop de pelaje suave y orejas caídas. Es un conejo pequeño y juguetón que disfruta de la compañía humana. Floppy es sociable y se lleva bien con otros conejos. Es el compañero perfecto para aquellos que buscan un conejo adorable y cariñoso."),
  Animal(
      "assets/conejos/conejo2.jpg",
      "Zephyr",
      "Medellin",
      "Conejos",
      1,
      "Zephyr es un conejo enano de pelaje blanco y manchas marrones. Es un conejo curioso y activo que le encanta explorar su entorno. Coco es muy juguetón y disfruta de la interacción con su familia humana. Es un conejo amigable y se adapta bien a diferentes entornos."),
  Animal(
      "assets/conejos/conejo3.jpg",
      "Juniper",
      "Bogota",
      "Conejos",
      5,
      "Juniper es una coneja Angora de pelaje largo y suave. Tiene un hermoso color gris plateado. Luna es un conejo tranquilo y relajado que disfruta de momentos de calma y serenidad. Le gusta que le acaricien suavemente y se siente feliz al ser parte de una familia amorosa."),
  Animal(
      "assets/conejos/conejo4.jpg",
      "Auron",
      "Valledupar",
      "Conejos",
      2,
      "Auron  es un conejo Rex de pelaje corto y suave. Tiene un color negro brillante y ojos expresivos. Max es un conejo enérgico y juguetón que siempre está buscando diversión. Le encanta saltar y correr por el lugar, y disfruta de la compañía de su familia humana."),
  Animal(
      "assets/conejos/conejo5.jpg",
      "Cassius",
      "Barranquilla",
      "Conejos",
      1,
      "Cassius es una coneja mini lop de pelaje blanco y manchas negras. Tiene un aspecto adorable con sus orejas caídas y su pequeño tamaño. Bella es una coneja tímida al principio, pero una vez que se siente segura, se convierte en una compañera cariñosa. Disfruta de los momentos de tranquilidad y le encanta que la mimen con suavidad."),
  Animal(
      "assets/conejos/conejo6.jpg",
      "Orion",
      "Bucaramanga",
      "Conejos",
      3,
      "Orion es un conejo Lionhead de pelaje largo y esponjoso. Tiene un color gris oscuro con mechones en la cabeza que le dan un aspecto distintivo. Oliver es un conejo juguetón y sociable que disfruta de la interacción con su familia humana. Le encanta explorar y jugar con juguetes especiales para conejos."),
  Animal(
      "assets/conejos/conejo7.jpeg",
      "Amara",
      "Medellin",
      "Conejos",
      1,
      "Amara es una coneja de raza Californian de pelaje blanco con manchas negras y orejas negras. Es un conejo enérgico y activo que disfruta de largas sesiones de juego y ejercicio. Ruby es inteligente y puede aprender trucos y comandos. Busca una familia que le brinde amor y estimulación mental."),

  //hamster
  Animal(
      "assets/hamster/hamster1.jpg",
      "Peanut",
      "Barranquilla",
      "Hamster",
      2,
      "Peanut  es un adorable hamster sirio de pelaje dorado y ojos brillantes. Es un hamster sociable y cariñoso que disfruta de la interacción humana. Le encanta explorar su jaula y correr en su rueda. Oliver busca un hogar con una familia amorosa que pueda brindarle atención y tiempo de juego."),
  Animal(
      "assets/hamster/hamster2.jpg",
      "Gizmo",
      "Valledupar",
      "Hamster",
      3,
      "Gizmo es una hamster ruso de pelaje suave y grisáceo. Es una hamster tranquila y curiosa que se siente más activa durante la noche. Le encanta trepar y explorar su entorno en busca de aventuras. Luna busca un hogar donde pueda tener un espacio propio y una alimentación adecuada."),
  Animal(
      "assets/hamster/hamster3.jpg",
      "Cinnamon",
      "Medellin",
      "Hamster",
      2,
      "Cinnamon es un hamster chino de pelaje suave y color marrón claro. Es un hamster más reservado y nocturno, que disfruta de momentos de calma y tranquilidad. Le gusta excavar y construir túneles en su jaula. Coco busca un hogar donde pueda tener un ambiente enriquecido y ser apreciado por su naturaleza única."),
  Animal(
      "assets/hamster/hamster4.jpg",
      "Noodle",
      "Bucaramanga",
      "Hamster",
      1,
      "Noodle es una hamster panda con un pelaje blanco y negro distintivo. Es una hamster activa y juguetona que disfruta de un entorno lleno de juguetes y actividades. Bella es curiosa y le encanta interactuar con su familia humana. Busca un hogar donde pueda recibir estimulación mental y física adecuada."),
  Animal(
      "assets/hamster/hamster5.jpg",
      "Finley",
      "Cali",
      "Hamster",
      2,
      "Finley es un hamster roborovski, el más pequeño de todos. Tiene un pelaje suave y arena que le ayuda a camuflarse. Max es un hamster enérgico y ágil que le encanta correr en su rueda y explorar su entorno. Busca un hogar con mucho espacio para moverse y una alimentación equilibrada."),
  Animal(
      "assets/hamster/hamster6.jpg",
      "Calliope",
      "Valledupar",
      "Hamster",
      2,
      "Calliope es una hamster enana de pelaje gris y blanco. Es un hamster tímido pero dulce que disfruta de la compañía tranquila. Le gusta pasar tiempo en su escondite y observar su entorno. Daisy busca un hogar donde se le brinde paciencia y amor para que pueda ganar confianza y sentirse segura."),
  Animal(
      "assets/hamster/hamster7.jpg",
      "Lyriom",
      "Medellin",
      "Hamster",
      2,
      "Lyriom es un hamster ruso de pelaje gris oscuro y una personalidad audaz. Es un hamster activo y explorador que le encanta escalar y saltar en su jaula. Rocky busca un hogar con suficiente espacio para satisfacer su necesidad de actividad física y una alimentación adecuada para mantener su energía."),
];
