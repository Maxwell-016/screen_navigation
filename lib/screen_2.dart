import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final name;
  const Screen2({super.key, this.name, Object? text});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/');
                },

                child: Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.only(bottom: 5.0),
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
              SizedBox(width: 20.0,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/about',arguments: widget.name);
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
        body: Center(child: Column(
          children: [
            const Text("This is the about page",style: TextStyle(fontSize: 30.0),),
            Text("${widget.name.toString()}"),
          ],
        ),),

      ),
    );
  }
}
