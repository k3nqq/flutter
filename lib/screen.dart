import 'package:flutter/material.dart';
import 'package:flutter_application_1/weolcome.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {

    Color ScreenBackground = const Color.fromRGBO(3,158,162, 1);

     // ignore: non_constant_identifier_names
     Widget buildButtonColumn(Color Backcolor, String label, Color fontColor, double width, double height) {
      return Container(
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
          },
          style: ElevatedButton.styleFrom(
            primary: Backcolor,
            onPrimary: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))
          ),
          child: SizedBox(
            width: width,
            height: height,
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 20,
                  color: fontColor,
                ),
              ),
            )
          )
        )
      );
    }

    return Scaffold(
      backgroundColor: ScreenBackground,
      body:Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 149, 0, 0),
          child: Column(children: [
            const Text(
              "medinow",
              style: TextStyle(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
              child: const Text(
                  "Meditate With Us!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                ),
            ),
          ],)
        ),
        Spacer(flex: 1,),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 45, 0, 0),
          child: Column(children: [
            buildButtonColumn(Colors.white, "Sign in with Apple", Colors.black, 342, 50),
            buildButtonColumn(const Color.fromRGBO(205, 253, 254, 1), "Continue with Email or Phone", Colors.black, 342, 50),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Material(
                color: ScreenBackground,
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: (){},
                  child: const Text(
                    'Continue With Google',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ),
              )
            ),
            
          ],)
        ),
        Spacer(flex: 20,),
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset("assets/Chel.png"),
        )
      ]),
    );
  }
}

