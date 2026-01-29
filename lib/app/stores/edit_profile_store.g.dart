// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditProfileStore on EditProfileStoreBase, Store {
  Computed<bool>? _$isRegionEnabledComputed;

  @override
  bool get isRegionEnabled => (_$isRegionEnabledComputed ??= Computed<bool>(
    () => super.isRegionEnabled,
    name: 'EditProfileStoreBase.isRegionEnabled',
  )).value;

  late final _$fullNameAtom = Atom(
    name: 'EditProfileStoreBase.fullName',
    context: context,
  );

  @override
  String get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(String value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  late final _$provinceAtom = Atom(
    name: 'EditProfileStoreBase.province',
    context: context,
  );

  @override
  Region? get province {
    _$provinceAtom.reportRead();
    return super.province;
  }

  @override
  set province(Region? value) {
    _$provinceAtom.reportWrite(value, super.province, () {
      super.province = value;
    });
  }

  late final _$regencyAtom = Atom(
    name: 'EditProfileStoreBase.regency',
    context: context,
  );

  @override
  Region? get regency {
    _$regencyAtom.reportRead();
    return super.regency;
  }

  @override
  set regency(Region? value) {
    _$regencyAtom.reportWrite(value, super.regency, () {
      super.regency = value;
    });
  }

  late final _$addressAtom = Atom(
    name: 'EditProfileStoreBase.address',
    context: context,
  );

  @override
  String get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$availableProvincesAtom = Atom(
    name: 'EditProfileStoreBase.availableProvinces',
    context: context,
  );

  @override
  ObservableList<Region> get availableProvinces {
    _$availableProvincesAtom.reportRead();
    return super.availableProvinces;
  }

  @override
  set availableProvinces(ObservableList<Region> value) {
    _$availableProvincesAtom.reportWrite(value, super.availableProvinces, () {
      super.availableProvinces = value;
    });
  }

  late final _$availableRegenciesAtom = Atom(
    name: 'EditProfileStoreBase.availableRegencies',
    context: context,
  );

  @override
  ObservableList<Region> get availableRegencies {
    _$availableRegenciesAtom.reportRead();
    return super.availableRegencies;
  }

  @override
  set availableRegencies(ObservableList<Region> value) {
    _$availableRegenciesAtom.reportWrite(value, super.availableRegencies, () {
      super.availableRegencies = value;
    });
  }

  late final _$loadProvincesAsyncAction = AsyncAction(
    'EditProfileStoreBase.loadProvinces',
    context: context,
  );

  @override
  Future<void> loadProvinces() {
    return _$loadProvincesAsyncAction.run(() => super.loadProvinces());
  }

  late final _$loadRegenciesAsyncAction = AsyncAction(
    'EditProfileStoreBase.loadRegencies',
    context: context,
  );

  @override
  Future<void> loadRegencies(String provinceCode) {
    return _$loadRegenciesAsyncAction.run(
      () => super.loadRegencies(provinceCode),
    );
  }

  late final _$EditProfileStoreBaseActionController = ActionController(
    name: 'EditProfileStoreBase',
    context: context,
  );

  @override
  void setFullName(String value) {
    final _$actionInfo = _$EditProfileStoreBaseActionController.startAction(
      name: 'EditProfileStoreBase.setFullName',
    );
    try {
      return super.setFullName(value);
    } finally {
      _$EditProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProvince(Region? value) {
    final _$actionInfo = _$EditProfileStoreBaseActionController.startAction(
      name: 'EditProfileStoreBase.setProvince',
    );
    try {
      return super.setProvince(value);
    } finally {
      _$EditProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRegency(Region? value) {
    final _$actionInfo = _$EditProfileStoreBaseActionController.startAction(
      name: 'EditProfileStoreBase.setRegency',
    );
    try {
      return super.setRegency(value);
    } finally {
      _$EditProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddress(String value) {
    final _$actionInfo = _$EditProfileStoreBaseActionController.startAction(
      name: 'EditProfileStoreBase.setAddress',
    );
    try {
      return super.setAddress(value);
    } finally {
      _$EditProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProvinces(List<Region> provinces) {
    final _$actionInfo = _$EditProfileStoreBaseActionController.startAction(
      name: 'EditProfileStoreBase.setProvinces',
    );
    try {
      return super.setProvinces(provinces);
    } finally {
      _$EditProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRegencies(List<Region> regencies) {
    final _$actionInfo = _$EditProfileStoreBaseActionController.startAction(
      name: 'EditProfileStoreBase.setRegencies',
    );
    try {
      return super.setRegencies(regencies);
    } finally {
      _$EditProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fullName: ${fullName},
province: ${province},
regency: ${regency},
address: ${address},
availableProvinces: ${availableProvinces},
availableRegencies: ${availableRegencies},
isRegionEnabled: ${isRegionEnabled}
    ''';
  }
}
