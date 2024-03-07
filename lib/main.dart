import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        color: Colors.blue,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: "PRESS",
        onPressed: () {
          print("Pressed me");
        },
      ),
    ));
  }

  Snacky(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: "PRESS",
        onPressed: () {
          print("Pressed me");
        },
      ),
    ));
  }

  MyAlertDialogue(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Ayhay Ki korla?"),
            content: Text("Ekhon ki korba?"),
            actions: [
              TextButton(
                  onPressed: () {
                    MySnackbar("Delete mara", context);
                    Navigator.of(context).pop();
                  },
                  child: Text("Ho mama")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Nare Bhai")) //turn the tab off
            ],
          ));
        });
  }

  var MyItems = [
    {
      "img":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Pahar mamu"
    },
    {
      "img":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Ken bro"
    },
    {
      "img":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Shei to"
    },
    {
      "img":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Keno"
    },
    {
      "img":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Bhallage na"
    },
    {
      "img":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Chole na"
    },
    {
      "img":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Kon jinish?"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 40),
        padding: EdgeInsets.all(15),
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(40),
        )));

    return Scaffold(
        appBar: AppBar(
          title: Text("My App sheraa"),
          titleSpacing: 10,
          centerTitle: true,
          toolbarHeight: 70,
          toolbarOpacity: 0.8,
          shadowColor: Colors.blueGrey,
          elevation: 20.0,
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
                onPressed: () {
                  MySnackbar("Terrain ghuru ghuru", context);
                },
                icon: Icon(Icons.terrain_outlined)),
            IconButton(
                onPressed: () {
                  MySnackbar("Oi je radar guree", context);
                },
                icon: Icon(Icons.radar_rounded)),
            IconButton(
                onPressed: () {
                  MySnackbar("Meaw meaww", context);
                },
                icon: Icon(Icons.gite_rounded)),
            IconButton(
                onPressed: () {
                  MySnackbar("Commando mamando", context);
                },
                icon: Icon(Icons.keyboard_command_key_outlined))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.healing_outlined, size: 40),
          onPressed: () {
            MySnackbar("DHUMM DABAOOO", context);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_outlined), label: "SNOW"),
            BottomNavigationBarItem(icon: Icon(Icons.sunny), label: "SUNNY"),
            BottomNavigationBarItem(
                icon: Icon(Icons.wb_cloudy_rounded), label: "CLOUDY"),
          ],
          onTap: (int index) {
            if (index == 0) {
              MySnackbar("Thanda lage guru guru", context);
            }
            if (index == 1) {
              MySnackbar("Gorom Bhallage na", context);
            }
            if (index == 2) {
              MySnackbar("Dhuya dhuya weather", context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black87),
                accountName: Text(
                  "KARMAA",
                  style: TextStyle(
                      color: (Colors.pinkAccent),
                      fontSize: 22,
                      fontStyle: FontStyle.italic),
                ),
                accountEmail: Text("Jeta mon chay",
                    style: TextStyle(
                      color: (Colors.pinkAccent),
                    )),
                currentAccountPicture: Image.network(
                    "https://t4.ftcdn.net/jpg/05/49/86/39/360_F_549863991_6yPKI08MG7JiZX83tMHlhDtd6XLFAMce.jpg"),
                onDetailsPressed: () {
                  MySnackbar("Detail chaap disi hehe!", context);
                },
              ),
              //  child:
              //   child: ListView(
              //     children: [
              //       DrawerHeader(
              //        child: Text(
              //           "KARMAA",
              //           style: TextStyle(
              //             fontStyle: FontStyle.italic,
              //             fontSize: 40,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              //
            ),
            ListTile(
              title: Text("Parlamna"),
              leading: Icon(Icons.switch_access_shortcut_add),
              onTap: () {
                MySnackbar("Ki paro na?", context);
              },
            ),
            ListTile(
              title: Text("Weather"),
              leading: Icon(Icons.wifi_tethering_error_rounded_outlined),
              onTap: () {
                MySnackbar("Shundor shokal!!", context);
              },
            ),
            ListTile(
              title: Text("Mera Rubber"),
              leading: Icon(Icons.safety_check),
              onTap: () {
                MySnackbar("Amar rubber ta dekhso?", context);
              },
            ),
            ListTile(
              title: Text("Jhuki"),
              leading: Icon(Icons.coffee_outlined),
              onTap: () {
                MySnackbar("Etar mane ki ami jani na.", context);
              },
            ),
          ]),
        ),
        endDrawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black87),
                accountName: Text(
                  "KARMAA",
                  style: TextStyle(
                      color: (Colors.pinkAccent),
                      fontSize: 22,
                      fontStyle: FontStyle.italic),
                ),
                accountEmail: Text("Jeta mon chay",
                    style: TextStyle(
                      color: (Colors.pinkAccent),
                    )),
                currentAccountPicture: Image.network(
                    "https://t4.ftcdn.net/jpg/05/49/86/39/360_F_549863991_6yPKI08MG7JiZX83tMHlhDtd6XLFAMce.jpg"),
                onDetailsPressed: () {
                  MySnackbar("Detail chaap disi hehe!", context);
                },
              ),
              //  child:
              //   child: ListView(
              //     children: [
              //       DrawerHeader(
              //        child: Text(
              //           "KARMAA",
              //           style: TextStyle(
              //             fontStyle: FontStyle.italic,
              //             fontSize: 40,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              //
            ),
            ListTile(
              title: Text("Parlamna"),
              leading: Icon(Icons.switch_access_shortcut_add),
              onTap: () {
                MySnackbar("Ki paro na?", context);
              },
            ),
            ListTile(
              title: Text("Weather"),
              leading: Icon(Icons.wifi_tethering_error_rounded_outlined),
              onTap: () {
                MySnackbar("Shundor shokal!!", context);
              },
            ),
            ListTile(
              title: Text("Mera Rubber"),
              leading: Icon(Icons.safety_check),
              onTap: () {
                MySnackbar("Amar rubber ta dekhso?", context);
              },
            ),
            ListTile(
              title: Text("Jhuki"),
              leading: Icon(Icons.coffee_outlined),
              onTap: () {
                MySnackbar("Etar mane ki ami jani na.", context);
              },
            ),
          ]),
        ),
        body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Snacky(context, MyItems[index]['title']);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 500,
                child: Image.network(
                  MyItems[index]["img"]!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        )
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Padding(
        //         padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
        //         child: TextField(
        //           decoration: InputDecoration(
        //               labelText: "Shurur Naam", border: OutlineInputBorder()),
        //         )),
        //     Padding(
        //         padding: EdgeInsets.all(10),
        //         child: TextField(
        //           decoration: InputDecoration(
        //               labelText: "Shesher Naam", border: OutlineInputBorder()),
        //         )),
        //     Padding(
        //         padding: EdgeInsets.all(10),
        //         child: TextField(
        //           decoration: InputDecoration(
        //               labelText: "Mail Jekhane Pathay",
        //               border: OutlineInputBorder()),
        //         )),
        //     Padding(
        //         padding: EdgeInsets.all(10),
        //         child: ElevatedButton(
        //           onPressed: () {},
        //           child: Text("DHUM Dabao"),
        //           style: buttonStyle,
        //         ))
        //   ],
        // )
        // Center(
        //   child: ElevatedButton(
        //     child: Text("Click Me"),
        //     onPressed: () {
        //       MyAlertDialogue(context);
        //     },
        //   ),
        // )
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     TextButton(
        //         onPressed: () {
        //           MySnackbar("I Am Bhutan", context);
        //         },
        //         child: Text("Button")),
        //     ElevatedButton(
        //       onPressed: () {
        //         MySnackbar("I Am Bhutan", context);
        //       },
        //       child: Text("Button"),
        //       style: buttonStyle,
        //     ),
        //     OutlinedButton(
        //         onPressed: () {
        //           MySnackbar("I Am Bhutan", context);
        //         },
        //         child: Text("Button")),
        //   ],
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Container(
        //       height: 100,
        //       width: 100,
        //       child: Image.network(
        //           "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       child: Image.network(
        //           "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       child: Image.network(
        //           "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        //     )
        //   ],
        // )

        //Container(
        //   height: 250,
        //   width: 250,
        //   alignment: Alignment.topCenter,
        //   margin: EdgeInsets.all(30),
        //   padding: EdgeInsets.all(40),
        //   decoration: BoxDecoration(
        //       color: Colors.pinkAccent,
        //       border: Border.all(color: Colors.black87, width: 6)),
        //   child: Image.network(
        //       "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        // )
        // Center(
        //   child: Image.network(
        //       "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        // )
        // drawer:() ,
        // endDrawer: (),
        // bottomNavigationBar: (),
        // floatingActionButton: (),
        //
        );
  }
}
