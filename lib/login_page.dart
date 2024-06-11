import 'package:eye_planner/successfull_login_page.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/optician.jpeg', 
              fit: BoxFit.cover,
            ),
          ),
          // Dégradé en tant que couleur de fond
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white.withOpacity(1.0), Colors.grey.withOpacity(0.1)],
                ),
              ),
            ),
          ),
    
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.10,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.94, 
                padding: const EdgeInsets.only(left: 10, right: 19), 
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/colorLogo.png', 
                      width: 300, 
                      height: 100, 
                    ),
                    const SizedBox(height: 10), 
                    const Text(
                      'Réservez vos rdv chez \n l\'opticien en quelques clics',
                      style: TextStyle(
                        color: Color(0xFF4A91C3),
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 39,),
                    GestureDetector(
                      onTap: () {
                        print("Se connecter avec Google");
                        // Ajoutez ici une autre action pour vérifier si le clic fonctionne
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Se connecter avec Google"))
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SuccessfullLoginPage()),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3C5375),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 50, 
                              height: 50,
                              child: Image.asset('assets/images/googleLogo.png'),
                            ),
                            const SizedBox(width: 5), 
                            const Text(
                              textAlign: TextAlign.center,
                              'Se connecter avec google',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  }
