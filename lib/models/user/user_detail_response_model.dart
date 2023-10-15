class UserDetailResponse {
  final String id;
  final String pw;
  final String name;
  final String nickName;
  final String birth;
  final String mobileNo;
  final String status;
  final String roles;
  final String? pushKey;

  UserDetailResponse({
    required this.id,
    required this.pw,
    required this.name,
    required this.nickName,
    required this.birth,
    required this.mobileNo,
    required this.status,
    required this.roles,
    this.pushKey,
  });

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) {
    return UserDetailResponse(
      id: json['id'],
      pw: json['pw'],
      name: json['name'],
      nickName: json['nickName'],
      birth: json['birth'],
      mobileNo: json['mobileNo'],
      roles: json['roles'],
      status: json['status'],
      pushKey: json['pushKey'],
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
    };
  }
}
