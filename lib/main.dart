import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lesson29(),
    );
  }
}

class Lesson29 extends StatelessWidget {
  const Lesson29({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            SizedBox(
              width: 107,
            ),
            Column(children: [
              Text(
                'Избранное',
                style: TextStyle(color: Color(0xff131921)),
              ),
              Text(
                '20',
                style: TextStyle(color: Color(0xff7B7E82)),
              ),
            ]),
            SizedBox(
              width: 72,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 22,
            ),
            Image.asset("assets/images/Group 1124.png"),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                color: 0xffF6F6FB,
                text: 'ВСЕ',
                textcolor: 0xff131921,
              ),
              SizedBox(
                width: 12,
              ),
              Button(
                color: 0xff64BDFF,
                text: 'КВЕСТЫ',
                textcolor: 0xffFFFFFF,
              ),
              SizedBox(
                width: 12,
              ),
              Button(
                color: 0xffFF7C74,
                text: 'ЗДАНИЯ',
                textcolor: 0xffFFFFFF,
              ),
              SizedBox(
                width: 12,
              ),
              Button(
                color: 0xff55E3DB,
                text: 'ПАМЯТНИКИ',
                textcolor: 0xffFFFFFF,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomContainer(
            image: 'assets/images/Bitmap.png',
            text2: 'Бирюлевский\nдендропарк\n',
            buttom_img: 'assets/images/Group 1139.png',
          ),
          CustomContainer(
            image: 'assets/images/image 7.png',
            text2: 'Прогулка по Москве,\nне выходя из дома!\n',
            buttom_img: 'assets/images/Group 940.png',
          ),
          CustomContainer(
            image: 'assets/images/Bitmap (1).png',
            text2: 'Особняк М. К.\nМорозовой\n',
            buttom_img: 'assets/images/Group 940 (1).png',
          ),
          CustomContainer(
            image: 'assets/images/image 7.png',
            text2: 'Прогулка по Москве,\nне выходя из дома!\n',
            buttom_img: 'assets/images/Group 1128.png',
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String image;
  final String text2;
  final String buttom_img;

  const CustomContainer({
    Key? key,
    required this.image,
    required this.text2,
    required this.buttom_img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 355,
        height: 101,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text2,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Group 610.png'),
                      Text(
                        ' 24 км от вас',
                        style: TextStyle(
                            color: Color(0xff7B7E82),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(buttom_img),
                SizedBox(
                  height: 12,
                ),
                Icon(Icons.favorite)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final int color;
  final int textcolor;

  const Button({
    Key? key,
    required this.text,
    required this.color,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(color),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24))),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(textcolor),
            ),
          ),
        ));
  }
}
