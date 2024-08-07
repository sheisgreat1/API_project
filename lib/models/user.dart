class User{
  final int id;
  final String name;
  final String username;
  final String email;
  final Map address;
  final String phone;
  final String website;
  final Map company;

  User({required this.id, required this.address,required this.company,required this.email,required this.name, required this.phone, required this.username , required this.website});

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
        id: map['id'],
        address: Map.from(map['address']),
        company: Map.from(map['company']),
        email: map['email'],
        name: map['name'],
        phone: map['phone'],
        username: map['username'],
        website: map['website']);

  }

}