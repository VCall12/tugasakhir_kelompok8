import 'info.dart';

class DataApp {
static  List<ScheduleInfo> tes = [
    ScheduleInfo(
        waktuSchedule: DateTime.now().add(Duration(hours: 1)),
        namaSchedule: 'Kuliah',
        aktif: true),
    ScheduleInfo(
        waktuSchedule: DateTime.now().add(Duration(hours: 1)),
        namaSchedule: 'Jalan',
        aktif: true),
    ScheduleInfo(
        waktuSchedule: DateTime.now().add(Duration(hours: 1)),
        namaSchedule: 'Ibadah',
        aktif: true),
  
  
  ];
}


 // int _index = 0;
  // String get getScheduleInfo {
  //   return _tes[_index].namaSchedule;
  // }

  // String get getNamaSchedule {
  //   return tes[_index].namaSchedule;
  // }

  // bool get getJawaban {
  //   return tes[_index].aktif;
  // }