import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  String dropdownvalue = 'English';

  var items = [
    'English',
    'Malayalam',
    'Tamil',
    'Hindi',
    'Kannada',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.elliptical(500, 200))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 150),
            child: Image.network(
              "https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png",
              height: 90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280, left: 218),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 290, left: 225),
            child: Icon(Icons.edit_sharp),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 75),
            child: Text(
              'Shivam Kumar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 390, left: 95),
            child: Text('shivam@kumar | +01 234 567 89'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 420, left: 20),
            child: Container(
              height: 170,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 1.3,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.edit_document),
                    title: Text("Edit profile information"),
      
                    //     trailing: Text(
                    // "ON",
                    // style: TextStyle(
                    //     color: Colors.blue[400],
                    // fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text("Notifications"),
                    trailing: Text(
                      "ON",
                      style: TextStyle(
                          color: Colors.blue[400], fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.language_rounded),
                    title: Text("Language"),
                    trailing: DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 20),
            child: Container(
              height: 120,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 1.3,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(Icons.security),
                      title: Text("Security"),
                      
                    ),
                    ListTile( leading: Icon(Icons.theater_comedy),
                     title: Text("Theme"),
                      trailing: Text(
                        "light mode",
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontWeight: FontWeight.bold))
      
      )
      
                  ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 730, left: 20),
            child: Container(height: 160,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 1.3,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: SingleChildScrollView(
                          child: Column(children: [
                            ListTile(
                                              leading: Icon(Icons.support_agent_outlined),
                                              title: Text("Help & support"),
                                            ),
                                             ListTile(
                                              leading: Icon(Icons.chat),
                                              title: Text("Contact us"),
                                            ),
                                             ListTile(
                                              leading: Icon(Icons.lock),
                                              title: Text("privecy policy"),
                                            ),
                              
                              
                              
                          ],),
                        ),
                        ),
      
          )
        ],
      ),
    );
  }
}
