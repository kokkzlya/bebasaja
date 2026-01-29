import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = ProfileStoreBase with _$ProfileStore;

abstract class ProfileStoreBase with Store {
  @observable
  String fullName = '';

  @observable
  String province = '';

  @observable
  String regency = '';

  @observable
  String address = '';

  @observable
  String avatar = '';

  @action
  void setFullName(String value) {
    fullName = value;
  }

  @action
  void setProvince(String value) {
    province = value;
  }

  @action
  void setRegency(String value) {
    regency = value;
  }

  @action
  void setAddress(String value) {
    address = value;
  }

  @action
  void setAvatar(String value) {
    avatar = value;
  }

  @action
  void clear() {
    fullName = '';
    avatar = '';
  }
}
