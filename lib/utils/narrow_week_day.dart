String narrowWeekday(int dayIndex) {
  switch (dayIndex % 7) {
    case DateTime.monday % 7:
      return '月';
    case DateTime.tuesday % 7:
      return '火';
    case DateTime.wednesday % 7:
      return '水';
    case DateTime.thursday % 7:
      return '木';
    case DateTime.friday % 7:
      return '金';
    case DateTime.saturday % 7:
      return '土';
    case DateTime.sunday % 7:
      return '日';
    default:
      throw Exception('invalid day index');
  }
}
