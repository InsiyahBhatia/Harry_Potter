import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:harry_potter/character_detail.dart';
import 'package:harry_potter/character_model.dart';
import 'package:harry_potter/language_screen.dart';
import 'package:harry_potter/theme.dart';
import 'package:harry_potter/util.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Annie Use Your Telescope", "Actor");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const MyHomePage(Language: "en",),
      
      
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.Language});

  final String Language;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<CharacterModel> characters= [];
  
getCharacter(String Language) async{
  var response = 
      await http.get(Uri.parse("https://potterapi-fedeperin.vercel.app/$Language/characters"));
      if(response.statusCode== 200){
        //print(response.body);
        (jsonDecode(response.body) as List<dynamic>).forEach((element) {
          characters.add(CharacterModel.fromJson(element));

        },);
        setState(() {
          
        });
        print(characters.first.fullName);
      }
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCharacter(widget.Language);
    
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         title: const Text(
          "Harry Potter",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        
        actions: [

          GestureDetector(
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> LanguageScreen(Language: widget.Language,),),);
            },
            child: Card(
            color: Color.fromARGB(255, 101, 61, 49),
            child: Padding(
              padding: const EdgeInsets.all(10.0) ,
              child: Text(widget.Language),
            ),
              ),
          ),
          
          ],

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        
      ),

      body :
      GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1.5 ), 
          padding: EdgeInsets.all(30),
          itemBuilder:(context, index){
            return GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailModel(character_detail : characters[index],),),);
              },
              child: Card(
                color: Color.fromARGB(255, 0, 0, 0),
                child: Center(
                  
                  child: Column(
                  children: [
                    //Image.asset("harry.png",height: 208, width :230),
                    Text(characters[index].nickname ?? "",
                    style: TextStyle(fontSize: 30),),
            
                    Expanded(child: Image.network(characters[index].image ?? ""),),

                     Text(characters[index].hogwartsHouse ?? "",
                    style: TextStyle(fontSize: 30),),
            
  
                  ],
                  ),
                  ),
                  
                  ),
            );
          },
          itemCount: characters.length,
          ),
          
    );
  }
}

