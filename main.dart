import 'package:bmi_fourth/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: splash_screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

var weightcontroller=TextEditingController();
var heightcontroller=TextEditingController();
var result=" ";
var bgcolor=Colors.indigo.shade100;




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       title: Text('your bmi'),
      ),
      body:Container(
        width:double.infinity,
        height:double.infinity,
        color: bgcolor,
        child:Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('bmi',style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
            SizedBox(
              height:50,
            ),
            TextField(
              decoration:InputDecoration(

                hintText: 'weight in kg',
                prefixIcon: Icon(Icons.line_weight_rounded),
                  label: Text('Weight',style:TextStyle(fontSize:23,color: Colors.black)),



              ),
              keyboardType: TextInputType.number,
              controller: weightcontroller,


              ),
             SizedBox(
               height:23,
             ),
            TextField(
              decoration:InputDecoration(

                hintText: 'height in cm',
                prefixIcon: Icon(Icons.height_rounded),
                label: Text('Height',style:TextStyle(fontSize:23,color: Colors.black))



              ),
              keyboardType: TextInputType.number,
              controller: heightcontroller,


            ),
            SizedBox(
              height:11,
            ),
            ElevatedButton(onPressed:(){

              var weight=int.parse (weightcontroller.text.toString());
              var height=int.parse(heightcontroller.text.toString());
              var h=heightcontroller.text.toString();
              var w=weightcontroller.text.toString();
              result=(weight/(height*height)).toString();
              var he=height/100;
              var bmi=weight/(he*he);
              var msg="";
              if(h !=" "&&w!=" ") {

                  if (bmi >=25&&bmi<=35) {
                    bgcolor=
                    Colors.amberAccent;
                    msg = " overweight weight!!";
                  }
                  else if (bmi < 18.5) {
                    bgcolor=Colors.blueAccent;
                    msg = "oops!!underWeight";

                  }
                  else if(bmi>=18.5&&bmi<25){
                    bgcolor=
                    Colors.pinkAccent;
                    msg = " normal weight!!";
                  }
                  else{
                    bgcolor=Colors.red;
                    msg="obesity";
                  }

                  setState(() {


                    result="$msg \nYour bmi is: $bmi";});


              }

              else{
                setState(() {
                  result=" something went wrong!!";
                });

              }
              
            } ,
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade200,
                foregroundColor: Colors.black,
              ),child: Text("calculate",style:TextStyle(fontSize: 20)),
            ),
            SizedBox(
              height:23,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(result,style:TextStyle(fontSize: 20)),


              ],

            ),






          ],
        ),)


      )
    );
  }
}
