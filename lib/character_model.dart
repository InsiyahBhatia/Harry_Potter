class CharacterModel {
  String? fullName;
  String? nickname;
  String? hogwartsHouse;
  String? interpretedBy;
  List<String>? children;
  String? image;
  String? birthdate;
  int? index;

  CharacterModel(
      {this.fullName,
      this.nickname,
      this.hogwartsHouse,
      this.interpretedBy,
      this.children,
      this.image,
      this.birthdate,
      this.index});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    nickname = json['nickname'];
    hogwartsHouse = json['hogwartsHouse'];
    interpretedBy = json['interpretedBy'];
    children = json['children'].cast<String>();
    image = json['image'];
    birthdate = json['birthdate'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['nickname'] = this.nickname;
    data['hogwartsHouse'] = this.hogwartsHouse;
    data['interpretedBy'] = this.interpretedBy;
    data['children'] = this.children;
    data['image'] = this.image;
    data['birthdate'] = this.birthdate;
    data['index'] = this.index;
    return data;
  }
}
