import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Universal Scanner',
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/info');
                  },
                  child: Icon(
                    Icons.account_circle,
                    size: 30.0,
                    color: Color(0xffff6c22),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                child: Text('Recent',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                      List.generate(20, (index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1), // Shadow color with opacity
                              spreadRadius: 2, // Spread radius
                              blurRadius: 20, // Blur radius
                              offset: Offset(1, 3), // Offset in the x, y directions
                            ),
                          ],
                        ),
                        width: 200,
                        height: 170,
                        margin: EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            // Image
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 70, // Adjust this value to control the height of the image
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/Res122.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // Text Container
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              top: 85, // Adjust this value to control the height of the text container
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8.0 , 30.0,8.0,0),
                                child: Container(
                                  color: Colors.transparent, // Set the background color of the text container
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Scan 01:11:2020 03:57:06',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Today',
                                            style: TextStyle(
                                                color: Colors.grey
                                            ),
                                          ),
                                          Text('1 page',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                child: Text('Documents',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: List.generate(
                      10,
                          (index) => Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10.0,10.0,30.0,10.0),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),

                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 20,
                                  offset: Offset(1, 3),
                                ),
                              ],
                            ),
                            width: 400,
                            height: 90,
                            margin: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Positioned(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 12.0 , left: 20.0,right: 12.0,bottom: 12.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.3),
                                                spreadRadius: 0.5,
                                                blurRadius: 10,
                                                offset: Offset(3, 3),
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            'assets/Res122.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 10.0,),
                                Container(
                                  height: 80,
                                  width: 260,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Scan 01:11:2020 03:57:06',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 15.0,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Today',
                                              style: TextStyle(
                                                  color: Colors.grey
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15.0),
                                              child: Text(
                                                '1 page',
                                                style: TextStyle(
                                                    color: Colors.grey[800],
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/loading');
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.home,
                  size: 30.0,
                  color: Color(0xffff6c22),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  _showScanMenu(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        'Scan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffff6c22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Adjust the radius as needed
                  ),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sitting');
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.settings,
                  size: 30.0,
                  color: Color(0xffff6c22),
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  void _showScanMenu(BuildContext context) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(50, 550, 50, 100),
      items: [
        PopupMenuItem(
          onTap: (){

          },
          child:
          ListTile(
            leading: Icon(Icons.camera ,
              color: Color(0xffff6c22),
            ),
            title: Text('Camera',
              style: TextStyle(
                color: Color(0xffff6c22),
              ),
            ),
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.file_copy ,
              color: Color(0xffff6c22),
            ),
            title: Text('File' ,
              style: TextStyle(
                color: Color(0xffff6c22),
              ),
            ),
          ),
        ),
      ],
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.black,
      constraints: BoxConstraints(minWidth: 1000), // Set max width as needed
    );
  }
}
