import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    String name="Maxwell Ndungu";
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed('/');
                    context.go("/");
                  },

                  child: Container(
                    height: 50.0,
                    width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: const Center(
                        child: Text("Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                          ),
                      ),
                  ),
                ),
                const SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed('/about',arguments: name);
                    context.go("/about");
                  },

                  child: Container(
                    height: 50.0,
                    width: 100.0,

                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                      margin: const EdgeInsets.only(bottom: 5.0),
                    child: const Center(
                      child: Text("About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Center(child: Text("This is the home page",style: TextStyle(fontSize: 30.0),),),
        ),
    );
  }
}
