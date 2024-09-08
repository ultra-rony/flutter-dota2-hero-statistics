import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String heroId;

  const DetailsScreen({super.key, required this.heroId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(heroId),
        centerTitle: true,
      ),
      body: Center(
        child: Text("DetailsScreen"),
      ),
    );
  }
}
