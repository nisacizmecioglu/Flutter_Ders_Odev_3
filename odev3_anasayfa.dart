import 'package:flutter/material.dart';
import 'package:odev_3_ekran_tasarim/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Odev3_Anasayfa extends StatefulWidget {
  const Odev3_Anasayfa({super.key});

  @override
  State<Odev3_Anasayfa> createState() => _Odev3_AnasayfaState();
}

class _Odev3_AnasayfaState extends State<Odev3_Anasayfa> {
  int para = 250;
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context)!;
    return Scaffold(
      body:  Container(
        color: anaRenk,
        child: Column(
          children: [
            Image.asset("resimler/elephant-4722675_1280.jpg",  alignment: Alignment.topCenter,),
           Padding(
             padding: const EdgeInsets.only(left:20.0, right: 20.0),
             child: Column(  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(d.baslik1,style: TextStyle(fontSize: 36,color: koyuRenk,fontWeight: FontWeight.bold,letterSpacing: 1)),
                Text(d.baslik2,style: TextStyle(fontSize: 36,color: yaziRenk,fontWeight: FontWeight.bold,letterSpacing: 1)),
                Text(d.aciklama,
                    style: TextStyle(fontSize: 20,color: yaziRenk,fontWeight: FontWeight.normal,letterSpacing: 1)),
               ]
             ),

           ),
            Column( mainAxisAlignment: MainAxisAlignment.center ,
              children:[
                Text(d.toplam,style: TextStyle(fontSize: 20,color: yaziRenk,fontWeight: FontWeight.bold,letterSpacing: 1,height: 3)),
                Text("$para \$",style: TextStyle(fontSize: 28,color: yaziRenk,fontWeight: FontWeight.normal,letterSpacing: 1,height: 1)),

                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Row ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    TextButton(onPressed: (){
                    setState(() { //build metodunun tamamı tekrar çalışır
                      para = para + 5;
                     });
                     },
                        child:  Text(d.bagisYap, style: TextStyle(color: acikRenk,fontSize: 18,height: 3)),
                        style: TextButton.styleFrom(backgroundColor: yaziRenk,
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))), minimumSize: Size(160, 0) )),
                    TextButton(onPressed: (){},
                        child:  Text(d.paylas,style: TextStyle(color: acikRenk,fontSize: 18,height: 3)),
                        style: TextButton.styleFrom(backgroundColor: yaziRenk,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))), minimumSize: Size(160, 0)
                        )),
                    ]
                   ),
                )
              ],

            ),

          ],
        ),

      ),
    );
  }
}
