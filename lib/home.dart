import 'package:flutter/material.dart';
int count = 3;
class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
setState(() {
  count ++;
});
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
body: SizedBox(
  height: MediaQuery.of(context).size.height*0.5,
  width: MediaQuery.of(context).size.height*0.5,
  child:   Column(
  
    mainAxisAlignment: MainAxisAlignment.center,
  
    crossAxisAlignment:CrossAxisAlignment.center,
  
    children: [
  
    const Text('Hello in my first app on my new laptop', style: TextStyle(
      fontSize: 20
    ),),
  SizedBox(height: 20,),
  Container(
     height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(25)
    ),
    child: FittedBox(
      fit: BoxFit.contain,
     child: Text("$count"), 
    ),
  ),
  FlatButton(onPressed: (){
    showDialog(context: context, builder: (context){
      return AlertDialog(

      );
    });
  }, child: Text('Click here for show dialog'))
  
  ]),
),
    );
  }
}