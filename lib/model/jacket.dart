import 'package:flutter/material.dart';

class Jacket {
  int jacketId;
  String jacketName;
  int jacketPrice;
  String jacketDescription;
  String jacketImage;
  String jacketBrand;
  Color jacketColor;

  Jacket(
      {required this.jacketId,
        required this.jacketName,
        required this.jacketPrice,
        required this.jacketDescription,
        required this.jacketImage,
        required this.jacketBrand,
        required this.jacketColor});
}

var jacketList = [
  Jacket(
      jacketId: 1,
      jacketName: 'TIRO WINDBREAKER',
      jacketPrice: 65,
      jacketDescription:
      'A SOCCER-INSPIRED WINDBREAKER FOR BEYOND THE TOUCHLINE.\nBorn on the soccer pitch. Worn everywhere else. Bold blocks of color and minty shades give off summery vibes on this adidas Tiro Windbreaker. Made with recycled materials, its tough shell has a mesh lining to keep you comfortable when it\'s zipped up. The slim fit and drawcord-adjustable hem ensure you stay streamlined when the winds are trying their best to knock you off course.',
      jacketImage:
      'https://i.ibb.co/7vZYw55/Tiro-Windbreaker-Green-HA4674-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 2,
      jacketName: 'TERREX PARLEY AGRAVIC WIND.RDY WINDBREAKER',
      jacketPrice: 80,
      jacketDescription:
      'A PACKABLE WINDBREAKER JACKET FOR TRAIL RUNNING.\nThis adidas Terrex trail running windbreaker offers one more reason to hit the trail when the weather says stay inside. WIND.RDY resists wind to keep you comfortable in windy, damp conditions. Its lightweight design stows into a pocket for easy packing. It features Parley Ocean Plastic, upcycled plastic waste intercepted on remote islands, beaches, coastal communities and shorelines, preventing it from polluting our oceans.',
      jacketImage:
      'https://i.ibb.co/fQ5LgfL/Terrex-Parley.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 3,
      jacketName: 'DAME IMA VISIONARY HOODIE',
      jacketPrice: 49,
      jacketDescription:
      'A HOODED SWEATSHIRT WITH DAME STYLE.\nPull on some Damian Lil lard style with this classic-look hoodie from adidas Basketball. Adjust the hood for added coverage and stick your hands in the kangaroo pocket if the temperature starts to plummet. The Dame logo on the chest flashes a finishing touch.This product is made with Primegreen, a series of high-performance recycled materials.',
      jacketImage:
      'https://i.ibb.co/jrvHxgG/Dame-IMA-Visionary-Hoodie-Grey-GT0216-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 4,
      jacketName: 'FIVE TEN ALL-MOUNTAIN RAIN JACKET',
      jacketPrice: 200,
      jacketDescription:
      'A LIGHTWEIGHT RAIN JACKET FOR WET WEATHER RIDES. \n Cool misty morning or afternoon showers, the adidas Five Ten All-Mountain Rain Jacket keeps you dry and on the bike. RAIN.RDY keeps out wind and rain, while elastic cuffs, hem and hood further seal out the elements while you ride. Its lightweight build makes for easy packing. Zip out the showers and keep on riding.',
      jacketImage:
      'https://i.ibb.co/LQhJXSX/Five-Ten-All-Mountain-Rain-Jacket-Black-GM4582-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 5,
      jacketName: 'MARATHON TRANSLUCENT JACKET',
      jacketPrice: 100,
      jacketDescription:
      'A HOODED RUNNING JACKET FOR TRAINING IN THE WIND AND RAIN. \n The reasons you run are clear. For strength. Stamina. And now, to do your part for the planet. Zip into the light, breathable protection of this adidas running jacket. It features recycled material as part of adidas\' commitment to help end plastic waste. And it\'s treated to repel water and wind so you stay dry in stormy weather.',
      jacketImage:
      'https://i.ibb.co/z5XQjyD/Marathon-Translucent-Jacket-Black-GM4949-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 6,
      jacketName: 'TERREX AGRAVIC PRO TRAIL RUNNING RAIN JACKET',
      jacketPrice: 300,
      jacketDescription:
      'A TRAIL RUNNER\'S SUMMER COMPANION.\nOn a warm Spring day, you go for a run on a trail where you can enjoy the serenity of nature. The weather forecasts said it might rain today. A good day to keep this rain jacket handy. It\'s fully waterproof yet stretchy and breathable. Three light layers repel the water and stretch together to keep up with your body\'s movement. Ventilation openings on the side allow your skin to breathe without letting any water in. The back pleat makes it easier to wear a jacket with a vest. All with reflective overlays that help you stay visible in the dark and a pocket to pack the jacket neatly into your bag. The ultimate lightweight trail running rain jacket has arrived. Now it\'s time to take on the trail.',
      jacketImage:
      'https://i.ibb.co/nbtYz5q/Terrex-Agravic-Pro-Trail-Running-Rain-Jacket-White-GP3324-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 7,
      jacketName: 'BSC RAIN.RDY JACKET',
      jacketPrice: 100,
      jacketDescription:
      'A WATERPROOF AND BREATHABLE RAIN JACKET FOR OUTDOOR ADVENTURE NEAR AND FAR.\nDamp morning on the trail or showers in the forecast, this adidas rain jacket offers breathable coverage for wet weather adventures. RAIN.RDY seals out wind and rain while keeping you comfortable on the inside, too. Zip up, adjust the hood and hem and keep on hiking on until the showers pass.',
      jacketImage:
      'https://i.ibb.co/djRBHgx/BSC-RAIN-RDY-Jacket-Black-GM4322-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 8,
      jacketName: 'BOSTON MARATHON® OWN THE RUN REFLECTIVE WIND JACKET',
      jacketPrice: 85,
      jacketDescription:
      'A HOODED WINDBREAKER MADE FOR EASY, NATURAL MOVEMENT.\nFrom Hopkinton to Heartbreak Hill, the Boston Marathon® will take everything you\'ve got. Especially in lousy weather. Keep your spirits high through training runs and race day in this adidas running jacket. It\'s made with water-repellent fabric to handle gusts and showers, and reflective details that stand out in low-light situations.\nThis product is made with recycled content as part of our ambition to end plastic waste.',
      jacketImage:
      'https://i.ibb.co/12LW9XJ/Boston-Marathon-r-Own-the-Run-Reflective-Wind-Jacket-Blue-GQ8333-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 9,
      jacketName: 'ADIDAS SPORTSWEAR MOUNTAIN GRAPHIC HALF-ZIP SWEATSHIRT',
      jacketPrice: 100,
      jacketDescription:
      'A HALF-ZIP SWEATSHIRT FEATURING A BOLD MOUNTAIN GRAPHIC.\nIs where you are right now where you want to be? Tell the story with this towering mountain landscape graphic and make your statement even louder in the streets. This half-zip sweatshirt can be worn as is or cinched with the bungee-adjustable hem. Head out in this nature graphic with pride, knowing it\'s made with recycled materials as part of adidas\' commitment to help end plastic waste.\nThis product is made with Primegreen, a series of high-performance recycled materials.',
      jacketImage:
      'https://i.ibb.co/RjdZ7Th/adidas-Sportswear-Mountain-Graphic-Half-Zip-Sweatshirt-Beige-GL5698-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
  Jacket(
      jacketId: 10,
      jacketName: 'ADIDAS SPORTSWEAR COLORBLOCK HOODIE',
      jacketPrice: 65,
      jacketDescription:
      'A PLUSH FLEECE HOODIE MADE FOR ATHLETES DURING OFF HOURS.\nCozy fleece and making the world better at the same time? Yes, please. Take it real, real chill on rest days every time you zip up this adidas hoodie. Disrupt the status quo, subtly. Angular 3-Stripes and bold colors make a statement without you saying a word.\nThis product is made with Primegreen, a series of high-performance recycled materials.',
      jacketImage:
      'https://i.ibb.co/xFX0270/adidas-Sportswear-Colorblock-Hoodie-Beige-H39774-01-laydown.png',
      jacketBrand: 'Adidas',
      jacketColor: Color.fromARGB(1, 236, 238, 240)),
];
