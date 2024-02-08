import 'package:flutter/material.dart';

class sitting extends StatefulWidget {
  const sitting({super.key});

  @override
  State<sitting> createState() => _sittingState();
}

class _sittingState extends State<sitting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Universal Scanner',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffff6c22),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Color(0xffff6c22),
                  ),
                ),
                Icon(
                  Icons.account_circle,
                  size: 30.0,
                  color: Color(0xffff6c22),
                )
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 40.0,
                color: Color(0xffff6c22),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            GestureDetector(
              onTap: () {

              },
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: () {

              },
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
