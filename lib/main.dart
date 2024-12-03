import 'package:flutter/material.dart';
void main(){
  runApp(MyStack());
}

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.blueGrey.shade300,
                    ),
                    Positioned(child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(""" Explore the world! By \n Travelling""",
                        style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold) ,),
                    )),
                    Positioned(top: 140,
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 50,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            )
                        )
                    ),
                    Positioned(top: 155,left: 10,
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 20,),
                                Text("Where wanna you go ?"),
                                SizedBox(width: 160,),
                                Icon(Icons.display_settings)
                              ],
                            )
                        )
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Popular Locations",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width:10),
                      buildStack("assets/INDIA.jpg","India"),
                      SizedBox(width: 20),
                      buildStack("assets/MASCOW.jpg","Mascow"),
                      SizedBox(width: 20),
                      buildStack("assets/USA.jpg","USA"),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Recommended",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildContainer("https://tse3.mm.bing.net/th?id=OIP.TrHT-FIHbUfat6SqNkKsVgHaE8&pid=Api&P=0&h=180","\$120","Carinthia Lake see Breakfast... ","Private room/4beds",250,450,400),
                      SizedBox(width: 10,),
                      buildContainer("https://tse4.mm.bing.net/th?id=OIP.8exDLwk-7-V-HdFN2GMRqQHaE8&pid=Api&P=0&h=180","\$400","Carinthia Lake see Breakfast..","Private room/4beds",250,450,400),
                      SizedBox(width: 10,),

                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(55),
                    child: Stack(
                        children:[ Container(
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(image: NetworkImage("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR4sBal4PVxnwrl98uLPgy8NgAv25JEM2LlZeNbA_8S4G16hatz "),fit: BoxFit.cover)
                          ),
                        ),
                          Positioned(top:40,left:20,
                              child: Text("Hosting fee for \nas low as 1%",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),

                          SizedBox(height:20),
                          Positioned(
                              top: 100,
                              // right: 60,
                              left: 20,
                              bottom:110,

                              child:  Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min, // Ensures the column takes minimal vertical space
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Button action
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal:20,
                                          vertical: 2,
                                        ),
                                      ),

                                      child: Text(
                                        "Become a Host",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              )


                          )
                        ]

                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Most Viewed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),

                buildContainer("https://tse3.mm.bing.net/th?id=OIP.TrHT-FIHbUfat6SqNkKsVgHaE8&pid=Api&P=0&h=180","\$120","Carinthia Lake see Breakfst... ","Private room/4beds",250,400,400),
                SizedBox(height: 20,),
                buildContainer("https://tse3.mm.bing.net/th?id=OIP.IhY3hB-AdaubNx2ep03J7wHaEK&pid=Api&P=0&h=180","\$300","Carinthia Lake see Breakfast lorem ","private room/4beds",250,400,400),
                SizedBox(height: 20,),
                buildContainer("https://tse3.mm.bing.net/th?id=OIP._2ou8Ozsw1gv4qjO7rPr0wHaE8&pid=Api&P=0&h=180","\$240","Carinthia Lake see Breakfastlorem ","Private room/4beds",250,400,400),


                 ],
                ),

            )

        ),
      );

  }
  Stack buildStack(img,txt) {
    return Stack(
      children: [

        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image:AssetImage(img),fit: BoxFit.cover)
          ),
        ),

        Positioned(top: 210,left:45,right: 20,
            child: Text(txt,style: TextStyle(fontSize:20,color: Colors.white,),)),
      ],
    );
  }
}

  Container buildContainer(img,price,hotelName,about,h,w,cw) {
    return
      Container(
      width: cw,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 5,
                spreadRadius: 5)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              img,
              height: h,//120
              width: w ,//220,
              fit: BoxFit.cover,

            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(hotelName,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      Spacer(),
                      Icon(Icons.star, color: Colors.red, size: 15),
                      SizedBox(width: 5),
                      Text(
                        ' 5 ',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    about,
                    maxLines: 2,
                    textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 13,
                        height: 1,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                      text:  TextSpan(
                          text: price,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: '  /night ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black45),
                            )
                          ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
