import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String userName, location, profession, description, image, hobbies;
  final int distance;
  final double barWidth;
  UserCard(
      {required this.image,
      required this.description,
      required this.hobbies,
      required this.barWidth,
      required this.distance,
      required this.profession,
      required this.location,
      required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.only(left: 25),
          padding:
              const EdgeInsets.only(bottom: 8, left: 18, right: 18, top: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                const BoxShadow(
                  offset: Offset(1, 1),
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          '+ INVITE',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xE00E2E43),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      userName,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xE00E2E43)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "$location | $profession",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xAF0E2E43)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Within $distance.0 KM",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color(0xE00E2E43)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 120,
                margin: const EdgeInsets.only(left: 50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  Container(
                    width: barWidth,
                    height: 11,
                    decoration: const BoxDecoration(
                        color: Color(0xEf0e2e43),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                  ),
                ]),
              ),
              const SizedBox(height: 15),
              Text(
                hobbies,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xE00E2E43)),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                description,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xAF0E2E43)),
              )
            ],
          ),
        ),
        Positioned(
          top: 20,
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 192, 208, 218),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                image,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
