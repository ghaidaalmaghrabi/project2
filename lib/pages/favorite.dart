import 'package:flutter/material.dart';
import 'package:projecr2/components/fav_challenge_card.dart';
import 'package:projecr2/models/data.dart';

class Favorite extends StatefulWidget {
  const Favorite({
    super.key,
  });

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 64,
              child: Center(
                child: Text(
                  'My Favorite challenges',
                  style: TextStyle(color: Color(0xffEB5D2E), fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            for (final challenge in Data.favoriteChallenges)
              FavChallengesCard(
                challenge: challenge,
              ),
          ],
        ),
      ),
    );
  }
}
