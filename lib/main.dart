import 'package:neumorphic/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:toast/toast.dart';
void main() {
  runApp(RegularMatch());
}


class RegularMatch extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enter the details',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xEAF1EA)),
      home: MyHomePage(title: 'ENTER THE MATCH DETAILS'),
    );
  }
}



class MyHomePage extends StatefulWidget
{
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  String nameA,nameB,players,overs;
  int battingTeam;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color myColor1 = Color(0xFFEB5056);
    Color myColor = Color(0xFF6D9773);
    Color background = Color(0xEAF1EA);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.black,fontSize: 18),),
        centerTitle: false,
        elevation: 0,
        backgroundColor: background,
      ),

      body: Center(
        child: ListView(
          children: <Widget>[

            //Card 1
            Container(
              width: 50,
              height: 150,
              margin: EdgeInsets.only(top: 25,left: 30,right: 30),

              child: Card(
                color: myColor,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Colors.black.withOpacity(1.0),
                    width: 0,
                  ),
                ),

                //Label 1
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Center(
                        child: Text('Enter Team A Name',
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),
                        ),
                      ),
                    ),

                    //TextField 1
                    Container(
                      height: 45,
                      width: 250,
                      margin: EdgeInsets.only(top: 10),
                      child: NeuTextField(
                            controller:myController1,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Write',
                            ),
                          ),


                    ),],
                ),
              ),
            ),

            //Card 2
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(top: 25,left: 30,right: 30),
              child: Card(
                color: myColor,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Colors.black.withOpacity(1.0),
                    width: 0,
                  ),
                ),

                //Label 2
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Center(child: Text('Enter Team B Name', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),
                      )),
                    ),

                    //TextField 2
                    Container(
                      height: 45,
                      width: 250,
                      margin: EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: myController2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                              borderRadius: BorderRadius.all(Radius.circular(90.0)),
                              borderSide: BorderSide(color: Colors.white24)
                            //borderSide: const BorderSide(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //Card 3
            Container(
              width: 350,
              height: 180,
              margin: EdgeInsets.only(top: 25,left: 30,right: 30),
              child: Card(
                color: myColor,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Colors.black.withOpacity(1.0),
                    width: 0,
                  ),
                ),

                //Label 3
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Enter No. of \nPlayers", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),
                            ),
                            Container(
                              height: 45,
                              width: 150,
                              margin: EdgeInsets.only(top: 5),

                              //TextField 3
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: myController3,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                      borderSide: BorderSide(color: Colors.white24)
                                    //borderSide: const BorderSide(),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    //Label 4
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Enter No. of \nOvers",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white)),
                            Container(
                              height: 45,
                              width: 150,
                              //color: Colors.transparent,
                              margin: EdgeInsets.only(top: 0),

                              //TextField 4
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: myController4,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  //fillColor: Colors.white.withOpacity(0.6),
                                  border: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                      borderSide: BorderSide(color: Colors.white)
                                    //borderSide: const BorderSide(),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Label 5
            Container(
              padding: EdgeInsets.only(top: 35,left: 35,right: 30,bottom: 30),
              child: Text("Choose Batting Team",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
            ),

            //For Toggle Button and Circular Button
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 15,right: 30),
                ),

                //Shadow for toggle button
                Container(
                  decoration: BoxDecoration(
                    //shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0.5, 2.0),
                          blurRadius: 11.0,
                          spreadRadius: 0.0,
                        ),
                      ]
                  ),

                  //Creating toggle switch
                  child: ToggleSwitch(
                    minHeight: 70,
                    minWidth: 90.0,
                    cornerRadius: 10.0,
                    activeBgColor: Colors.white,
                    activeFgColor: Colors.black,
                    inactiveBgColor: myColor1,
                    inactiveFgColor: Colors.black,
                    labels: ['TEAM A', 'TEAM B'],
                    //icons: [FontAwesomeIcons.check, FontAwesomeIcons.times],
                    onToggle: (index) // Team A-0 and Team B-1
                    {
                      battingTeam=index;
                      print('switched to: $index');
                    },
                  ),
                ),

                //Circle shape button
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0.5, 2.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ]
                  ),
                  margin: EdgeInsets.only(left:70),
                  child: ClipOval(
                    child: Material(
                      color: myColor1, // button color
                      child: InkWell(
                        splashColor: Colors.green, // inkwell color
                        child: SizedBox(width: 62, height: 62, child: Icon(Icons.arrow_forward_ios_sharp)),
                        onTap: () {
                          nameA=myController1.text;
                          nameB=myController2.text;
                          players=myController3.text;
                          overs=myController4.text;
                          if(nameA!='' && nameB!='' && players!='' && overs!='')
                          {
                            //Redirect to score entering page
                            Toast.show(nameA, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                          }
                          else
                          {
                            Toast.show("Please fill all details", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                          }
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
