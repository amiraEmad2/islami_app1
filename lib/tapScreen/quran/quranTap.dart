import 'package:flutter/material.dart';
import 'package:islami/tapScreen/quran/sura_detals_screen.dart';

class Quran extends StatelessWidget {
 List<String>suraName = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
   ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
   ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
   ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
   ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
   ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
   ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
   ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
   ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
   "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
 ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/logo.png'),
        Expanded(
          child: ListView.separated(
          itemBuilder: (context ,index)=> InkWell(
                onTap:(){
                 Navigator.of(context).pushNamed(suraDetalsScreen.routeName,
                 arguments: suraDetalsArgs(index, suraName[index]),
                     
                 );
                },
                child: Text(suraName[index],
                            style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                          ),
              ),
          separatorBuilder: (context,index)=> SizedBox(height:10 ), itemCount: 10,
        ),
        )

      ],
    );
  }
}
