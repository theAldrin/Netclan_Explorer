import 'package:flutter/material.dart';

class RefineScreen extends StatefulWidget {
  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  String _selectedAvailability = 'Available | Hey Let Us Connect';
  int distance = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF0E2E43),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
            ),
          ),
          title: Text(
            'Refine',
            style: TextStyle(fontSize: 20),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Your Availability',
              style: TextStyle(
                  color: Color(0xFF0E2E43),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              height: 45,
              child: DropdownButtonFormField<String>(
                padding: EdgeInsets.zero,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
                isExpanded: true,
                iconEnabledColor: Color(0xFF0E2E43),
                iconSize: 25,
                value: _selectedAvailability,
                items: <String>[
                  'Available | Hey Let Us Connect',
                  'Away | Stay Discreet And Watch',
                  'Busy | Do Not Disturb | Will Catch Up Later',
                  'SOS | Emergency! Need Assistance! HELP'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 15),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Change function parameter to nullable string
                  setState(() {
                    _selectedAvailability = newValue!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Add Your Status',
              style: TextStyle(
                  color: Color(0xFF0E2E43),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 9,
            ),
            TextFormField(
              maxLines: 250,
              minLines: 1,
              // style: ,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                focusColor: Colors.grey,
                contentPadding: EdgeInsets.all(12),
                hintText: "Search",
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 0.5)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Select Hyper local Distance',
              style: TextStyle(
                  color: Color(0xFF0E2E43),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
                value: distance.toDouble(),
                max: 100,
                min: 0,
                activeColor: Color(0xFF0E2E43),
                inactiveColor: Colors.grey,
                onChanged: (double newvalue) {
                  setState(() {
                    distance = newvalue.round();
                  });
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('1Km'), Text('100Km')],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Select Purpose',
              style: TextStyle(
                  color: Color(0xFF0E2E43),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                PurposeButtons(
                  title: 'Coffee',
                ),
                SizedBox(
                  width: 10,
                ),
                PurposeButtons(
                  title: 'Business',
                ),
                SizedBox(
                  width: 10,
                ),
                PurposeButtons(
                  title: 'Hobbies',
                ),
                SizedBox(
                  width: 10,
                ),
                PurposeButtons(
                  title: 'Friendship',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                PurposeButtons(
                  title: 'Movies',
                ),
                SizedBox(
                  width: 10,
                ),
                PurposeButtons(
                  title: 'Dinning',
                ),
                SizedBox(
                  width: 10,
                ),
                PurposeButtons(
                  title: 'Dating',
                ),
                SizedBox(
                  width: 10,
                ),
                PurposeButtons(
                  title: 'Matrimony',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  height: 34,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF0E2E43),
                    border: Border.all(
                      color: Color(0xFF0E2E43), // Set the color of the border
                      width: 1, // Set the width of the border
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Save & Explore',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PurposeButtons extends StatefulWidget {
  PurposeButtons({required this.title});
  late String title;
  @override
  State<PurposeButtons> createState() => _PurposeButtonsState();
}

class _PurposeButtonsState extends State<PurposeButtons> {
  Color _containerColor = Colors.white;
  Color _textColor = Color(0xBF0E2E43);

  void toggleColor() {
    setState(() {
      _containerColor =
          _containerColor == Colors.white ? Color(0xFF0E2E43) : Colors.white;
      _textColor =
          _textColor == Color(0xBF0E2E43) ? Colors.white : Color(0xBF0E2E43);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _containerColor,
          border: Border.all(
            color: Color(0xBF0E2E43), // Set the color of the border
            width: 1, // Set the width of the border
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 13, color: _textColor),
          ),
        ),
      ),
    );
  }
}
