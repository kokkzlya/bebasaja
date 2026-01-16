import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  String userId = '';

  @observable
  String password = '';

  @action
  void setUserId(String value) {
    userId = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void clear() {
    userId = '';
    password = '';
  }
}
