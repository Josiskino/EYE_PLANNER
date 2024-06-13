import 'package:eye_planner/widget_calendar.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Prendre rendrez-vous',
          style: TextStyle(
            color: Color(0xFF3C5375),
            fontSize: 18,
            fontFamily: 'Lora'
          ),

        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top:16, left:30),
            child: const Text(
              'Choisir une date',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF070707),
                fontFamily: 'Lora'
                //fontWeight: FontWeight.bold,
              ),
              ),
          ),
          CalendarContent(),
          Container(
            margin: const EdgeInsets.only(top:16, left:30),
            child: const Text(
              'Motif du rdv',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF070707),
                fontFamily: 'Lora'
                //fontWeight: FontWeight.bold,
              ),
              ),
          ),
          
        ],
      ),
    );
  }
}