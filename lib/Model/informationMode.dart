class information {
  int id;
  String userName;
  String pass;
  String hoTen;
  String email;
  String bio;

  information.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['UserName'];
    pass = json['Pass'];
    hoTen = json['HoTen'];
    email = json['Email'];
    bio = json['Bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['UserName'] = this.userName;
    data['Pass'] = this.pass;
    data['HoTen'] = this.hoTen;
    data['Email'] = this.email;
    data['Bio'] = this.bio;
    return data;
  }
}
