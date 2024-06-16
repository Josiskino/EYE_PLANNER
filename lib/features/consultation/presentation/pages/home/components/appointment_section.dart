import 'package:eye_planner/features/consultation/presentation/pages/planning/planning_page.dart';
import 'package:flutter/material.dart';

class AppointmentSection extends StatelessWidget {
  const AppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 339,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/calendarRemoveBg.png",
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    const Color(0xFF3C5375).withOpacity(0.8),
                    Colors.grey.withOpacity(0.1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  const Text('Prendre \n rendez-vous',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PlanningPage()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
