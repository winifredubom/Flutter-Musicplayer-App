
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF303151).withOpacity(0.6),
            const Color(0xFF303151).withOpacity(0.9)
          ] ,)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding:const  EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(CupertinoIcons.back,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        //Navigator.pop(context);
                      },
                      child: Icon(Icons.more_vert,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    )
                  ],
                ),),
                SizedBox(height: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("Images/imagineDragons.jpg",
                  width: w*0.7,
                  height: h*0.4,
                  fit: BoxFit.cover),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Text("Imagine Dragons",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 8,),
                    Text("Singer Name",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18
                    ),)
                  ],
                ),
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 170,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Play All",
                          style: TextStyle(
                            color: Color(0xFF30314D),
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.play_arrow_rounded,
                          color: Color(0xFF30314D),
                          size: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 170,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xFF30314D),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Shuffle",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w500
                            ),),
                          SizedBox(width: 10,),
                          Icon(Icons.shuffle,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  )
                ],),
                SizedBox(height: 20,),
                for(int i = 1; i< 20; i++)
                  Container(
                    margin:  const EdgeInsets.only(top: 15, right: 12, left: 5),
                    padding:  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFF30314D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text(
                          i.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                        const SizedBox(width: 25,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, "musicPage");
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Imagine Dragons - Believer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),),
                              Row(
                                children: [
                                  Text("Bass",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 9,),
                                  Text(" -",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 25,
                                    ),),
                                  SizedBox(width: 5,),
                                  Text("04:30",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontWeight:FontWeight.w500
                                    ),)
                                ],
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child:
                          const Icon(Icons.play_arrow,
                            size: 25,
                            color: Color(0xFF31314F),),
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
