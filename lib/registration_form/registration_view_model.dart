import 'package:formvalidation/registration_form/registration_form_store.dart';
import 'package:mobx/mobx.dart';

part 'registration_view_model.g.dart';

class RegistrationViewModel = _RegistrationViewModel
    with _$RegistrationViewModel;

abstract class _RegistrationViewModel with Store {

  final RegistrationFormStore registrationFormStore =
      new RegistrationFormStore();

  void register() => registrationFormStore.submit(() => print("submited"));
}
