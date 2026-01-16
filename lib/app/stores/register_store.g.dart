// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterStore on RegisterStoreBase, Store {
  late final _$fullNameAtom = Atom(
    name: 'RegisterStoreBase.fullName',
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

  late final _$emailAtom = Atom(
    name: 'RegisterStoreBase.email',
    context: context,
  );

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom = Atom(
    name: 'RegisterStoreBase.password',
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

  late final _$confirmPasswordAtom = Atom(
    name: 'RegisterStoreBase.confirmPassword',
    context: context,
  );

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  late final _$RegisterStoreBaseActionController = ActionController(
    name: 'RegisterStoreBase',
    context: context,
  );

  @override
  void setFullName(String value) {
    final _$actionInfo = _$RegisterStoreBaseActionController.startAction(
      name: 'RegisterStoreBase.setFullName',
    );
    try {
      return super.setFullName(value);
    } finally {
      _$RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$RegisterStoreBaseActionController.startAction(
      name: 'RegisterStoreBase.setEmail',
    );
    try {
      return super.setEmail(value);
    } finally {
      _$RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$RegisterStoreBaseActionController.startAction(
      name: 'RegisterStoreBase.setPassword',
    );
    try {
      return super.setPassword(value);
    } finally {
      _$RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmPassword(String value) {
    final _$actionInfo = _$RegisterStoreBaseActionController.startAction(
      name: 'RegisterStoreBase.setConfirmPassword',
    );
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fullName: ${fullName},
email: ${email},
password: ${password},
confirmPassword: ${confirmPassword}
    ''';
  }
}
