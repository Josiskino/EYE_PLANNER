import 'package:eye_planner/appointment_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue, 
              ),
              child:  Image.asset("assets/images/profileImage.png")
            ),
            const SizedBox(width: 10), 
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bonjour Sam",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16,
                    fontFamily: 'Lora'
                  ),
                ),
                Text(
                  "Que souhaitez-vous faire aujourd'hui ?",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Lora'
                  ),
                ),
              ],
            ),
            const Spacer(), 
            IconButton(
                    onPressed: () {
                      
                    },
                      icon: const Icon(
                      Icons.notifications_none,
                    ),
                  ), 
          ],
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
                    gradient:  LinearGradient(
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
                  const Text(
                    'Prendre \n rendez-vous',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start
                    ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AppointmentPage()),
                        );
                    },
                      icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ],
              )
              )
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        height: 170,
        width: double.infinity,
        decoration: const BoxDecoration(
          //color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/images/personage.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient:  LinearGradient(
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
                  const Text(
                    'Voire la boutique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start
                    ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                     
                    },
                      icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ],
              )
              )
              ],
          ),
        ),
      )
        ],
      )
    );
  }
}