// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on LoginStoreBase, Store {
  late final _$userIdAtom = Atom(
    name: 'LoginStoreBase.userId',
    context: context,
  );

  @override
  String get userId {
    _$userIdAtom.reportRead();
    return super.userId;
  }

  @override
  set userId(String value) {
    _$userIdAtom.reportWrite(value, super.userId, () {
      super.userId = value;
    });
  }

  late final _$passwordAtom = Atom(
    name: 'LoginStoreBase.password',
    context: context,
  );

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$LoginStoreBaseActionController = ActionController(
    name: 'LoginStoreBase',
    context: context,
  );

  @override
  void setUserId(String value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
      name: 'LoginStoreBase.setUserId',
    );
    try {
      return super.setUserId(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
      name: 'LoginStoreBase.setPassword',
    );
    try {
      return super.setPassword(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
      name: 'LoginStoreBase.clear',
    );
    try {
      return super.clear();
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userId: ${userId},
password: ${password}
    ''';
  }
}
