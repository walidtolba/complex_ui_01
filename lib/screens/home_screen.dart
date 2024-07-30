import 'package:complex_ui/constantes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(70.0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFAACCE8),
                              radius: kCircleRadius,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.store,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Store',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFE19fA1),
                              radius: kCircleRadius,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Google',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 36.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFF87888C),
                              radius: kCircleRadius,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.youtube,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Youtube',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFDDB7E6),
                              radius: kCircleRadius,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Instagram',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Google',
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                            suffixIcon: Icon(FontAwesomeIcons.search)
                            ),
                        
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [Text('09:18', style: TextStyle(fontSize: 22.0),), Text('Sunday 09 Juin, 2024', style: TextStyle(fontSize: 10.0),), Text('clear sky 18° C', style: TextStyle(fontSize: 10.0, color: Colors.grey),)],),
                    ), CircleAvatar(
                      radius: 28.0,
                      backgroundColor: Color(0xFFDE9755),
                      child: Icon(FontAwesomeIcons.microphone, color: Colors.white, size: 16,),
                    )
                  ],)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('•', style: TextStyle(fontSize: 30),), SizedBox(width: 6,),Text('•', style: TextStyle(fontSize: 30, color: Colors.grey))],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(FontAwesomeIcons.longArrowAltDown, color: Colors.blueGrey,), Icon(FontAwesomeIcons.whatsapp, color: Colors.blue,), Icon(FontAwesomeIcons.whatsapp, color: Colors.purple,), Icon(FontAwesomeIcons.whatsapp, color: Colors.blue,), Icon(FontAwesomeIcons.phone, color: Colors.green,)],
            )
          ],
        ),
      ),
    );
  }
}
