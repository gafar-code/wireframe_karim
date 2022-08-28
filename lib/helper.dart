import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

void go(BuildContext context, Widget page) => Navigator.push(context, MaterialPageRoute(builder: (context) => page));
void goReplace(BuildContext context, Widget page) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
void back(BuildContext context) => Navigator.pop(context);

Future<void> preferenceInit() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('repeat', true);
}

String localDay(int weekday) {
  switch (weekday) {
    case 1:
      return 'Senin';
    case 2:
      return 'Selasa';
    case 3:
      return 'Rabu';
    case 4:
      return 'Kamis';
    case 5:
      return "Jum'at";
    case 6:
      return "Sabtu";
    default:
      return "Minggu";
  }
}

String localMonth(int month) {
  switch (month) {
    case 1:
      return 'Januari';
    case 2:
      return 'Februari';
    case 3:
      return 'Maret';
    case 4:
      return 'April';
    case 5:
      return 'Mei';
    case 6:
      return 'Juni';
    case 7:
      return 'Juli';
    case 8:
      return 'Agustus';
    case 9:
      return 'September';
    case 10:
      return 'Oktober';
    case 11:
      return 'November';
    default:
      return 'Desember';
  }
}

String get getTime => DateFormat('HH:mm').format(DateTime.now());

String get getDate {
  DateTime localDate = DateTime.now();
  String day = localDay(DateTime.now().weekday);
  String date = DateFormat('dd').format(localDate);
  String month = localMonth(localDate.month);
  String year = DateFormat('yyyy').format(localDate);
  return "$day, $date $month $year";
}

String get getHijriyah {
  // HijriCalendar.setLocal('id');
  HijriCalendar hijriCalendar = HijriCalendar.now();
  String date = "${hijriCalendar.hDay}";
  String month = hijriCalendar.longMonthName;
  String year = "${hijriCalendar.hYear}";
  return "$date $month $year";
}

String icon(String name) {
  String prefix = 'assets/icons';
  return "$prefix/$name";
}

String audio(String name) {
  String prefix = 'assets/audios';
  return "$prefix/$name";
}
