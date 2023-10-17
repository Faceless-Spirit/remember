class TimeRange {
  var nowHour = DateTime.now().hour;

  String checkRange() {
    if (nowHour < 12 && nowHour >= 5) {
      return 'Chào buối sáng fen';
    }
    if (nowHour < 17 && nowHour >= 12) {
      return 'Chào buối trưa fen';
    }
    if (nowHour < 20 && nowHour >= 17) {
      return 'Chào buối tối fen';
    }
    if (nowHour < 5) {
      return '@@!';
    }
    return 'Nhậu!';
  }
}
