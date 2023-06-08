// To parse this JSON data, do
//
//     final user = userfromMap(jsonString);

import 'dart:convert';

User userfromMap(String str) => User.fromMap(json.decode(str));

String usertoJson(User data) => json.encode(data.toJson());

class User {
    String? email;
    bool? verify;
    bool? completed;
    String? type;
    String? name;
    String? username;
    dynamic image;
    dynamic thumbnail;
    String? device;
    dynamic tokenExpire;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    Wallet? wallet;
    dynamic resetPasswordExpire;

    User({
       this.email,
       this.verify,
       this.completed,
       this.type,
       this.name,
       this.username,
        this.image,
        this.thumbnail,
       this.device,
        this.tokenExpire,
       this.createdAt,
       this.updatedAt,
       this.v,
       this.wallet,
        this.resetPasswordExpire,
    });

    factory User.fromMap(Map<String, dynamic> json) => User(
        email: json["email"],
        verify: json["_verify"],
        completed: json["_completed"],
        type: json["_type"],
        name: json["name"],
        username: json["username"],
        image: json["image"],
        thumbnail: json["thumbnail"],
        device: json["device"],
        tokenExpire: json["TokenExpire"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        wallet: Wallet.fromMap(json["_wallet"]),
        resetPasswordExpire: json["resetPasswordExpire"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "_verify": verify,
        "_completed": completed,
        "_type": type,
        "name": name,
        "username": username,
        "image": image,
        "thumbnail": thumbnail,
        "device": device,
        "TokenExpire": tokenExpire,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "__v": v,
        "_wallet": wallet!.toJson(),
        "resetPasswordExpire": resetPasswordExpire,
    };
}

class Wallet {
    String? id;
    String? user;
    int? amount;
    String? currency;
    int? inflow;
    int? outflow;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Wallet({
       this.id,
       this.user,
       this.amount,
       this.currency,
       this.inflow,
       this.outflow,
       this.createdAt,
       this.updatedAt,
       this.v,
    });

    factory Wallet.fromMap(Map<String, dynamic> json) => Wallet(
        id: json["_id"],
        user: json["_user"],
        amount: json["amount"],
        currency: json["currency"],
        inflow: json["inflow"],
        outflow: json["outflow"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "_user": user,
        "amount": amount,
        "currency": currency,
        "inflow": inflow,
        "outflow": outflow,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "__v": v,
    };
}
