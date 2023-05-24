import 'package:flutter/material.dart';
import 'package:netclan_explorer/widgets/Job_aspirant_card.dart';

class JobAspirantScreen extends StatefulWidget {
  @override
  State<JobAspirantScreen> createState() => _JobAspirantScreenState();
}

class _JobAspirantScreenState extends State<JobAspirantScreen> {
  List<JobAspirantCard> UserList = [
    JobAspirantCard(
      image: 'images/girl1.jpg',
      description:
          'Hi community! I am available at your service.\n I am a passionate UI/UX Designer with a talent for creating innovative designs that align with client goals and deliver exceptional results',
      hobbies: 'Coffe | Business | Friendship',
      barWidth: 40,
      distance: 10,
      profession: 'UI and UX Designer',
      location: 'Kochi',
      userName: 'Layla Abubakkar',
      yearsOfExperience: 3,
    ),
    JobAspirantCard(
      image: 'images/man1.jpg',
      description:
          'Hi community! I am available at your service.\n I am a passionate UI/UX Designer with a talent for creating innovative designs that align with client goals and deliver exceptional results',
      hobbies: 'Coffe | Business | Friendship',
      barWidth: 100,
      distance: 8,
      profession: 'UI and UX Designer',
      location: 'Chennai',
      userName: 'Sharavanan',
      yearsOfExperience: 2,
    ),
    JobAspirantCard(
      image: 'images/girl2.jpg',
      description:
          'Hi community! I am available at your service.\n I am a passionate UI/UX Designer with a talent for creating innovative designs that align with client goals and deliver exceptional results',
      hobbies: 'Coffe | Business | Friendship',
      barWidth: 60,
      distance: 90,
      profession: 'UI and UX Designer',
      location: 'Madurai',
      userName: 'Angelina',
      yearsOfExperience: 1,
    ),
    JobAspirantCard(
      image: 'images/man2.jpg',
      description:
          'Hi community! I am available at your service.\n I am a passionate UI/UX Designer with a talent for creating innovative designs that align with client goals and deliver exceptional results',
      hobbies: 'Coffe | Business | Friendship',
      barWidth: 10,
      distance: 60,
      profession: 'UI and UX Designer',
      location: 'Rajasthan',
      userName: 'Shivam',
      yearsOfExperience: 0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    // style: ,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        contentPadding: EdgeInsets.zero,
                        hintText: "Search",
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(width: 4)),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 15,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.format_list_numbered)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.fromLTRB(20, 5, 10, 0),
            itemCount: 4, // Number of containers in the list
            itemBuilder: (BuildContext context, int index) {
              return UserList[index];
            },
          ),
        ),
      ],
    );
  }
}
