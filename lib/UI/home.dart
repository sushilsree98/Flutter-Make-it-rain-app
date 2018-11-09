import 'package:flutter/material.dart';

class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new homestate();

  }

}

class homestate extends State<home>{

  int _money_counter = 0;
  var _x ="Tap it";
  var _y = Colors.grey;
  var _money_color = Colors.greenAccent;
var temp;


  void _money() {
    setState(() {
      _money_counter = _money_counter + 100;
      if(_money_counter>1500)
      {

        _x = "wow";
        _y = Colors.pink;

      }
      else if(1000<_money_counter)
        {
          _money_color = Colors.red as MaterialAccentColor;

        }


    });
  }

  @override
  Widget build(BuildContext context) {
return new Scaffold(
  appBar: AppBar(
    title: Text("Make it rain!"),
    backgroundColor: Colors.lightGreen,

  ),
body: new Container(
  child: new Column(
    children: <Widget>[
      new Center(
        child: Text("$_x",
      style: TextStyle(fontWeight: FontWeight.w700,color:_y,fontSize: 32.3),
      ),),
      new Expanded(
        child: new Center(
         child: Text("\$ $_money_counter",
      style: TextStyle(fontSize: 32.0,
          color: _money_color,
          fontWeight: FontWeight.w900),
         ),),),

      new Expanded(child:
          new Center(
          child: new FlatButton(
            color: Colors.lightGreen,
              onPressed: _money,
              child: Text("Make it rain!",
          style: TextStyle(fontSize: 23.1,
          fontWeight: FontWeight.w800,
          ),
          )),
          )
      )
    ],
  ),
),


) ; }

}


