import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'registration_form_store.g.dart';

class RegistrationFormStore = _RegistrationFormStore with _$RegistrationFormStore;

abstract class _RegistrationFormStore with Store {

  @observable
  String name;

  @observable
  String email;

  @observable
  String password;

  @observable
  String confirmedPassword;

  final RegistrationErrorFormStore errorStore = new RegistrationErrorFormStore();
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
      reaction((_) => name, (name) => errorStore
        .setNameError(validateName(name)), delay: delay),
    ];
  }

  void disposeReactions() => _disposers.forEach((dispose) => dispose());

  String validateName(String name) {
    print("Realizando validação");
    if(isNull(name) || name.isEmpty) {
      return 'Nome deve ser preenchido.';
    } else if (name.length < 3) {
      return 'Nome deve ter no mínimo 3 caracteres.';
    }
    return null;
  }




}

class RegistrationErrorFormStore = _RegistrationErrorFormStore with _$RegistrationErrorFormStore;

abstract class _RegistrationErrorFormStore with Store {

  @observable
  String name;

  @observable
  String email;

  @observable
  String password;

  @observable
  String confirmedPassword;

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