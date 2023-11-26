import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  // Removed the ScrollController

  List<String> listOfMonths = [
    "يناير",
    "فبراير",
    "مارس",
    "أبريل",
    "مايو",
    "يونيو",
    "يوليو",
    "أغسطس",
    "سبتمبر",
    "أكتوبر",
    "نوفمبر",
    "ديسمبر"
  ];

  List<String> listOfDays = ["الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت", "الأحد"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text('تقويمي'),
        ),
        body: Column(
          children: [
            //To Show Current Date
            Container(
              height: 30,
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                selectedDate.day.toString() +
                    '-' +
                    listOfMonths[selectedDate.month - 1] +
                    ', ' +
                    selectedDate.year.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.indigo[700],
                ),
              ),
            ),
            SizedBox(height: 10),
            //To show Calendar Widget
            Expanded(
              child: Container(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: 365,
                  // Removed the controller
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          currentDateSelectedIndex = index;
                          selectedDate = DateTime.now().add(Duration(days: index));
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFCCCCCC),
                              offset: Offset(3, 3),
                              blurRadius: 5,
                            )
                          ],
                          color: currentDateSelectedIndex == index ? Colors.black : Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              listOfMonths[DateTime.now().add(Duration(days: index)).month - 1].toString(),
                              style: TextStyle(
                                fontSize: 16,
                                color: currentDateSelectedIndex == index ? Colors.white : Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              DateTime.now().add(Duration(days: index)).day.toString(),
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: currentDateSelectedIndex == index ? Colors.white : Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              listOfDays[DateTime.now().add(Duration(days: index)).weekday - 1].toString(),
                              style: TextStyle(
                                fontSize: 16,
                                color: currentDateSelectedIndex == index ? Colors.white : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
