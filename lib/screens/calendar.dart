import 'package:dpj/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  static const String _title = "Flutter Calendar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
      ),
      body: TableCalendar(
        firstDay: kFirstDay,
        lastDay: kLastDay,
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        locale: 'ko-KR',
        daysOfWeekHeight: 30,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            setState(() {
              _calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          leftChevronVisible: true,
          rightChevronVisible: true,
          rightChevronIcon: Icon(
            Icons.arrow_right_outlined,
            size: 40,
          ),
          leftChevronIcon: Icon(
            Icons.arrow_left_outlined,
            size: 40,
          ),
          titleTextStyle: TextStyle(
            fontSize: 20,
          ),
        ),
        calendarStyle: const CalendarStyle(
          tableBorder: TableBorder(
            // top: BorderSide(color: Colors.brown),
            // right: BorderSide(color: Colors.black),
            // bottom: BorderSide(color: Colors.green),
            // left: BorderSide(color: Colors.red),
            // calendar 의 내부 가로선
            // horizontalInside: BorderSide(color: Colors.lightBlue),
            // calendar 의 내부 세로선
            // verticalInside: BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.zero,
          ),
          weekendTextStyle: TextStyle(
            color: Colors.red,
          ),
          weekendDecoration: BoxDecoration(shape: BoxShape.circle),
        ),
      ),
    );
  }
}
