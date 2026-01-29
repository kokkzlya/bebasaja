// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileStore on ProfileStoreBase, Store {
  late final _$fullNameAtom = Atom(
    name: 'ProfileStoreBase.fullName',
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
    name: 'ProfileStoreBase.province',
    context: context,
  );

  @override
  String get province {
    _$provinceAtom.reportRead();
    return super.province;
  }

  @override
  set province(String value) {
    _$provinceAtom.reportWrite(value, super.province, () {
      super.province = value;
    });
  }

  late final _$regencyAtom = Atom(
    name: 'ProfileStoreBase.regency',
    context: context,
  );

  @override
  String get regency {
    _$regencyAtom.reportRead();
    return super.regency;
  }

  @override
  set regency(String value) {
    _$regencyAtom.reportWrite(value, super.regency, () {
      super.regency = value;
    });
  }

  late final _$addressAtom = Atom(
    name: 'ProfileStoreBase.address',
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

  late final _$avatarAtom = Atom(
    name: 'ProfileStoreBase.avatar',
    context: context,
  );

  @override
  String get avatar {
    _$avatarAtom.reportRead();
    return super.avatar;
  }

  @override
  set avatar(String value) {
    _$avatarAtom.reportWrite(value, super.avatar, () {
      super.avatar = value;
    });
  }

  late final _$ProfileStoreBaseActionController = ActionController(
    name: 'ProfileStoreBase',
    context: context,
  );

  @override
  void setFullName(String value) {
    final _$actionInfo = _$ProfileStoreBaseActionController.startAction(
      name: 'ProfileStoreBase.setFullName',
    );
    try {
      return super.setFullName(value);
    } finally {
      _$ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProvince(String value) {
    final _$actionInfo = _$ProfileStoreBaseActionController.startAction(
      name: 'ProfileStoreBase.setProvince',
    );
    try {
      return super.setProvince(value);
    } finally {
      _$ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRegency(String value) {
    final _$actionInfo = _$ProfileStoreBaseActionController.startAction(
      name: 'ProfileStoreBase.setRegency',
    );
    try {
      return super.setRegency(value);
    } finally {
      _$ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddress(String value) {
    final _$actionInfo = _$ProfileStoreBaseActionController.startAction(
      name: 'ProfileStoreBase.setAddress',
    );
    try {
      return super.setAddress(value);
    } finally {
      _$ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAvatar(String value) {
    final _$actionInfo = _$ProfileStoreBaseActionController.startAction(
      name: 'ProfileStoreBase.setAvatar',
    );
    try {
      return super.setAvatar(value);
    } finally {
      _$ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$ProfileStoreBaseActionController.startAction(
      name: 'ProfileStoreBase.clear',
    );
    try {
      return super.clear();
    } finally {
      _$ProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fullName: ${fullName},
province: ${province},
regency: ${regency},
address: ${address},
avatar: ${avatar}
    ''';
  }
}
