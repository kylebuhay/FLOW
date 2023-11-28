import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'SettingsPage.dart'; // Import your SettingsPage
import 'TimerPage.dart';
import 'AddTask.dart';
import 'EditTask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0x003a57e8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Your To-Do's",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 25,
            color: Color(0xff000000),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'To-Do List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Color(0xff1e1e1e),
        currentIndex: 1,
        elevation: 8,
        iconSize: 21,
        selectedItemColor: Color(0xff47465d),
        unselectedItemColor: Color(0xff9e9e9e),
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          // Handle bottom navigation tap
          if (index == 2) {
            // Index 2 corresponds to the Settings icon
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          }else if(index == 0){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TimerPage()),
            );
          }
        },
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Image(
            image: const AssetImage("assets/resting_pana1.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              padding: EdgeInsets.all(0),
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xf99ac5d3),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                    color: Color(0xff000000), width: 1),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      "Create User Flow Diagram",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xff272a2f),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          Alert(
                            context: context,
                            // type: AlertType.warning,
                            title: "Modify Task",
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Add",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AddTask()),
                                  );
                                },
                                color: Color.fromRGBO(51, 149, 26, 1.0),
                              ),
                              DialogButton(
                                child: Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => EditTask()),
                                  );
                                },
                                color: Color.fromRGBO(149, 26, 26, 1.0),
                              )
                            ],
                          ).show();
                        },
                        color: const Color(0xffffffff),
                        iconSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
