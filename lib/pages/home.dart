import 'package:flutter/material.dart';
import 'package:projecr2/contestants.dart';

import 'challenges_page.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavBar(),
      body: ChallengesPage(),
    );
  }
}
