
class ClientModel {

  int? id;
  String? name;
  String? nickname;
  String? email;
  String? address;
  String? quickNote;
  bool? active;
  List<ClientPhones>? clientPhones;

  ClientModel(
      {this.id,
      this.name,
      this.nickname,
      this.email,
      this.address,
      this.quickNote,
      this.active,
      this.clientPhones});

  ClientModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nickname = json['nickname'];
    email = json['email'];
    address = json['address'];
    quickNote = json['quick_note'];
    active = json['active_'];
    if (json['client_phones'] != null) {
      clientPhones = <ClientPhones>[];
      json['client_phones'].forEach((v) {
        clientPhones?.add(ClientPhones.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nickname'] = nickname;
    data['email'] = email;
    data['address'] = address;
    data['quick_note'] = quickNote;
    data['active_'] = active;
    if (clientPhones != null) {
      data['client_phones'] = clientPhones?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ClientPhones {
  int? id;
  String? number;
  bool? primary;

  ClientPhones({required this.id, required this.number, required this.primary});

  ClientPhones.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['number'] = number;
    data['primary'] = primary;
    return data;
  }
}
