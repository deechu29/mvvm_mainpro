import 'package:flutter/material.dart';
import 'package:mvvm_mainpro/ui/screens/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () {
        return LoginViewModel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          extendBodyBehindAppBar: true, // for appbar transparent
          appBar: AppBar(
            forceMaterialTransparency: true, //for appbar transparent
          ),
          body: Stack(
            children: [
              // Gradient Background
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Color(0xff1C1C1C)],
                  ),
                ),
              ),
              // Gift Icon Background Decoration
              Positioned(
                top: -50,
                right: -50,
                child: Opacity(
                  opacity: 0.1,
                  child: Icon(
                    Icons.card_giftcard,
                    size: 200,
                    color: Colors.white,
                  ),
                ),
              ),
              // Floating Gift Box on Bottom Left
              Positioned(
                bottom: -50,
                left: -50,
                child: Opacity(
                  opacity: 0.1,
                  child: Icon(
                    Icons.card_giftcard,
                    size: 150,
                    color: Colors.white,
                  ),
                ),
              ),
              // Login Form Content
              Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    // key: _formKey,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // App Logo (Gift Icon)
                        Icon(
                          Icons.card_giftcard,
                          size: 100,
                          color: Colors.white,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Welcome to Giftify!',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'The best way to send love and gifts.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 40),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (value.contains("@")) {
                              return null;
                            } else {
                              return "please enter a proper email";
                            }
                          },
                          // controller: emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white70),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.mail_outline_outlined,
                              color: Colors.white,
                            ),
                            hintText: "Email",
                            fillColor: Colors.white.withOpacity(0.2),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 18),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return "password must be at least 6 characters long";
                            } else {
                              return null;
                            }
                          },
                          // key: passkey,
                          // controller: passController,
                          //   bool obscureText = false,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white70),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              // obscureText: !_isPasswordVisible,
                              color: Colors.white,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // setState(() {
                                //   _isPasswordVisible = !_isPasswordVisible;
                                // });
                              },
                            ),
                            hintText: "Password",
                            fillColor: Colors.white.withOpacity(0.2),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 18),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                            //   Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => BottomNavbarScreen(),
                            //     ),
                            //     (route) => false,
                            //   );
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     SnackBar(
                            //       content: Text('Login Successful'),
                            //       backgroundColor: Colors.green,
                            //     ),
                            //   );
                            // } else {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     SnackBar(
                            //       content: Text('Invalid Input'),
                            //       backgroundColor: Colors.red,
                            //     ),
                            //   );
                            // }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 10,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => RegisterScreen2(),
                            //     ));
                          },
                          child: Text(
                            'dont have an account? register',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
