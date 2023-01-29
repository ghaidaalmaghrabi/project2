import 'package:flutter/material.dart';

class Sports extends StatelessWidget {
  const Sports({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: const [
            Icon(
              Icons.sports_tennis,
              color: Color(0xffEB5D2E),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Tennis',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffEB5D2E),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.directions_run,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Running',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.pool,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Swimming',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.sports_golf,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Golf',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
