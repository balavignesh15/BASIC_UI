import 'dart:math';




/// carouselSlider movie


class liimage{
  String? image;
  liimage(this.image);
}

List a1 = liimagedata.map((e) => liimage(e["image"],)).toList();

var liimagedata =[

  {"image":"assets/img/imag.jpg",},
  {"image":"assets/img/img.png",},
  {"image":"assets/img/img_1.png",},
  {"image":"assets/img/img_2.png",},
  {"image":"assets/img/img_3.png",},
  {"image":"assets/img/img_4.png",},
];



class limage{
  String? image;
  String? text;
  limage(this.image,this.text);
}

List a2 = limagedata.map((e) => limage(e["image"],e["text"])).toList();

var limagedata =[

  {"image":"assets/imag.jpg","text":"product"},
  {"image":"assets/img.png","text":"Mobile"},
  {"image":"assets/img_11.png","text":"Big billon"},
  {"image":"assets/img_12.png","text":"Mobile"},
  {"image":"assets/img_13.png","text":"dress"},
  {"image":"assets/img_14.png","text":"other"},
];


class alimage{
  String? image;
  String? text;
  alimage(this.image,this.text);
}

List a3 = alimagedata.map((e) => alimage(e["image"],e["text"])).toList();

var alimagedata =[

  {"image":"assets/img_16.png","text":"product"},
  {"image":"assets/img_17.png","text":"Mobile"},
  {"image":"assets/img_16.png","text":"Big billon"},
  {"image":"assets/img_17.png","text":"Mobile"},
  {"image":"assets/img_16.png","text":"dress"},
  {"image":"assets/img_17.png","text":"other"},
];




class aalimage{
  String? image;
  String? text;
  aalimage(this.image,this.text);
}

List a4 = aalimagedata.map((e) => aalimage(e["image"],e["text"])).toList();

var aalimagedata =[

  {"image":"assets/img_14.png","text":"Min.50% Off"},
  {"image":"assets/img_15.png","text":"Min.50% Off"},
  {"image":"assets/img_14.png","text":"Min.50% Off"},
  {"image":"assets/img_15.png","text":"Min.50% Off"},
  {"image":"assets/img_14.png","text":"Min.50% Off"},
  {"image":"assets/img_15.png","text":"Min.50% Off"},
];



