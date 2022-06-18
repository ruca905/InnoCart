
import 'package:flutter/material.dart';
import 'package:innocart/homescreen.dart';
import 'package:innocart/network/post.dart';

class Order{
  late String title = "Apple",desc;
  late DateTime dateTime;
  late Image image;
}
class OrderBox extends StatefulWidget {
  OrderBox({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => OrderBoxState();
}

class OrderBoxState extends State<OrderBox>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = HomeScreenState.height, w = HomeScreenState.width;


    return TextButton(onPressed: (){}, child: Stack(
        children: [
      Container(width: 0.9 * w, height: h * 0.16, decoration:
      BoxDecoration(color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      )
    ),
      Positioned(left: 10, top: 15,
      child: Image.asset("assets/images/apple.png",scale: 0.7))
      ,
         Positioned(left: 150, top: 12,
            child:   Text('Apples', textAlign: TextAlign.center, style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Manrope',
              fontSize: 24,
              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1
          ),)),
          Positioned(left: 150, top: 50,
              child:   Text("1 Kg of Apple", textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Manjari',
                  fontSize: 11,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),)),
          Positioned(left: 170, top: 70,
              child:   Text('Before 12 July', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Manjari',
                  fontSize: 12,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),)),
           Positioned(left: 151.5, top: 66.5,
              child:  Image.asset("assets/images/truck.png", scale: 49)),
          Positioned(left: 260, top: 20,
            child: Text(
              "1250.45\n RUB",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w900
              ),
            ),)
        ]));
  }

}



