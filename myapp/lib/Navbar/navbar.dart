import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 1200){
          return DesktopNavbar();
        }else if(constraints.maxWidth > 800 && constraints.maxWidth < 1200){
          return DesktopNavbar();
        }else{
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  // const DesktopNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text("RetroPortal Studio", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Row(children: <Widget>[
            Text("Home", style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            Text("About Us", style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            Text("Portfolio", style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            MaterialButton(
              child: Text("Get Started", style: TextStyle(color: Colors.white),),
              onPressed: (){
                //get started with something...
              }, 
              color: Colors.pink, 
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              )
          ],
          )
        ],
        )
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("RetroPortal Studio", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Text("Home", style: TextStyle(color: Colors.white),),
                SizedBox(width: 30,),
                Text("About Us", style: TextStyle(color: Colors.white),),
                SizedBox(width: 30,),
                Text("Portfolio", style: TextStyle(color: Colors.white),),
                SizedBox(width: 30,),
                MaterialButton(
                  hoverColor: Colors.blue,
                  hoverElevation: 10.0,
                  child: Text("Get Started", style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    //get started with something...
                  }, 
                  color: Colors.pink, 
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  )
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}