import 'package:flutter/material.dart';
import 'package:responsive_web_profile/PlatformService.dart';
import 'package:responsive_web_profile/ReUsableComponent/ReUsableButton.dart';
import 'package:responsive_web_profile/ReUsableComponent/ReUsableText.dart';

class ProfileInFo extends StatelessWidget {
  String data =
      'Hallo, selamat pagii. Saya Yuliyanti Arthamevia pelajar di SMK Assalaam Bandung yang bertempatkan di JL. SituTarate, Terusan Cibaduyut. Bandung, Jawa Barat';
  bool isMobile;

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      /// card header
      Container(
          width: double.infinity,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Spacer(flex: 3),
            SocialValue('Friends', 7782),
            SocialValue('Photos', 20),
            SocialValue('Comments', 1234),
            Spacer(flex: 10),
            NormalButton(
                'Edit', Colors.white, '', Colors.white, Color.fromRGBO(93, 62, 233, 1)),
            Spacer(flex: 1)
          ])),
      SizedBox(height: isMobile ? 20 : 40), LargeBoldTextBlack('Yuliyanti Arthamevia'),
      SizedBox(height: 9),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_pin, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('BANDUNG, JAWA BARAT')
          ]),
      SizedBox(height: 30),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.people, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('Pelajar Di SMK Assalaam Jurusan RPL ')
          ]),
      SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('University SMK Assalaam Bandung')
          ]),

      /// description
      Divider(height: 30, thickness: 1, color: Colors.grey[300]),
      NormalGreyText(data),
      SizedBox(height: 10),
      TextButtons('Show more', Colors.green)
    ]));
  }

  Widget SocialValue(String label, int value) => Container(
      padding: EdgeInsets.all(5),
      height: 50,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$value',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            Text(label,
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold))
          ]));
}
