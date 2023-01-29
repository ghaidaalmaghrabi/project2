import 'package:flutter/material.dart';
import 'package:projecr2/components/fill_information.dart';
import 'package:projecr2/components/location_card.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEB5D2E),
        title: const Text(
          'create challenge',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: const LocationCard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FillInfo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
