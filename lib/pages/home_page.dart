import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final japaneseWeekdayFormat = DateFormat.E('ja_JP');
    final calendarKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: const Text('3月'),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.search),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.calendar_month),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.people_rounded),
          ),
        ],
      ),
      body: SfCalendar(
        view: CalendarView.schedule,

        ///ヘッダーの高さを 0 にすることで header を非表示にする
        headerHeight: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      drawer: Drawer(
        width: deviceWidth * 0.8,
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 50, bottom: 15),
                  child: Text(
                    'Googleカレンダー',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('スケジュール'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('1日'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('3日'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('週'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('月'),
              onTap: () {},
            ),
            const Divider(),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Icon(Icons.people),
                ),
                Text('aaa.gmail.com'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
