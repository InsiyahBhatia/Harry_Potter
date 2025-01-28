import 'package:flutter/material.dart';
import 'package:harry_potter/character_model.dart';
import 'package:harry_potter/spells.dart';

class DetailModel extends StatefulWidget {
  const DetailModel({super.key, required this.character_detail});
  final CharacterModel character_detail;

  @override
  State<DetailModel> createState() => _DetailModelState();
}

class _DetailModelState extends State<DetailModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.character_detail.fullName ?? ""),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              widget.character_detail.image ?? "",
              width: 300,
              height: 300,
            ),
            Text(
              "Name :  ${widget.character_detail.fullName}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "House :  ${widget.character_detail.hogwartsHouse}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Birthdate :  ${widget.character_detail.birthdate}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Children :  ${widget.character_detail.children?.join(", ")}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Interpreted by :  ${widget.character_detail.interpretedBy}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SpellsScreen(),
                  ),
                );
              },
              child: const Text("Generate spells"),
            ),
          ],
        ),
      ),
    );
  }
}
