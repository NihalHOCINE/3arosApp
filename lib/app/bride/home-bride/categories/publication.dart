import 'package:flutter/material.dart';
import '../../../shared/images.dart';
import '../../../shared/colors.dart';
import 'categories.dart';
import '../home_bride.dart';
import '../favorites/favorite_publication.dart';
import '../requests/requests.dart';
import '../profile/profile_bride.dart';

class PublicationPage extends StatefulWidget {
  final String imagePath;

  PublicationPage({required this.imagePath});

  @override
  _PublicationPageState createState() => _PublicationPageState();
}

class _PublicationPageState extends State<PublicationPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                widget.imagePath,
                height: 300.0,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: 40.0,
                left: 20.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // White circle background for the arrow
                    Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    // Arrow icon to go back
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        // Navigate back to CategoryResult screen
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 40.0,
                right: 30.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // White circle background for the heart
                    Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    // Heart icon
                    IconButton(
                      icon: isLiked
                          ? Icon(Icons.favorite,
                              color: Colors.red) // Filled heart icon
                          : Icon(Icons.favorite_border),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                          // Add logic to handle adding/removing from favorites here
                          if (isLiked) {
                          } else {
                            // Remove from favorites logic
                            // ...
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    16.0, 8.0, 16.0, 16.0), // Adjust the top padding
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0), // Adjust the top radius
                    topRight: Radius.circular(10.0), // Adjust the top radius
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    // Username and profile picture row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side with the box and text
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          decoration: BoxDecoration(
                            color: blue_color,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            'كراء',
                            style: TextStyle(color: dark_color),
                          ),
                        ),
                        // Right side with the profile picture and username
                        Row(
                          children: [
                            Text(
                              'احمد محسن',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(width: 8.0),
                            CircleAvatar(
                              backgroundImage: AssetImage(business_image),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    // Additional details or widgets
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10.000 دج',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'برنوس لالة',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '(15 تعليقات)',
                              style:
                                  TextStyle(fontSize: 16.0, color: blue_color),
                            ),
                            Icon(
                              Icons.star,
                              size: 16.0,
                              color: blue_color,
                            ),
                            Text(
                              '4.5',
                              style:
                                  TextStyle(fontSize: 16.0, color: blue_color),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  ': الوصف',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'يحتوي Lorem ipsum على المحارف الأكثر استخدامًا ،',
                          style: TextStyle(fontSize: 16.0),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'الألوان المتوفرة:',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 88, 14,
                                    9), // Replace with the actual color
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 154, 161,
                                    167), // Replace with the actual color
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 178, 194,
                                    179), // Replace with the actual color
                              ),
                            ),
                            // Add more color circles as needed
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'القياسات المتوفرة:',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'S, M, L',
                          style: TextStyle(fontSize: 16.0),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: blue_color,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: blue_color, width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  'إرسال طلب',
                                  style: TextStyle(color: dark_color),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                color: white_color,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: blue_color, width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  'تعليق',
                                  style: TextStyle(color: dark_color),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Add more details or widgets as needed
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          boxShadow: [BoxShadow(color: dark_color, blurRadius: 5)],
        ),
        child: BottomAppBar(
          color: white_color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: ImageIcon(AssetImage(home_icon)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BrideHomePage()),
                  );
                },
              ),
              IconButton(
                icon: ImageIcon(AssetImage(categories_outlined_icon)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoriesScreen()),
                  );
                },
              ),
              IconButton(
                icon: ImageIcon(AssetImage(star_outlined_icon)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RequestsScreen()),
                  );
                },
              ),
              IconButton(
                icon: ImageIcon(AssetImage(heart_outlined_icon)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavoritePublicationScreen()),
                  );
                },
              ),
              IconButton(
                icon: ImageIcon(AssetImage(profile_outlined_icon)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
