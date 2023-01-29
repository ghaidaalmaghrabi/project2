import 'package:flutter/material.dart';
import 'package:projecr2/models/data.dart';
import 'package:projecr2/pages/favorite.dart';

class ChallengeCard extends StatefulWidget {
  const ChallengeCard({
    Key? key,
    required this.challenge,
  }) : super(
          key: key,
        );
  final Challenge challenge;
  @override
  State<ChallengeCard> createState() => _ChallengeCardState();
}

var favColor = Colors.white;

class _ChallengeCardState extends State<ChallengeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Stack(
          children: [
            const Image(
              image: NetworkImage(
                  'https://gray-wbng-prod.cdn.arcpublishing.com/resizer/_cfiuNU9FKOdPJ0PsEGWq20Oq7I=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/JEOZIE7UHVFSVKA65EGHWXMP2Q.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.challenge.challengeName,
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.stars,
                                  color: Color(0xffF2B835),
                                ),
                                Text(
                                  '300',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time_filled,
                      ),
                      Text(
                        widget.challenge.challengeTime,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.date_range,
                      ),
                      Text(
                        widget.challenge.challengeDate,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                      ),
                      Text(
                        widget.challenge.challengeLocation,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffEB5D2E),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Click to start challenge',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Data.favoriteChallenges.add(widget.challenge);
                            final navigator = Navigator.of(context);
                            navigator.push(
                              MaterialPageRoute(
                                builder: (context) => const Favorite(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.favorite_border,
                            size: 40,
                            color: Colors.white,
                          ),
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
