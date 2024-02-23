import 'package:flutter/material.dart';

class suraDetalsScreen extends StatelessWidget {
  static const String routeName = 'sura_detals_screen';

  @override
  Widget build(BuildContext context) {
    suraDetalsArgs args =
    ModalRoute.of(context)?.settings.arguments as suraDetalsArgs;
    loadSora(args.index);
    return Container(
      decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage('assetes/images/background.png'),
        fit: BoxFit.cover,),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        body: Container(),
      ),
    );
  }
  void loadSora(int index ) {}
}
class suraDetalsArgs{
  int index;
  String suraName;
  suraDetalsArgs(this.index,this.suraName);
}
