class Const{
  static String getDayTime(){
    String timeOfDay = '';

    var now = DateTime.now();
    var hour = now.hour;

    if (hour >= 0 && hour < 12) {
      timeOfDay = 'pagi';
    } else if (hour >= 12 && hour < 15) {
      timeOfDay = 'siang';
    } else if (hour >= 15 && hour < 19) {
      timeOfDay = 'sore';
    } else {
      timeOfDay = 'malam';
    }

    return timeOfDay;
  }

  static String getTimeZoneName() {
    var now = DateTime.now();
    var res = "${now.timeZoneName} (GMT+${now.timeZoneOffset.inHours})";
    return res;
  }

}