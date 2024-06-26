import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _conformpasswordController = TextEditingController();
  bool _obscureText = true;
  bool _obscureTextTwo = true;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          // title: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Sign Up for Free',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      width: double.infinity,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _usernameController,
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          labelText: 'Enter your email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter a valid email';
                          } else if (value.contains('@')) {
                            return null;
                          } else {
                            return 'invalid email adrees';
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      width: double.infinity,
                      child: TextFormField(
                        obscureText: _obscureText,
                        //obscuringCharacter: '.',
                        controller: _passwordController,
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          if (value != null && value.length >= 8) {
                            return null;
                          } else {
                            return 'Password must containe atleast 8 character';
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      width: double.infinity,
                      child: TextFormField(
                        obscureText: _obscureTextTwo,
                        //obscuringCharacter: '.',
                        controller: _conformpasswordController,
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(_obscureTextTwo
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscureTextTwo = !_obscureTextTwo;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          labelText: 'Conform Password',
                        ),
                        validator: (value) {
                          if (value != null && value.length >= 8) {
                            return null;
                          } else {
                            return 'Password must containe atleast 8 character';
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 30),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6)),
                      child: TextButton(
                          onPressed: () {
                            String username = _usernameController.text;
                            String password = _passwordController.text;
                            String conformPassword =
                                _conformpasswordController.text;
                            if (_formKey.currentState!.validate()) {
                              if (username == 'muflih1@gmail.com' &&
                                  password == 'muflih@123' &&
                                  password == conformPassword) {
                                // Credentials are correct, navigate to the next screen
                                Navigator.pushNamed(context, 'LoginScreen');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor: Colors.red,
                                        content: Text(
                                            'Invalid username or password')));
                              }
                            }
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Have an account?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'LoginScreen');
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
