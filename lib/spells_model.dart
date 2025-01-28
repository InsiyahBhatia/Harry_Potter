class SpellsModel {
  String? spell;
  String? use;
  int? index;

  SpellsModel({this.spell, this.use, this.index});

  SpellsModel.fromJson(Map<String, dynamic> json) {
    spell = json['spell'];
    use = json['use'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['spell'] = this.spell;
    data['use'] = this.use;
    data['index'] = this.index;
    return data;
  }
}
