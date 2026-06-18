import 'package:flutter/material.dart';

class EvolveStyle {
  // Colors
  static const Color backgroundColor = Color(0xFFE892B0);
  static const Color cardColor = Color(0xFFFBFBFB);
  static final Color? appBarColor = Colors.pink[300];
  static final Color? badgeColor = Colors.pink[300];
  static const Color fundoEvolve = Color(0xFFAA4C6C);

  // Decorations
  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardColor,
    borderRadius: BorderRadius.circular(20),
  );

  static BoxDecoration typeBadgeDecoration = BoxDecoration(
    color: badgeColor,
    borderRadius: BorderRadius.circular(20),
  );

  // Text Styles
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle pokemonName = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xFF1E1E1E),
  );

  static const TextStyle typeText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle infoTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle infoContent = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  static const TextStyle statLabel = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );
}