import 'info.dart';

class DataApp {
  List<ScheduleInfo> tes = [
    ScheduleInfo(
        waktuSchedule: DateTime.now().add(Duration(hours: 1)),
        namaSchedule: 'Kuliah',
        aktif: true),
    ScheduleInfo(
        waktuSchedule: DateTime.now().add(Duration(hours: 1)),
        namaSchedule: 'Jalan',
        aktif: true),
  ];
  // int _index = 0;
  // DateTime get getWaktuSchedule {
  //   return tes[_index].waktuSchedule;
  // }

  // String get getNamaSchedule {
  //   return tes[_index].namaSchedule;
  // }

  // bool get getJawaban {
  //   return tes[_index].aktif;
  // }
}
