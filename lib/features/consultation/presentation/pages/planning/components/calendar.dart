import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarContent extends StatelessWidget {
   CalendarContent({super.key});

  final DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 390,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF4A91C3).withOpacity(0.1),
          ),
          child: ClipRRect(
            //borderRadius: BorderRadius.circular(30),
            child: TableCalendar(
              focusedDay: today, 
              firstDay: DateTime.utc(2020, 10, 16), 
              lastDay: DateTime.utc(2030, 3, 14),
              calendarStyle: const CalendarStyle(
                markersAlignment: Alignment.topCenter,
                cellMargin: EdgeInsets.all(9.0), 
                cellPadding: EdgeInsets.symmetric(vertical: 4.0),

                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ),

                /*defaultDecoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),*/
                defaultTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                ),

                /*weekendDecoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),*/
                weekendTextStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 17.0,
                ),

                /*outsideDecoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),*/
                outsideTextStyle: TextStyle(
                  color: Color.fromARGB(255, 185, 181, 181),
                  fontSize: 17.0,
                ),
                 
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ), 
              ),
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonVisible: false,
                titleTextStyle: TextStyle(fontSize: 17.0), 
                formatButtonTextStyle: TextStyle(fontSize: 12.0), 
                leftChevronIcon: Icon(Icons.chevron_left, size: 20.0), 
                rightChevronIcon: Icon(Icons.chevron_right, size: 20.0), 
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.normal
                ), 
                weekendStyle: TextStyle(
                    fontSize:16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontStyle: FontStyle.normal
                ), 
              ),
              /*onDaySelected: (selectedDay, focusedDay) {
                debugPrint('Selected day: $selectedDay');
                debugPrint('Focused day: $focusedDay');
              ),*/
              ),
          ),
        ),
      ],
    );
  }
}
