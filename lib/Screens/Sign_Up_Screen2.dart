import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Login_Screen.dart';
import 'package:room_roamer_new/Screens/Login_Screen2.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({super.key});

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  bool _isObscure = true;
  bool _isObscure1 = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isEmailValid(String email) {
    return email.contains('@');
  }

  bool _isPasswordValid(String password) {
    return password.length >= 6 && _containsSpecialCharacter(password);
  }

  bool _containsSpecialCharacter(String text) {
    final specialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return specialCharacters.hasMatch(text);
  }

  void _login() {
    final isValid = _formKey.currentState?.validate();
    if (isValid == null || !isValid) {
      return;
    }

    if (_passwordController.text != _confirmPasswordController.text) {
      // Password and confirm password do not match
      print('Password and Confirm Password do not match');
      return;
    }

    _formKey.currentState?.save();

    // Example authentication logic (replace with your actual logic)
    if (_isEmailValid(_emailController.text) &&
        _isPasswordValid(_passwordController.text)) {
      // Navigate to the next page if authentication is successful
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen2()),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hostel Owner",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                  fontFamily: "Urbanist",
                ),
              ),
              SizedBox(width: 40.w),
            ],
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
                SizedBox(height: 45.h),
                Text(
                  "Create An Account",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "First Name",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: AppColors.black,
                            fontFamily: "Urbanist",
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: 180.w,
                          child: TextFormField(
                            cursorColor: AppColors.border_clr,
                            controller: _firstNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.border_clr),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.border_clr),
                                  borderRadius: BorderRadius.circular(10.r)),
                              hintText: 'First name ',
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: "Urbanist",
                              ),
                              contentPadding:
                                  EdgeInsets.only(top: 10.h, left: 12.w),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter first name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last Name",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: AppColors.black,
                            fontFamily: "Urbanist",
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: 185.w,
                          child: TextFormField(
                            cursorColor: AppColors.border_clr,
                            controller: _lastNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.border_clr),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.border_clr),
                                  borderRadius: BorderRadius.circular(10.r)),
                              hintText: 'Last name ',
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                              ),
                              contentPadding:
                                  EdgeInsets.only(top: 10.h, left: 12.w),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter last name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  child: TextFormField(
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
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border_clr),
                          borderRadius: BorderRadius.circular(10.r)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!value.contains('@')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  child: TextFormField(
                    cursorColor: AppColors.border_clr,
                    controller: _phoneNumberController,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: "Urbanist",
                      ),
                      contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border_clr),
                          borderRadius: BorderRadius.circular(10.r)),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        if (value.length != 11 ||
                            !value.startsWith(RegExp(r'[0-9]'))) {
                          return 'Please enter a valid 11-digit phone number';
                        }
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  child: TextFormField(
                    cursorColor: AppColors.border_clr,
                    controller: _passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border_clr),
                          borderRadius: BorderRadius.circular(10.r)),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: "Urbanist",
                      ),
                      contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () => setState(() {
                          _isObscure = !_isObscure;
                        }),
                      ),
                    ),
                    style: TextStyle(color: AppColors.black),
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
                ),
                SizedBox(height: 12.h),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  child: TextFormField(
                    cursorColor: AppColors.border_clr,
                    controller: _confirmPasswordController,
                    obscureText: _isObscure1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border_clr),
                          borderRadius: BorderRadius.circular(10.r)),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: "Urbanist",
                      ),
                      contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure1
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () => setState(() {
                          _isObscure1 = !_isObscure1;
                        }),
                      ),
                    ),
                    style: TextStyle(color: AppColors.black),
                    onFieldSubmitted: (value) {
                      // Validator
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value != _passwordController.text) {
                        return 'Password does not match';
                      } else if (value.length < 6 ||
                          !value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        return 'Password must contain at least 6 characters and a special character';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 40.h),
                CustomElevatedButton(
                  text: "Sign up",
                  onPressed: _login,
                  width: 400.w,
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
