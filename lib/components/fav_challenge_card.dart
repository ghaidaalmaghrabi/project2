import 'package:flutter/material.dart';
import 'package:projecr2/models/data.dart';

class FavChallengesCard extends StatefulWidget {
  const FavChallengesCard({
    Key? key,
    required this.challenge,
  }) : super(key: key);

  final Challenge challenge;

  @override
  State<FavChallengesCard> createState() => _FavChallengesCardState();
}

class _FavChallengesCardState extends State<FavChallengesCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    widget.challenge.challengeName,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time_filled,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.challenge.challengeTime,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.date_range,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.challenge.challengeDate,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.challenge.challengeLocation,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
