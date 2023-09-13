
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
List movies = [
  "Ant Man 3",
  "Aquaman 2",
  "GOTG Vol 3",
  "Shazam 2",
];
List movies2 = [
  "GOTO Vol 3",
  "Shazam 2",
  "Aquaman 2",
  "Ant Man 3",



];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    leading:  Icon(Icons.sort,size: 32,),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      "DP Cineplex",
      style: TextStyle(
        fontSize: 24,
      ),
    ),
    centerTitle: true,
    actions: [
      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(Icons.search, size:28,),
          SizedBox(width: 5,),
          Icon(Icons.filter_alt_outlined, size:28,),



        ],
      ),
      ),
    ],

  ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Playing Now",style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Text("View All",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFFF7D300),
                    ),),
                  ),
                ],
              ),

            ),
            SizedBox(height: 390,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){
                  return Padding(padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("images/${movies[index]}.jpg",
                          height: 280,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.only(left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text(movies[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Color(0xFFF7D300),),
                              Text("4.5",
                              style: TextStyle(
                                fontSize:16,
                                color: Color(0xFFF7D300)
                              ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            
                          )
                        ],
                      ),)
                    ],
                  ),);
                })
            ),

            
          ],
        ),
      ),
    );
  }
}
