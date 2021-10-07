import 'package:flutter/material.dart';
import 'package:roadapp/screens/login_screen.dart';
import 'package:roadapp/widgets/inputTextWidget.dart';
import 'package:roadapp/resources/app_colors.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen() : super();

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SignupScreen> {
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
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   // leading: Icon(Icons.arrow_back),
      //   backgroundColor: Colors.transparent,
      //   //elevation: 5.0,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            //decoration: BoxDecoration(color: Colors.yellow),
            margin: const EdgeInsets.only(top: 70.0),
            alignment: Alignment.center,
            child: const Text(
              'RoadMobileApp',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60.0),
            child: InputTextWidget(
                controller: _emailController,
                labelText: "Adresse Email",
                icon: Icons.email,
                obscureText: false,
                keyboardType: TextInputType.emailAddress),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            child: const InputTextWidget(
                //controller: _pwdController,
                labelText: "Nom",
                icon: Icons.account_circle,
                obscureText: true,
                keyboardType: TextInputType.text),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            child: const InputTextWidget(
                //controller: _pwdController,
                labelText: "Date de naissance",
                icon: Icons.date_range,
                obscureText: true,
                keyboardType: TextInputType.datetime),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            child: InputTextWidget(
                controller: _pwdController,
                labelText: "Mot de Passe",
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.text),
          ),
          SizedBox(
            height: 55.0,
          ),

          Container(
            height: 55.0,
            child: ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  print("I ove tunisia");
                }
                //Get.to(ChoiceScreen());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0.0,
                minimumSize: Size(screenWidth, 150),
                padding: EdgeInsets.symmetric(horizontal: 30),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: AppColors.primaryColor,
                          offset: Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                    color: AppColors.primaryColor, // Color(0xffF05945),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "S'inscrire",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0, top: 20.0),
            child: Align(
                alignment: Alignment.center,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Vous avez déjà un compte ?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   color: Colors.black12,
      //   child: Container(
      //     height: 50.0,
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment Counter',
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
