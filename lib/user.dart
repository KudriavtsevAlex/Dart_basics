class User {
  String email = "";
  User(this.email);
  void pr() {
    print('user');
  }
}

class AdminUser extends User with Host {
  AdminUser(String email) : super(email);
}

mixin Host on User {
  void getMailSystem() {
    String host = email.substring(email.indexOf("@") + 1);
    print(host);
  }
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}


class UserManager<T extends User> {
  List<T> list = [];

  void addUser(T user) {
    list.add(user);
  }

  void printer() {
    list.forEach((element) {
      if (element.runtimeType != AdminUser) {
        print(element.email);
      } else {
        element.getMailSystem();
      }
    });
  }
}


void main() {
  User user1 = User('user1@mail.ru');

  AdminUser user3 = AdminUser('alekukutudasuda@mail.ru');
  GeneralUser user2 = GeneralUser('user2@mail.ru');
  UserManager usermanager = UserManager<User>();
  usermanager.addUser(user1);
  usermanager.addUser(user2);
  usermanager.addUser(user3);

  // user3.getMailSystem(); РАБОТАЕТ!!!

}
