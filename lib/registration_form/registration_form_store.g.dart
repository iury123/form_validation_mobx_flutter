// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistrationFormStore on _RegistrationFormStore, Store {
  final _$nameAtom = Atom(name: '_RegistrationFormStore.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_RegistrationFormStore.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_RegistrationFormStore.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$confirmedPasswordAtom =
      Atom(name: '_RegistrationFormStore.confirmedPassword');

  @override
  String get confirmedPassword {
    _$confirmedPasswordAtom.context.enforceReadPolicy(_$confirmedPasswordAtom);
    _$confirmedPasswordAtom.reportObserved();
    return super.confirmedPassword;
  }

  @override
  set confirmedPassword(String value) {
    _$confirmedPasswordAtom.context.conditionallyRunInAction(() {
      super.confirmedPassword = value;
      _$confirmedPasswordAtom.reportChanged();
    }, _$confirmedPasswordAtom, name: '${_$confirmedPasswordAtom.name}_set');
  }

  final _$_RegistrationFormStoreActionController =
      ActionController(name: '_RegistrationFormStore');

  @override
  void setName(String name) {
    final _$actionInfo = _$_RegistrationFormStoreActionController.startAction();
    try {
      return super.setName(name);
    } finally {
      _$_RegistrationFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_RegistrationFormStoreActionController.startAction();
    try {
      return super.setEmail(email);
    } finally {
      _$_RegistrationFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String password) {
    final _$actionInfo = _$_RegistrationFormStoreActionController.startAction();
    try {
      return super.setPassword(password);
    } finally {
      _$_RegistrationFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmedPassword(String confirmedPassword) {
    final _$actionInfo = _$_RegistrationFormStoreActionController.startAction();
    try {
      return super.setConfirmedPassword(confirmedPassword);
    } finally {
      _$_RegistrationFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},email: ${email.toString()},password: ${password.toString()},confirmedPassword: ${confirmedPassword.toString()}';
    return '{$string}';
  }
}

mixin _$RegistrationErrorFormStore on _RegistrationErrorFormStore, Store {
  final _$nameAtom = Atom(name: '_RegistrationErrorFormStore.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_RegistrationErrorFormStore.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_RegistrationErrorFormStore.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$confirmedPasswordAtom =
      Atom(name: '_RegistrationErrorFormStore.confirmedPassword');

  @override
  String get confirmedPassword {
    _$confirmedPasswordAtom.context.enforceReadPolicy(_$confirmedPasswordAtom);
    _$confirmedPasswordAtom.reportObserved();
    return super.confirmedPassword;
  }

  @override
  set confirmedPassword(String value) {
    _$confirmedPasswordAtom.context.conditionallyRunInAction(() {
      super.confirmedPassword = value;
      _$confirmedPasswordAtom.reportChanged();
    }, _$confirmedPasswordAtom, name: '${_$confirmedPasswordAtom.name}_set');
  }

  final _$_RegistrationErrorFormStoreActionController =
      ActionController(name: '_RegistrationErrorFormStore');

  @override
  void setNameError(String error) {
    final _$actionInfo =
        _$_RegistrationErrorFormStoreActionController.startAction();
    try {
      return super.setNameError(error);
    } finally {
      _$_RegistrationErrorFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmailError(String error) {
    final _$actionInfo =
        _$_RegistrationErrorFormStoreActionController.startAction();
    try {
      return super.setEmailError(error);
    } finally {
      _$_RegistrationErrorFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordError(String error) {
    final _$actionInfo =
        _$_RegistrationErrorFormStoreActionController.startAction();
    try {
      return super.setPasswordError(error);
    } finally {
      _$_RegistrationErrorFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmedPasswordError(String error) {
    final _$actionInfo =
        _$_RegistrationErrorFormStoreActionController.startAction();
    try {
      return super.setConfirmedPasswordError(error);
    } finally {
      _$_RegistrationErrorFormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},email: ${email.toString()},password: ${password.toString()},confirmedPassword: ${confirmedPassword.toString()}';
    return '{$string}';
  }
}
