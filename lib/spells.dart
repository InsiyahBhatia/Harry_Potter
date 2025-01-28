import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:harry_potter/spells_model.dart';
import 'package:http/http.dart' as http;

class SpellsScreen extends StatefulWidget {
  const SpellsScreen({super.key});

  @override
  State<SpellsScreen> createState() => _SpellsScreenState();
}

class _SpellsScreenState extends State<SpellsScreen> {
  SpellsModel? spell;  

  getSpells() async {
    var response = await http.get(Uri.parse("https://potterapi-fedeperin.vercel.app/en/spells/random"));
    
    if (response.statusCode == 200) {
      setState(() {
        spell = SpellsModel.fromJson(jsonDecode(response.body)); 
      });
    } else {
      print("Failed to load spell");
    }
  }

  @override
  void initState() {
    super.initState();
    getSpells();  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Spells",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
       
           child : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    spell?.spell ?? "",  
                    style: const TextStyle(fontSize: 30),
                  ),
                  Text(spell?.use ?? "", style: const TextStyle(fontSize: 20)),
                  ElevatedButton(
                    onPressed: getSpells,  
                    child: const Text("Generate spells"),
                  ),
                ],
              ),
      ),
    );
  }
}
