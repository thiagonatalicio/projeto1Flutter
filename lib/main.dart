import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{

  void decrement(){
    print("decrement");
  }
  void increment(){
    print("increment");
  }
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            const Text(
              "Pode entrar", 
              style: TextStyle(
                fontSize: 50,
                color: Colors.white) 
              ),
            Row(
              children: [
                SizedBox(height: 100)
              ] 
            ),
            const Text(
              "0", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 100  
              )
            ),
            Row(
              children: [
                SizedBox(height: 100)
              ] 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: Colors.black, 
                        width: 5
                      )
                    )
                  ),
                  onPressed: decrement,
                  child: Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    )
                  ),
                ),
                SizedBox(width: 60),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: Colors.black, 
                        width: 5
                      )
                    ),
                  
                  ),
                  onPressed: increment,
                  child: Text(
                    "entrou",
                    style: TextStyle( 
                      color: Colors.black,
                      fontSize: 20,
                    
                    ),
                  ),
                )
              ],
            )
          ]
        )
      )
      

    );
  }
}