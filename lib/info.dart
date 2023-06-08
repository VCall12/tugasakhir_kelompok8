// class Alarminfo {
//   DateTime waktuAlarm;
//   String desk;
//   bool Aktif;
//   AlarmInfo(this.waktuAlarm, {this.desk})
// };

class ScheduleInfo {
  String namaSchedule;
  DateTime waktuSchedule;
  bool aktif;

  ScheduleInfo(
      {required this.waktuSchedule,
      required this.namaSchedule,
      required this.aktif});
}
