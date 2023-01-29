import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: NetworkImage('https://www.google.com/maps/d/thumbnail?mid=1uD9FtjLONCK4Hazcf36xDQ7Xa8Y&hl=en'),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffE88E72),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Select The playground location',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
