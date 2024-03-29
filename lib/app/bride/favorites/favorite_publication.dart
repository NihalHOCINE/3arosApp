import 'package:flutter/material.dart';
import '../../shared/images.dart';
import '../../shared/colors.dart';
import '../categories/publication.dart';
import '../../widgets/bottom_navigation_bar_bride.dart';

class FavoritePublicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            background_image, // Replace with your actual image path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Your content goes here
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: white_color),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150.0), // Adjust the height as needed
              Container(
                margin: EdgeInsets.only(
                    top: 70.0,
                    right: 1.0), // Adjust the top and right margin as needed
                child: Text(
                  'قائمة المفضلات',
                  style: TextStyle(
                    color: dark_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount:
                        10, // Replace with the actual number of favorite items
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Navigate to the PublicationPage with the selected card's image
                        //  Navigator.push(
                            //context,
                            //MaterialPageRoute(
                             // builder: (context) =>
                                // PublicationPage(imagePath: dress_image),
                           // ),
                         // );
                        },
                        child: Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                dress,
                                fit: BoxFit.cover,
                              ),
                              Positioned.fill(
                                child: Transform.scale(
                                  scale:
                                      1.1, // Adjust the scale factor as needed
                                  child: Image.asset(
                                    product_decoration_image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 6.0,
                                left: 15.0, // Adjust left padding
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'برنوس ',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: dark_color,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      '25000 دج',
                                      style: TextStyle(
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.bold,
                                        color: dark_blue_color,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
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
              SizedBox(height: 10.0),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: CustomBottomNavigationBar(
            currentPageIndex: 3, parentContext: context),
      ),
    );
  }
}
