import 'package:flutter/material.dart';
import '../styles/evolve_style.dart';

class EvolutionScreen extends StatelessWidget {
  const EvolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EvolveStyle.backgroundColor,

      appBar: AppBar(
        backgroundColor: EvolveStyle.appBarColor,
        title: const Text("Evolução"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pokémon atual
            Center(
              child: PokemonCard(
                name: "Gothorita",
                type: "Psíquico",
                image: "assets/images/gothorita.png",
              ),
            ),

            const SizedBox(height: 30),

            const Center(
              child: Icon(
                Icons.arrow_downward,
                size: 40,
                color: Colors.white70,
              ),
            ),

            const SizedBox(height: 20),

            // Evolução
            Center(
              child: PokemonCard(
                name: "Gothitelle",
                type: "Psíquico",
                image:
                "assets/images/goth.png",
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Informações da Evolução",
              style: EvolveStyle.sectionTitle,
            ),

            const SizedBox(height: 15),

            const InfoCard(
              title: "Método",
              content:
              "Evolui para Gothitelle ao atingir o Nível 41.",
            ),

            const SizedBox(height: 12),

            const InfoCard(
              title: "Tipo",
              content: "Psíquico 🌀",
            ),

            const SizedBox(height: 12),

            const InfoCard(
              title: "Descrição",
              content:
              "Gothitelle é a evolução de Gothorita ao atingir o Nível 41. "
                  "É um Pokémon do tipo Psíquico, conhecido por sua habilidade "
                  "de distorcer o espaço ao redor e prever eventos através das estrelas.",
            ),

            const SizedBox(height: 30),

            const Text(
              "Status",
              style: EvolveStyle.sectionTitle,
            ),

            const SizedBox(height: 15),

            const StatBar(label: "HP", value: 70),
            const StatBar(label: "Ataque", value: 45),
            const StatBar(label: "Defesa", value: 70),
            const StatBar(label: "Velocidade", value: 65),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {
  final String name;
  final String type;
  final String image;

  const PokemonCard({
    super.key,
    required this.name,
    required this.type,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(16),
      decoration: EvolveStyle.cardDecoration,

      child: Column(
        children: [
          SizedBox(
            height: 120,

            child: image.startsWith('http')
                ? Image.network(
              image,
              fit: BoxFit.contain,

              errorBuilder:
                  (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 60,
                );
              },
            )
                : Image.asset(
              image,
              fit: BoxFit.contain,

              errorBuilder:
                  (context, error, stackTrace) {
                return const Icon(
                  Icons.image_not_supported,
                  size: 60,
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          Text(
            name,
            style: EvolveStyle.pokemonName,
          ),

          const SizedBox(height: 6),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),

            decoration:
            EvolveStyle.typeBadgeDecoration,

            child: Text(
              type,
              style: EvolveStyle.typeText,
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),

      decoration: EvolveStyle.cardDecoration,

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [
          Text(
            title,
            style: EvolveStyle.infoTitle,
          ),

          const SizedBox(height: 8),

          Text(
            content,
            style: EvolveStyle.infoContent,
          ),
        ],
      ),
    );
  }
}

class StatBar extends StatelessWidget {
  final String label;
  final double value;

  const StatBar({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(bottom: 16),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [
          Text(
            "$label - ${value.toInt()}",
            style: EvolveStyle.statLabel,
          ),

          const SizedBox(height: 8),

          ClipRRect(
            borderRadius:
            BorderRadius.circular(12),

            child: LinearProgressIndicator(
              value: value / 255,
              minHeight: 14,
              backgroundColor:
              Colors.grey.shade300,

              valueColor:
              const AlwaysStoppedAnimation<
                  Color>(
                Color(0xFFDA5D8D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}