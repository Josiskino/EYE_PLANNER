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
                markersMaxCount: 1,
                canMarkersOverflow: false,
                outsideDaysVisible: true,
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                cellMargin: EdgeInsets.all(2.0), 
                cellPadding: EdgeInsets.symmetric(vertical: 4.0),
              ),
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonVisible: false,
                titleTextStyle: TextStyle(fontSize: 14.0), 
                formatButtonTextStyle: TextStyle(fontSize: 12.0), 
                leftChevronIcon: Icon(Icons.chevron_left, size: 16.0), 
                rightChevronIcon: Icon(Icons.chevron_right, size: 16.0), 
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(fontSize: 12.0), // Réduire la taille du texte des jours de la semaine
                weekendStyle: TextStyle(fontSize: 12.0), // Réduire la taille du texte des jours de weekend
              ),
              ),
          ),
        ),
      ],
    );
  }
}
