import 'package:contact_us/size_config.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    SizeConfig.screenWidth = MediaQuery.of(context).size.width;
    SizeConfig.screenHeight = MediaQuery.of(context).size.height;
    double heightMultiplier = SizeConfig.screenHeight / 100;
    double widthMultiplier = SizeConfig.screenWidth / 100;


    return BottomNavigationBar(
      selectedItemColor: Color(0xFFFF612F),
      currentIndex: _cIndex,
      elevation: 16,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(IconData(0xe804,fontFamily: 'CustomIcon',),),
          title: Text(
            'Promotions',
            style: TextStyle(
              fontSize: 2*heightMultiplier,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconData(0xe808,fontFamily: 'CustomIcon',),),
          title: Text(
            'News',
            style: TextStyle(
              fontSize: 2*heightMultiplier,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.share),
          title: Text(
            'Share',
            style: TextStyle(
              fontSize: 2*heightMultiplier,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconData(0xe800,fontFamily: 'CustomIcon',),),
          title: Text(
            'Connect',
            style: TextStyle(
              fontSize: 2*heightMultiplier,
            ),
          ),
        ),
      ],
      onTap: (index){
        _incrementTab(index);
      },
    );
  }
}
