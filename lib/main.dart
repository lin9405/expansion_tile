
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}


enum SingingCharacter { lafayette, jefferson, ll }
enum SingingCharacter1 { lafayette, jefferson, ll }



class _MyAppState extends State<MyApp> {
  bool _isExpanded = false;
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _check1 = false;
  bool _check2= false;
  bool _check3 = false;
  bool _check4 = false;
  bool _check5 = false;

 double timeDilation = 1.0;




// In the State of a stateful widget:
  SingingCharacter _character = SingingCharacter.lafayette;
  SingingCharacter1 _character1 = SingingCharacter1.lafayette;



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test"),
        ),
        body: new ListView(

          children: <Widget>[

            new ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _isExpanded = !isExpanded;
                });
              },
              children: <ExpansionPanel>[
                new ExpansionPanel(


                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(

                      leading:Text('Location', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
                      title: Text('select location',textAlign: TextAlign.center,),
                   //   subtitle:Text('select location') ,
                     // trailing: Text('adffgg'),
                    );
                  },
                  body: new Container(
                    padding: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
                    child:  new Column(
                      children: <Widget>[

                        new RadioListTile<SingingCharacter1>(
                          title: const Text('Seoul',style: TextStyle(fontSize: 15.0),),
                          value: SingingCharacter1.lafayette,
                          groupValue: _character1,
                          onChanged: (SingingCharacter1 value) { setState(() { _character1 = value; }); },
                        ),

                        new RadioListTile<SingingCharacter1>(
                          title: const Text('Busan',style: TextStyle(fontSize: 15.0),),
                          value: SingingCharacter1.jefferson,
                          groupValue: _character1,
                          onChanged: (SingingCharacter1 value) { setState(() { _character1 = value; }); },
                        ),
                        new RadioListTile<SingingCharacter1>(
                          title: const Text('Daegu',style: TextStyle(fontSize: 15.0),),
                          value: SingingCharacter1.ll,
                          groupValue: _character1,
                          onChanged: (SingingCharacter1 value) { setState(() { _character1 = value; }); },
                        ),


                      ],
                    ),

                  ),

                  isExpanded: _isExpanded,
                ),
              ],
            ),

            new ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded1) {
                setState(() {
                  _isExpanded1 = !isExpanded1;
                });
              },
              children: <ExpansionPanel>[
                new ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                   return ListTile(

                      leading:Text('Room', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
                      title: Text('select room',textAlign: TextAlign.center,),
                      //   subtitle:Text('select location') ,
                      // trailing: Text('adffgg'),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
                    child:  new Column(
                      children: <Widget>[
                        new RadioListTile<SingingCharacter>(
                          title: const Text('Single',style: TextStyle(fontSize: 15.0),),
                          value: SingingCharacter.lafayette,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
                        ),
                        new RadioListTile<SingingCharacter>(
                          title: const Text('Double',style: TextStyle(fontSize: 15.0),),
                          value: SingingCharacter.jefferson,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
                        ),
                        new RadioListTile<SingingCharacter>(
                          title: const Text('Family',style: TextStyle(fontSize: 15.0),),
                          value: SingingCharacter.ll,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
                        ),


                      ],
                    ),
                  ),



                  isExpanded: _isExpanded1,
                ),
              ],
            ),


            new ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded2) {
                setState(() {
                  _isExpanded2 = !isExpanded2;
                });
              },
              children: <ExpansionPanel>[
                new ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(

                      leading:Text('Class', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
                      title: Text('             select hotel classes',textAlign: TextAlign.center,),
                      //   subtitle:Text('select location') ,
                      // trailing: Text('adffgg'),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.fromLTRB(92.0, 0.0, 0.0, 0.0),
                    child:  new Column(
                      children: <Widget>[
                        
                        new Column(
                          children: <Widget>[
                            Row(
                          children: <Widget>[

                            new Checkbox(
                              value: _check1 ,
                              onChanged: (bool value) {
                                setState(() { _check1 =value; });
                              },
                            ),
                            Text('⭐', style: TextStyle(fontSize: 22.0))
                          ],
                            ),
                            Row(
                              children: <Widget>[
                                new Checkbox(
                                  value: _check2 ,
                                  onChanged: (bool value) {
                                    setState(() { _check2 =value; });
                                  },
                                ),
                                Text('⭐⭐', style: TextStyle(fontSize: 22.0))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                new Checkbox(
                                  value: _check3 ,
                                  onChanged: (bool value) {
                                    setState(() { _check3 =value; });
                                  },
                                ),
                                Text('⭐⭐⭐', style: TextStyle(fontSize: 22.0))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                 new Checkbox(
                                  value: _check4 ,
                                  onChanged: (bool value) {
                                    setState(() { _check4 =value; });
                                  },
                                ),
                                Text('⭐⭐⭐⭐', style: TextStyle(fontSize: 22.0),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                new Checkbox(
                                  value: _check5 ,
                                  onChanged: (bool value) {
                                    setState(() { _check5 =value; });
                                  },
                                ),
                                Text('⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 22.0))
                              ],
                            ),

                          ],
                        )





                      ],
                    ),
                  ),



                  isExpanded: _isExpanded2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

