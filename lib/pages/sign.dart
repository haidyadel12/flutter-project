import 'package:flutter/material.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 0.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 40.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff6c22),
                    ),
                  ),
                ),
                SizedBox(height: 100.0),
                Column(
                  children: [
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Color(0xffff6c22),
                          fontWeight: FontWeight.bold,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Color(0xffff6c22),
                          fontWeight: FontWeight.bold,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                PasswordField(),
                SizedBox(height: 30.0),
                coPasswordField(),
                SizedBox(height: 100.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Color(0xffff6c22),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Color(0xffff6c22),
          fontWeight: FontWeight.bold,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Color(0xffff6c22),
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}

class coPasswordField extends StatefulWidget {
  @override
  _coPasswordFieldState createState() => _coPasswordFieldState();
}

class _coPasswordFieldState extends State<coPasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        labelStyle: TextStyle(
          color: Color(0xffff6c22),
          fontWeight: FontWeight.bold,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Color(0xffff6c22),
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}