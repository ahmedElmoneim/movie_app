import 'package:flutter/material.dart';
import 'package:movie_app/home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image:DecorationImage(
            image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("DP Cineplex",
            style:TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            ),
            SizedBox(height: 30,),
            Text("Grap your Tickets now",style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xFFF7D300).withOpacity(.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
