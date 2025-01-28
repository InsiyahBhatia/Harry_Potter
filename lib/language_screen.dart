import 'package:flutter/material.dart';
import 'package:harry_potter/main.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key, required this.Language});
  final String Language;

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String dropdownvalue = 'en';

  var items = [
    'en',
    'es',
    'fr',
    'it',
    'pt',
  ];

  void changeLanguage(String dropdownvalue) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(Language: dropdownvalue),
      ),
      (route) => false,
    );
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownvalue= widget.Language;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Language"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<String>(
              value: dropdownvalue,
              menuMaxHeight: 500,
              isExpanded: true,
              itemHeight: 100,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String lang) {
                return DropdownMenuItem(
                  value: lang,
                  child: Text(lang),
                  alignment: AlignmentDirectional.center,
                );
              }).toList(),
              onChanged: (String? lang) {
                setState(() {
                  dropdownvalue = lang!;
                });
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                changeLanguage(dropdownvalue);
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
