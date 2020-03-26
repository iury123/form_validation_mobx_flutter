import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'registration_form_store.g.dart';

class RegistrationFormStore = _RegistrationFormStore
    with _$RegistrationFormStore;

abstract class _RegistrationFormStore with Store {
  @observable
  String name;

  @observable
  String email;

  @observable
  String password;

  @observable
  String confirmedPassword;

  final RegistrationErrorFormStore errorStore =
      new RegistrationErrorFormStore();
  List<ReactionDisposer> _disposers;
  final int delay = 650;

  @action
  void setName(String name) {
    this.name = name;
  }

  @action
  void setEmail(String email) {
    this.email = email;
  }

  @action
  void setPassword(String password) {
    this.password = password;
  }

  @action
  void setConfirmedPassword(String confirmedPassword) {
    this.confirmedPassword = confirmedPassword;
  }

  void initReactions() {
    _disposers = [
      reaction(
          (_) => name, (name) => errorStore.setNameError(validateName(name)),
          delay: delay),
      reaction((_) => email,
          (email) => errorStore.setEmailError(validateEmail(email)),
          delay: delay),
      reaction((_) => password, passwordReaction, delay: delay),
      reaction(
          (_) => confirmedPassword,
          (confirmedPassword) => errorStore.setConfirmedPasswordError(
              validateConfirmedPassword(confirmedPassword)),
          delay: delay)
    ];
  }

  void passwordReaction(String password) {
    errorStore.setPasswordError(validatePassword(password));

    String error = (password != confirmedPassword &&
            !isNull(confirmedPassword) &&
            confirmedPassword.isNotEmpty)
        ? 'As senhas são diferentes.'
        : null;

    if (errorStore.confirmedPassword != 'Senha deve ser preenchida.') {
      errorStore.setConfirmedPasswordError(error);
    }
  }

  void disposeReactions() => _disposers.forEach((dispose) => dispose());

  String validateName(String name) {
    if (isNull(name) || name.isEmpty) {
      return 'Nome deve ser preenchido.';
    } else if (name.length < 3) {
      return 'Nome deve ter no mínimo 3 caracteres.';
    }
    return null;
  }

  String validateEmail(String email) {
    if (isNull(email) || email.isEmpty) {
      return 'Email deve ser preenchido.';
    } else if (!isEmail(email)) {
      return 'Email inválido.';
    }
    return null;
  }

  String validatePassword(String password) {
    if (isNull(password) || password.isEmpty) {
      return 'Senha deve ser preenchida.';
    } else if (password.length < 4 || password.length > 10) {
      return 'Senha deve estar entre 4 e 10 caracteres.';
    }
    return null;
  }

  String validateConfirmedPassword(String confirmedPassword) {
    if (isNull(confirmedPassword) || confirmedPassword.isEmpty) {
      return 'Senha deve ser preenchida.';
    } else if (confirmedPassword != password) {
      return 'As senhas são diferentes.';
    }
    return null;
  }

  void submit(void Function() submitCallback) {
    errorStore.setNameError(validateName(name));
    errorStore.setEmailError(validateEmail(email));
    errorStore.setPasswordError(validatePassword(password));
    errorStore.setConfirmedPasswordError(
        validateConfirmedPassword(confirmedPassword));

    if (!errorStore.hasErrors) {
      submitCallback();
    }
  }
}

class RegistrationErrorFormStore = _RegistrationErrorFormStore
    with _$RegistrationErrorFormStore;

abstract class _RegistrationErrorFormStore with Store {
  @observable
  String name;

  @observable
  String email;

  @observable
  String password;

  @observable
  String confirmedPassword;

  @computed
  bool get hasErrors =>
      !isNull(name) ||
      !isNull(email) ||
      !isNull(password) ||
      !isNull(confirmedPassword);

  @action
  void setNameError(String error) {
    name = error;
  }

  @action
  void setEmailError(String error) {
    email = error;
  }

  @action
  void setPasswordError(String error) {
    password = error;
  }

  @action
  void setConfirmedPasswordError(String error) {
    confirmedPassword = error;
  }
}
