import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isDarkMode = false;
  int _selectedIndex =0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Screen',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Search Screen',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Profile Screen',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Hi Arka Das',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          value: _isDarkMode,
                          onChanged: (value) {
                            setState(() {
                              _isDarkMode = value;
                            });
                          },
                          activeColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      'Find your best games here',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18, // Adjust size as needed
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Colors.grey,
                        ),
                        Text(
                          'Search...',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .start, // Ensures alignment to left
                        children: [
                          Icon(Icons.wallet),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .start, // Align the text to the left
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 2),
                                child: Text(
                                  'Wallet',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                'Find Your Purchases',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left:10,right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                  
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text(
                            'Game 1',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                  
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                  
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text(
                            'Game 2',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                          Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                                      
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text('Game 3',style: TextStyle(fontWeight: FontWeight.w700),)
                        ],
                      ),
                  
                          Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                                      
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text('Game 4',style: TextStyle(fontWeight: FontWeight.w700),)
                        ],
                      ),
                  
                      
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                  
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text(
                            'Game 5',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                  
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                  
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text(
                            'Game 6',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                          Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                                      
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text('Game 7',style: TextStyle(fontWeight: FontWeight.w700),)
                        ],
                      ),
                  
                          Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white60,
                            ),
                                      
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.gps_not_fixed_sharp),
                            ),
                          ),
                  
                          Text('Game 8',style: TextStyle(fontWeight: FontWeight.w700),)
                        ],
                      ),
                  
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set the current tab
        onTap: _onItemTapped, // Call the function when a tab is tapped
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HomePage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Track',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

    );
  }
}
