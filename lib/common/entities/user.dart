
class LoginRequestEntity {
  int? type;
  String? name;
  String? description;
  String? email;
  String? phone;
  String? avatar;
  String? open_id;
  int? online;

  LoginRequestEntity({
    this.type,
    this.name,
    this.description,
    this.email,
    this.phone,
    this.avatar,
    this.open_id,
    this.online});

    Map<String, dynamic> toJson() => {
      "type": type,
      "name": name,
      "description": description,
      "email": email,
      "phone": phone,
      "avatar": avatar,
      "open_id": open_id,
      "online": online
    };


}

class UserItem {
  String? access_token;
  String? token;
  String? name;
  String? description;
  String? avatar;
  int? online;
  int? type;

  UserItem({
    this.access_token,
    this.token,
    this.name,
    this.description,
    this.avatar,
    this.online,
    this.type
  });

  factory UserItem.fromJson(Map<String, dynamic> json) => UserItem(
    access_token: json["access_token"],
    token: json["token"],
    name: json["name"],
    description: json["description"],
    avatar: json["avatar"],
    online: json["online"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "access_token": access_token,
    "token": token,
    "name": name,
    "description": description,
    "avatar": avatar,
    "online": online,
    "type": type,
  };
}