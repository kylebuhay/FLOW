///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0x003a57e8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Settings",
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
        currentIndex: 0,
        elevation: 8,
        iconSize: 21,
        selectedItemColor: Color(0xff47465d),
        unselectedItemColor: Color(0xff9e9e9e),
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {},
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          ///***If you have exported images you must have to copy those images in assets/images directory.
          Image(
            image: AssetImage("assets/flow_thoughts-pana-1.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "About Us",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffcbd8df),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                            child: Icon(
                              Icons.account_circle_outlined,
                              color: Color(0xff212435),
                              size: 20,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "About Flow",
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 10,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                              color: Color(0xff212435),
                              iconSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(
                        "Device & Features",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    padding: EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffcbd8df),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                          child: Icon(
                            Icons.vibration,
                            color: Color(0xff212435),
                            size: 20,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Detect Shake",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 10,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(0),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0x00000000),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.zero,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                            color: Color(0xff212435),
                            iconSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffcbd8df),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                            child: Icon(
                              Icons.cancel,
                              color: Color(0xff212435),
                              size: 20,
                            ),
                          ),
                          Text(
                            "Block Other Notifications",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 10,
                              color: Color(0xff000000),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              width: 68,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0x00000000),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                              color: Color(0xff212435),
                              iconSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffcbd8df),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                            child: Icon(
                              Icons.notifications,
                              color: Color(0xff212435),
                              size: 20,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Allow App Notifications",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 10,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.zero,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                              color: Color(0xff212435),
                              iconSize: 10,
                            ),
                          ),
                        ],
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
