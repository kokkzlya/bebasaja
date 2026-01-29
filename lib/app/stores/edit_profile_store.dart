import 'package:mobx/mobx.dart';

import 'package:bebasaja/domain/models/region.dart';
import 'package:bebasaja/infra/region/region_service.dart';

part 'edit_profile_store.g.dart';

class EditProfileStore = EditProfileStoreBase with _$EditProfileStore;

abstract class EditProfileStoreBase with Store {
  final RegionService _regionService;

  EditProfileStoreBase(this._regionService);

  @observable
  String fullName = '';

  @observable
  Region? province;

  @observable
  Region? regency;

  @observable
  String address = '';

  @observable
  ObservableList<Region> availableProvinces = ObservableList<Region>();

  @observable
  ObservableList<Region> availableRegencies = ObservableList<Region>();

  @action
  void setFullName(String value) {
    fullName = value;
  }

  @action
  void setProvince(Region? value) {
    province = value;
    setRegency(null);

    if (province != null) {
      loadRegencies(province!.code);
    } else {
      availableRegencies.clear();
    }
  }

  @action
  void setRegency(Region? value) {
    regency = value;
  }

  @action
  void setAddress(String value) {
    address = value;
  }

  @action
  void setProvinces(List<Region> provinces) {
    availableProvinces = ObservableList<Region>.of(provinces);
  }

  @action
  void setRegencies(List<Region> regencies) {
    availableRegencies = ObservableList<Region>.of(regencies);
  }

  @action
  Future<void> loadProvinces() async {
    setProvinces(await _regionService.fetchProvinces());
  }

  @action
  Future<void> loadRegencies(String provinceCode) async {
    setRegencies(await _regionService.fetchRegencies(provinceCode));
  }

  @computed
  bool get isRegionEnabled => province != null;
}
