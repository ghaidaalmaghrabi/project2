import 'package:flutter/material.dart';

class FillInfo extends StatelessWidget {
  const FillInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Enter challenge name',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xffE88E72),
          ),
        ),
        const Divider(
          height: 32,
          color: Colors.grey,
          thickness: 1,
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Select challenge time',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Color(0xffE88E72),
              ),
            ),
            Icon(
              Icons.access_time_filled,
              color: Color(0xffEB5D2E),
            ),
          ],
        ),
        const Divider(
          height: 32,
          color: Colors.grey,
          thickness: 1,
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Select challenge date',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Color(0xffE88E72),
              ),
            ),
            Icon(
              Icons.date_range,
              color: Color(0xffEB5D2E),
            ),
          ],
        ),
        const Divider(
          height: 32,
          color: Colors.grey,
          thickness: 1,
        ),
        const SizedBox(
          height: 32,
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffEB5D2E),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Create',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
