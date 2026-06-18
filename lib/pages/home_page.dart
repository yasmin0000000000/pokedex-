import 'package:flutter/material.dart';
import '../styles/home_styles.dart';
import 'evolve_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomeStyles.backgroundColor,
      body: Stack(
        children: [
          Container(
            height: 550,
            decoration: const BoxDecoration(
              color: HomeStyles.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Gothitelle',
                        style: HomeStyles.nameStyle,
                      ),
                      Text(
                        '#0576',
                        style: HomeStyles.numberStyle,
                      ),
                    ],
                  ),
                ),

                Image.asset(
                  "assets/images/goth.png",
                  height: 350,
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),

                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tipo",
                            style: HomeStyles.sectionTitle,
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Psíquico 🌀",
                            style: HomeStyles.infoText,
                          ),

                          const SizedBox(height: 16),

                          const Text(
                            "Descrição",
                            style: HomeStyles.sectionTitle,
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Gothitelle libera energia psíquica e mostra aos "
                            "oponentes sonhos sobre o fim do universo. Esses "
                            "sonhos são aparentemente etéreos e belos.",
                            style: HomeStyles.descriptionStyle,
                          ),

                          const SizedBox(height: 16),

                          const Text(
                            "Habilidade",
                            style: HomeStyles.sectionTitle,
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Fresco",
                            style: HomeStyles.infoText,
                          ),

                          const SizedBox(height: 16),

                          const Text(
                            "Poder Psíquico",
                            style: HomeStyles.sectionTitle,
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "70",
                            style: HomeStyles.infoText,
                          ),

                          const SizedBox(height: 30),

                          // BOTÃO DE EVOLUÇÃO
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                    const EvolutionScreen(),
                                  ),
                                );
                              },

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink[300],
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20),
                                ),
                              ),

                              child: const Text(
                                "Ver Evolução",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}