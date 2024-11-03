import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Forget_password.dart';
import 'package:room_roamer_new/Screens/SignUp_Screen.dart';
import 'package:room_roamer_new/Screens/User_profile.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import '../utils/AppColors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  var isLoading = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isEmailValid(String email) {
    return email.contains('@');
  }

  bool _isPasswordValid(String password) {
    // Customize this method based on your password validation criteria
    return password.length >= 6 && _containsSpecialCharacter(password);
  }

  bool _containsSpecialCharacter(String text) {
    // Add your logic to check if the text contains any special character
    final specialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return specialCharacters.hasMatch(text);
  }

  void _login() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();

    // Example authentication logic (replace with your actual logic)
    if (_isEmailValid(_emailController.text) &&
        _isPasswordValid(_passwordController.text)) {
      // Navigate to the next page if authentication is successful
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UserProfile()),
      );
    } else {
      // Show an error message or handle authentication failure
      print('Authentication failed! Incorrect email or password.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.topCenter,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hostel Seeker",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  width: 45.w,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  "Login Account",
                  style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  "Hello, you must login first to be able to use the application and enjoy all the features in Calashop",
                  style: TextStyle(
                    fontSize: 13.5.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Email Address / Number",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                TextFormField(
                  cursorColor: AppColors.border_clr,
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'E-Mail',
                    hintStyle: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: "Urbanist",
                    ),
                    contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(
                            10.r) // Change border color to light grey
                        ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: AppColors.black), // Change text color
                  onFieldSubmitted: (value) {
                    // Validator
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                TextFormField(
                  cursorColor: AppColors.border_clr,
                  controller: _passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(
                            10.r) // Change border color to light grey
                        ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r)),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: "Urbanist",
                    ),
                    contentPadding: EdgeInsets.only(top: 12.h, left: 12.w),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () => setState(() {
                        _isObscure = !_isObscure;
                      }),
                    ),
                  ),
                  style: TextStyle(color: AppColors.black), // Change text color
                  onFieldSubmitted: (value) {
                    // Validator
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6 ||
                        !value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return 'Password must contain at least 6 characters and a special character';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetpasswordScreen(),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: AppColors.purple_dark,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Urbanist",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Container(
                  child: CustomElevatedButton(
                      text: "Sign In", onPressed: _login, width: 428.w),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          color: AppColors.black2,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                        ),
                      ),
                      Text("Join Us",
                          style: TextStyle(
                            color: AppColors.purple_dark,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
