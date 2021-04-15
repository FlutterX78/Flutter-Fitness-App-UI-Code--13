import 'package:flutter/material.dart';

class TA {
  String param;
  String value;
  String imgUrl;
  TA({this.imgUrl, this.param, this.value});
}

class DA {
  String day;
  String date;
  DA({this.date, this.day});
}

List<TA> ta = [
  TA(
      param: 'STEPS',
      value: '1,228',
      imgUrl: 'https://i.postimg.cc/bwWDXH5B/shoe.png'),
  TA(
      value: '829',
      param: 'CALORIES',
      imgUrl: 'https://i.postimg.cc/k4RLdNhj/kcal.png'),
  TA(
      param: 'BPM',
      value: '88',
      imgUrl: 'https://i.postimg.cc/LsnbzBRH/heartbeat.png')
];

List<DA> da = [
  DA(date: '08', day: 'MON'),
  DA(date: '07', day: 'SUN'),
  DA(date: '06', day: 'SAT'),
  DA(date: '05', day: 'FRI'),
  DA(date: '04', day: 'THU'),
  DA(date: '03', day: 'WED'),
];


  final genShadow = [
    BoxShadow(
        color: Color(0xff5563de).withOpacity(0.2),
        offset: Offset(5.0, 5.0),
        blurRadius: 15.0,
        spreadRadius: 1.0),
    BoxShadow(
        color: Color(0xFFF8FFFF),
        offset: Offset(-5.0, -5.0),
        blurRadius: 15.0,
        spreadRadius: 1.0),
  ];
  final pressedShadow = [
    BoxShadow(
        color: Colors.black.withOpacity(.15),
        spreadRadius: 2,
        offset: Offset(-1, 1)),
    BoxShadow(
        color: Colors.white.withOpacity(.7),
        spreadRadius: 2,
        offset: Offset(1, -1)),
    BoxShadow(
        color: Colors.black.withOpacity(.15),
        spreadRadius: 2,
        offset: Offset(-1, -1)),
    BoxShadow(
        color: Colors.white.withOpacity(.7),
        spreadRadius: 2,
        offset: Offset(1, 1)),
  ];