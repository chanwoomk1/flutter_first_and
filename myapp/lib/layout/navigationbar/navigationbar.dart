import 'package:flutter/material.dart';
import "package:myapp/shapes/halfCirclePainter.dart";
import 'package:myapp/shapes/ovalpainter.dart';

//https://pub.dev/packages/convex_bottom_bar

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0; // 선택된 아이템의 인덱스
  final double flotButtonSize = 30;
  final double ovalWidth=140;
  final double buttonInterval=10;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print("Selected Index: $_selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          color: Colors.transparent, // 투명 색상으로 설정
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.blue,
              elevation: 100,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped, 
              items: const [    //추후 수정
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
              ],
            ),
          ),
        ),
        Positioned( 
          top: -(flotButtonSize+buttonInterval),
          left: MediaQuery.of(context).size.width / 2 - (ovalWidth)/2,
          child:  OvalWidget(width: ovalWidth ,height: flotButtonSize*2+buttonInterval*2+30,)
        ),
        Positioned(
          top: -flotButtonSize,
          width: flotButtonSize*2,
          height: flotButtonSize*2,
          left: MediaQuery.of(context).size.width / 2 - flotButtonSize,
          child:  FloatingActionButton( 
              onPressed: () {
                print("Central Button Clicked");
              },
              backgroundColor: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              child: const Icon(Icons.add),
            ),          
        ),
      ],
    );
  }
}
