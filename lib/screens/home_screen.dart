// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:roadapp/screens/signup_screen.dart';
import 'package:roadapp/widgets/inputTextWidget.dart';
import 'package:roadapp/resources/app_colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen() : super();

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<HomeScreen> {
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  //final snackBar = SnackBar(content: Text('email ou mot de passe incorrect'));
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double r = (175 / 360); //  rapport for web test(304 / 540);
    final coverHeight = screenWidth * r;
    bool _pinned = false;
    bool _snap = false;
    bool _floating = false;

    return Scaffold(
      extendBodyBehindAppBar: false,
      // appBar: AppBar(
      //   // leading: Icon(Icons.arrow_back),
      //   backgroundColor: AppColors.secondColor,
      //   //elevation: 5.0,
      // ),
      appBar: AppBar(
        title: Text("RoadMobileApp"),
        foregroundColor: AppColors.primaryColor,
        backgroundColor: AppColors.secondColor,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                'user',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 20.0,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.0, right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.account_circle,
                  size: 26.0,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),

      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 20.0),
              child: SizedBox(
                height: 55.0,
                width: screenWidth - 20.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.grayColor,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 20.0),
              child: Container(
                width: screenWidth - 20.0,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: AppColors.grayColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 15),
                      child: Text(
                        'Signalisations',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                          height: 1,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Text(
                      'Vous n\'avez pas encore rien signalé',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 18,
                        color: AppColors.grayText,
                        height: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 20.0),
              child: Container(
                width: screenWidth - 20.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: AppColors.grayColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 25),
                      child: Text(
                        'Revenus',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                          height: 1,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Text(
                      '0.00 TND',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 26,
                        color: AppColors.grayText,
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ]),

      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   color: AppColors.primaryColor,
      //   child: Container(
      //     height: 50.0,
      //   ),
      // ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: AppColors.primaryColor, width: 2.0))),
        child: BottomNavigationBar(
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Acceuil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.compare_arrows),
              label: 'Transaction',
            ),
          ],
          //currentIndex: _selectedIndex,
          selectedItemColor: AppColors.darkPrimary,
          //onTap: _onItemTapped,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: Icon(Icons.photo_camera_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
