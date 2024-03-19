import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _height = 100.0;
  var _width = 200.0;
  bool flag = true;
  //Color animatedContainerColor = Colors.blue[300]!;
  Decoration _animatedContainerBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.blue[300]!,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Animate Containers',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: _height,
              width: _width,
              curve: Curves.easeInOutCubic,
              decoration: _animatedContainerBoxDecoration,
              duration: const Duration(seconds: 2),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    setState(() {
                      if(flag){
                        _height = 200.0;
                        _width = 150.0;
                        //animatedContainerColor = Colors.blue;
                        _animatedContainerBoxDecoration = BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        );
                        flag = false;
                      }else{
                        _height = 100.0;
                        _width = 200.0;
                        //animatedContainerColor = Colors.blue[300]!;
                        _animatedContainerBoxDecoration = BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[300]!,
                        );
                        flag = true;
                      }
                    });
                  },
                  child: const Text(
                    'Animate',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
