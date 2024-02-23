import 'package:flutter/material.dart';
import 'package:islami/quran/quranTap.dart';
import 'package:islami/tapScreen/hadeth/hadethTap.dart';
import 'package:islami/tapScreen/quran/quranTap.dart';
import 'package:islami/tapScreen/radio/radioTap.dart';
import 'package:islami/tapScreen/sebha/sebhaTap.dart';
class HomeScreen extends StatefulWidget{
  static const String routeName ='home';
      @override
  State<HomeScreen> creatState()=> _HomeScreenState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class _HomeScreenState extends State< HomeScreen> {
  List<Widget> tabs = [
    RadioTap(),
    SebhaTap(),
    Quran(),
    HadethTap(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assetes/images/background.png'),
    fit:BoxFit.cover, ),),
    child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        extendBodyBehindAppBar: true,
        body:tabs[selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ic_radio.png'),
              ),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_sabha.png')),
              label: 'sabha',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
              label: 'quran',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/ic_alhadeth.png')),
              label: 'alhadeth',
            ),
          ],
        ),
    ),
    );
  }
}


