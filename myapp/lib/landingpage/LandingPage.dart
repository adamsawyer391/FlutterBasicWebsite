import 'package:flutter/material.dart';
// import 'package:myapp/Navbar/navbar.dart';

class LandingPage extends StatelessWidget {
  
  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Website \nDevelopers", style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 50.0,
              color: Colors.white
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("We have taken each and every project handed over to us as a challenge, which helped us achieve a high project success rate.",
              style: TextStyle(color: Colors.white, fontSize: 16.0)),
            ),
            MaterialButton(
              onPressed: (){

            }, 
            elevation: 30.0,
            highlightElevation: 10.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Text("Our Packages", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            color: Colors.white, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)
              )
              )
              )
          ],
        ),
        
        ),
        Image.asset("assets/images/logo.png", width: width,)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth > 800){
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width/2),);
      }else{
        return Column(
          children: pageChildren(constraints.biggest.width)
          );
      }
    });
  }
}