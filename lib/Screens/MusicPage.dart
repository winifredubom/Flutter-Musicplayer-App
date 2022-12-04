import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      decoration: const  BoxDecoration(
        image: DecorationImage(
            image: AssetImage("Images/imagineDragons.jpg",),
            fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                   Colors.black.withOpacity(0.3),
                   Colors.black.withOpacity(0.5),
                  Color(0xFF31314F).withOpacity(1),
                  Color(0xFF31314F).withOpacity(1)
                ] ,)
          ),
          child:Container(
            width: w,
            height: h,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 60, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(CupertinoIcons.back,
                      color: Colors.white,
                      size: 30,),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.more_vert,
                      color: Colors.white,
                          size: 30,),
                    )
                  ],
                ),),
                const Spacer(),
                Container(
                  height: h/2.5,
                  child:Column(
                    children: [
                      SizedBox(height: 40,),
                      Padding(padding: EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Imagine Dragons",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                ),),
                              SizedBox(height: 10,),
                              Text("Singer Name",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                          Icon(Icons.favorite,
                          color: Colors.redAccent,
                          size: 35,)
                        ],
                      ),),
                      Column(
                        children: [
                          Slider(
                              value: 40,
                              onChanged: (value){},
                              min: 0,
                              max: 100,
                              activeColor: Colors.white,
                          inactiveColor: Colors.white54,),
                          Padding(padding: EdgeInsets.symmetric(
                            horizontal: 25
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("02:10",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),),
                              Text("04:30",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w500,
                                  fontSize: 16
                                ),)
                            ],
                          ),)
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.list,
                            color: Colors.white,
                            size: 32,
                          ),
                          Icon(CupertinoIcons.backward_end_fill,
                          color: Colors.white,
                          size: 30,),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 55,
                            decoration:BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                            ) ,
                            child: Icon(Icons.play_arrow,
                              color: Color(0xFF31314F),
                              size: 45,),
                          ),
                          Icon(CupertinoIcons.forward_end_fill,
                            color: Colors.white,
                            size: 32,
                          ),
                          Icon(Icons.download,
                            color: Colors.white,
                            size: 30,),
                        ],
                      )
                    ],
                  )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
