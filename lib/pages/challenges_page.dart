import 'package:flutter/material.dart';
import 'package:projecr2/components/challenge_card.dart';
import 'package:projecr2/components/create_button.dart';
import 'package:projecr2/components/sports.dart';
import 'package:projecr2/models/data.dart';

class ChallengesPage extends StatefulWidget {
  const ChallengesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChallengesPage> createState() => _ChallengesPageState();
}

class _ChallengesPageState extends State<ChallengesPage> {
  var handColor = const Color(0xffEB5D2E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: NetworkImage('https://www.popsci.com/uploads/2021/07/26/running-track-start-lane.jpg?auto=webp'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Welcome Ghaidaa',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      if (handColor == const Color(0xffEB5D2E)) {
                        setState(() {
                          handColor = Colors.black;
                        });
                      } else {
                        setState(() {
                          handColor = const Color(0xffEB5D2E);
                        });
                      }
                    },
                    child: Icon(
                      Icons.waving_hand,
                      color: handColor,
                    ),
                  ),
                ],
              ),
            ),
            const Sports(),
            for (final challenge in Data.challenges) ChallengeCard(challenge: challenge),
            const CreateButton(),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
