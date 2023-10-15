class UserInfo {
  final String id;
  final String pw;
  final String name;
  final String nickName;
  final String birth;
  final String mobileNo;
  final String roles;
  final String status;
  final String? pushKey;
  final DateTime createdAt;
  final String createdBy;
  final DateTime updatedAt;
  final String updatedBy;

  UserInfo({
    required this.id,
    required this.pw,
    required this.name,
    required this.nickName,
    required this.birth,
    required this.mobileNo,
    required this.roles,
    required this.status,
    this.pushKey,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      id: json['id'],
      pw: json['pw'],
      name: json['name'],
      nickName: json['nickName'],
      birth: json['birth'],
      mobileNo: json['mobileNo'],
      roles: json['roles'],
      status: json['status'],
      pushKey: json['pushKey'],
      createdAt: DateTime.parse(json['createdAt']),
      createdBy: json['createdBy'],
      updatedAt: DateTime.parse(json['updatedAt']),
      updatedBy: json['updatedBy'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pw': pw,
      'name': name,
      'nickName': nickName,
      'birth': birth,
      'mobileNo': mobileNo,
      'roles': roles,
      'status': status,
      'pushKey': pushKey,
      'createdAt': createdAt.toIso8601String(),
      'createdBy': createdBy,
      'updatedAt': updatedAt.toIso8601String(),
      'updatedBy': updatedBy,
    };
  }
}
