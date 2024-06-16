import 'package:eye_planner/features/consultation/presentation/pages/home/components/appointment_section.dart';
import 'package:eye_planner/features/consultation/presentation/pages/home/components/custom_app_bar.dart';
import 'package:eye_planner/features/consultation/presentation/pages/home/components/shop_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppointmentSection(),
            ShopSection(),
          ],
        ));
  }
}
