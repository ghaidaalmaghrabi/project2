import 'package:flutter/material.dart';

class Sport {
  final String sportName;
  final IconData sportIcon;
  const Sport(this.sportName, this.sportIcon);
}

class Challenge {
  final String challengeName;
  final String challengeDate;
  final String challengeLocation;
  final String challengeTime;

  const Challenge(this.challengeName, this.challengeDate, this.challengeLocation, this.challengeTime);
}

class Data {
  static const List<Sport> sports = [
    Sport('Running', Icons.directions_run),
    Sport('Swimming', Icons.pool),
    Sport('Golf', Icons.sports_golf),
    Sport('Swimming', Icons.pool),
  ];
  static const List<Challenge> challenges = [
    Challenge(
      'Lets Challenge',
      '9 March 2023',
      'Makkah - Aliskan',
      '3:30 PM',
    ),
    Challenge(
      'Champions',
      '26 March 2023',
      'Jeddah',
      '9:40 AM',
    ),
    Challenge(
      'Tennisers',
      '1 April 2023',
      'Makkah',
      '6:00 PM',
    ),
  ];
  static List<Challenge> favoriteChallenges = [];
}
