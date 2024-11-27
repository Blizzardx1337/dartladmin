class User {
  final int id;
  String name;
  String email;
  String password;

  User({required this.id, required this.name, required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
    );
  }
}

class Admin {
  final int id;
  String name;
  String email;
  String password;

  Admin({required this.id, required this.name, required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory Admin.fromMap(Map<String, dynamic> map) {
    return Admin(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
    );
  }
}

class Alert {
  final int id;
  final int userId;
  final int adminId;

  Alert({required this.id, required this.userId, required this.adminId});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'adminId': adminId,
    };
  }

  factory Alert.fromMap(Map<String, dynamic> map) {
    return Alert(
      id: map['id'],
      userId: map['userId'],
      adminId: map['adminId'],
    );
  }
}

void main() {
  List<User> users = [];
  List<Admin> admins = [];
  List<Alert> alerts = [];

  User user1 = User(id: 1, name: "John Doe", email: "john@example.com", password: "password123");
  User user2 = User(id: 2, name: "Alice Smith", email: "alice@example.com", password: "alicepass456");

  Admin admin1 = Admin(id: 1, name: "Jane Admin", email: "jane@example.com", password: "adminpass123");
  Admin admin2 = Admin(id: 2, name: "Bob Admin", email: "bob@example.com", password: "adminpass456");

  Alert alert1 = Alert(id: 1, userId: user1.id, adminId: admin1.id);
  Alert alert2 = Alert(id: 2, userId: user2.id, adminId: admin2.id);

  users.add(user1);
  users.add(user2);

  admins.add(admin1);
  admins.add(admin2);

  alerts.add(alert1);
  alerts.add(alert2);

  for (var user in users) {
    print("User: ${user.toMap()}");
  }

  for (var admin in admins) {
    print("Admin: ${admin.toMap()}");
  }

  for (var alert in alerts) {
    print("Alert: ${alert.toMap()}");
  }
}
