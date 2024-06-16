import 'package:eye_planner/features/consultation/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class SuccessfullLoginPage extends StatelessWidget {
  const SuccessfullLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white
              ),
            )
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.06,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/colorLogo.png')
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.29,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/checkLogo.png'),
                const Text(
                  'Connexion réussie!',
                  style:TextStyle( 
                    color: Color(0xFF3C5375),
                    fontSize: 21, 
                    fontFamily: 'Lora'
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 16, right: 21),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor ',
                    style:TextStyle( 
                      color: Color(0xFF8287A1),
                      fontSize: 15, 
                      fontFamily: 'Lora'
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.10,
            left: 0,
            right: 0,
            child: GestureDetector(
                      onTap: () {
                        debugPrint("Se connecter avec Google");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 55, right: 55),
                        //width: MediaQuery.of(context).size.width * 0.30,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3C5375),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:  const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Continuer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Lora',
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
          ),
        ]
      ),
    );
  }
}