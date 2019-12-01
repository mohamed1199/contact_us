import 'dart:ffi';

import 'package:contact_us/screens/bottom_bar.dart';
import 'package:contact_us/size_config.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.screenWidth = MediaQuery.of(context).size.width;
    SizeConfig.screenHeight = MediaQuery.of(context).size.height;
    double heightMultiplier = SizeConfig.screenHeight / 100;
    double widthMultiplier = SizeConfig.screenWidth / 100;


    Widget _drawCompanyShape(IconData icon, String title) {
      return Padding(
        padding: EdgeInsets.only(
          left: 5.79 * widthMultiplier,
          right: 5.79 * widthMultiplier,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 6.69 * heightMultiplier,
          child: Material(
            elevation: 1.5,
            borderRadius: BorderRadius.circular(
              1.5 * heightMultiplier,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 6.69 * heightMultiplier,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF612F),
                    borderRadius: BorderRadius.circular(
                      1.5 * heightMultiplier,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.96 * widthMultiplier,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 7.25 * heightMultiplier,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            icon,
                            color: Color(0xFFFF612F),
                            size: 6.76 * widthMultiplier,
                          ),
                          SizedBox(
                            width: 4.83 * widthMultiplier,
                          ),
                          Text(
                            title,
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 2.23 * heightMultiplier,
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        1.56 * heightMultiplier,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget _drawButton() {
      return Center(
        child: SizedBox(
          width: 60*widthMultiplier,
          height: 5.58*heightMultiplier,
          child: Material(
            borderRadius: BorderRadius.circular(4.46*heightMultiplier,),
            color: Color(0xFFFF612F),
            child: InkWell(
              splashColor: Colors.white70,
              onTap: () {},
              borderRadius: BorderRadius.circular(4.46*heightMultiplier,),
              child: Center(
                child: Text(
                  'SEND',
                  style: TextStyle(
                      fontSize: 2.23*heightMultiplier, color: Colors.white, letterSpacing: 1.3),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: heightMultiplier * 13.9,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: widthMultiplier * 6.7,
                    bottom: heightMultiplier * 2.67,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        IconData(
                          0xe805,
                          fontFamily: 'CustomIcon',
                        ),
                        color: Colors.white,
                        size: 6.7 * widthMultiplier,
                      ),
                      SizedBox(
                        width: 21.7 * widthMultiplier,
                      ),
                      Text(
                        'Connect us',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 2.67 * heightMultiplier,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFF612F),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(
                    3.34 * heightMultiplier,
                  ),
                  bottomLeft: Radius.circular(
                    3.34 * heightMultiplier,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 3.57 * heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7.24 * widthMultiplier,
              ),
              child: Text(
                'Company information',
                style: TextStyle(
                  color: Color(0xFF37783A),
                  fontSize: 2.23 * heightMultiplier,
                ),
              ),
            ),
            SizedBox(
              height: 2.34 * heightMultiplier,
            ),
            _drawCompanyShape(
              IconData(
                0xe800,
                fontFamily: 'CustomIcon',
              ),
              '092154786696',
            ),
            SizedBox(
              height: 1.7 * heightMultiplier,
            ),
            _drawCompanyShape(Icons.location_on, 'Bahrain'),
            SizedBox(
              height: 1.7 * heightMultiplier,
            ),
            _drawCompanyShape(
                IconData(0xe803, fontFamily: 'CustomIcon'), 'WWW.Seewinok.com'),
            SizedBox(
              height: 1.7 * heightMultiplier,
            ),
            _drawCompanyShape(Icons.mail_outline, 'Seewinok@gmail.com'),
            SizedBox(
              height: 3.1 * heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7.24 * widthMultiplier,
              ),
              child: Text(
                'Contact information',
                style: TextStyle(
                  color: Color(0xFF37783A),
                  fontSize: 2.23 * heightMultiplier,
                ),
              ),
            ),
            SizedBox(
              height: 2.34 * heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.79 * widthMultiplier,
                right: 5.79 * widthMultiplier,
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: Color(0xFFFF612F),
                ),
                child: TextField(
                  cursorColor: Color(0xFFFF612F),
                  decoration: InputDecoration(
                    hintText: 'Title message',
                    hintStyle: TextStyle(
                      fontSize: 1.9 * heightMultiplier,
                      color: Colors.grey.shade500,
                    ),
                    labelText: 'Title message',
                    labelStyle: TextStyle(
                      fontSize: 2.23 * heightMultiplier,
                      color: Color(0xFFFF612F),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        1.67 * heightMultiplier,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4 * heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.79 * widthMultiplier,
                right: 5.79 * widthMultiplier,
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: Color(0xFFFF612F),
                ),
                child: TextField(
                  maxLines: heightMultiplier < 6 ? 3 : 5,
                  cursorColor: Color(0xFFFF612F),
                  decoration: InputDecoration(
                    hintText: 'Details message',
                    hintStyle: TextStyle(
                      fontSize: 2.23 * heightMultiplier,
                      color: Colors.grey.shade500,
                    ),
                    labelText: 'Details message',
                    labelStyle: TextStyle(
                      color: Color(0xFFFF612F),
                      fontSize: 2.34 * heightMultiplier,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        1.67 * heightMultiplier,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4 * heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.79 * widthMultiplier,
                right: 5.79 * widthMultiplier,
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: Color(0xFFFF612F),
                ),
                child: TextField(
                  cursorColor: Color(0xFFFF612F),
                  decoration: InputDecoration(
                      hintText: 'Mobile number',
                      prefixText: '+19  | ',
                      prefixStyle: TextStyle(
                        fontSize: 2 * heightMultiplier,
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 1.89 * heightMultiplier,
                        color: Colors.grey.shade500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          1.67 * heightMultiplier,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 4 * heightMultiplier,
            ),
            _drawButton(),
            SizedBox(
              height: 2.23 * heightMultiplier,
            ),
          ],
        ),
      ),
    );
  }
}
