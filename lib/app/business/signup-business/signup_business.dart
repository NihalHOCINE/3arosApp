import 'package:flutter/material.dart';
import '../../shared/images.dart';
import '../../shared/colors.dart';
import '../signin-business/signin_business.dart';




class businessSignUpPage extends StatefulWidget {
  @override
  _businessSignUpPageState createState() => _businessSignUpPageState();
}

class _businessSignUpPageState extends State<businessSignUpPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue_color,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.transparent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'أنشئي حسابك  ',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Changa', color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.only(right: 129),
                      child: Text(
                        'سجلي دخولك لتستمتعي بأفضل تجربة',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedInputWithIcon(
                      labelText: 'الإسم الكامل',
                      icon: Icons.person,
                      obscureText: false,
                      fontSize: 14.0,
                    ),
                    RoundedInputWithIcon(
                      labelText: 'الإيمايل',
                      icon: Icons.email,
                      obscureText: false,
                      fontSize: 14.0,
                    ),
                    RoundedInputWithIcon(
                      labelText: 'رقم الهاتف',
                      icon: Icons.phone,
                      obscureText: false,
                      fontSize: 14.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RoundedDropdownWithIcon(
                            labelText: 'الولاية',
                            icon: Icons.location_city,
                            items: ['خيار 1', 'خيار 2'],
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Expanded(
                          child: RoundedDropdownWithIcon(
                            labelText: 'الرمز البريدي',
                            icon: Icons.markunread_mailbox,
                            items: ['خيار أ', 'خيار ب'],
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    RoundedInputWithIcon(
                      labelText: 'كلمة السر',
                      icon: Icons.lock,
                      obscureText: true,
                      fontSize: 14.0,
                    ),
                    RoundedInputWithIcon(
                      labelText: 'تأكيد كلمة السر',
                      icon: Icons.lock,
                      obscureText: true,
                      fontSize: 14.0,
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle sign-up button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BusinessSignInPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: blue_color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'التالي',
                            style: TextStyle(fontSize: 14.0, fontFamily: 'Changa', color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class RoundedInputWithIcon extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final double fontSize;

  RoundedInputWithIcon({
    required this.labelText,
    required this.icon,
    this.obscureText = false,
    this.fontSize = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Icon(icon, color: blue_color),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Color(0xFFE5EEF2)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Color(0xFFE5EEF2)),
          ),
          labelStyle: TextStyle(color: Colors.black),
        ),
        obscureText: obscureText,
        style: TextStyle(fontSize: fontSize, color: Colors.black),
      ),
    );
  }
}

class RoundedDropdownWithIcon extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final List<String> items;
  final double fontSize;

  RoundedDropdownWithIcon({
    required this.labelText,
    required this.icon,
    required this.items,
    this.fontSize = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Icon(icon, color: blue_color),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Color(0xFFE5EEF2)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Color(0xFFE5EEF2)),
          ),
          labelStyle: TextStyle(color: Colors.black),
        ),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? value) {
          // Handle dropdown value change
        },
        style: TextStyle(fontSize: fontSize, color: Colors.black),
      ),
    );
  }
}
