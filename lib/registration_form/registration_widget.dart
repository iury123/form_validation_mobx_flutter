import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formvalidation/registration_form/registration_view_model.dart';

class RegistrationFormWidget extends StatefulWidget {
  @override
  _RegistrationFormWidgetState createState() => _RegistrationFormWidgetState();
}

class _RegistrationFormWidgetState extends State<RegistrationFormWidget> {
  final RegistrationViewModel viewModel = new RegistrationViewModel();
  final double paddingBetweenFields = 10;

  @override
  void initState() {
    super.initState();
    viewModel.registrationFormStore.initReactions();
  }

  @override
  void dispose() {
    viewModel.registrationFormStore.disposeReactions();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(16), child: getForm()),
        ));
  }

  Widget getForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Observer(
          builder: (_) => TextField(
            onChanged: (value) =>
                viewModel.registrationFormStore.setName(value),
            decoration: InputDecoration(
                labelText: 'Nome',
                hintText: 'Entre com o nome',
                errorText: viewModel.registrationFormStore.errorStore.name),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingBetweenFields),
          child: Observer(
            builder: (_) => TextField(
              onChanged: (value) =>
                  viewModel.registrationFormStore.setEmail(value),
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Entre com o email',
                  errorText: viewModel.registrationFormStore.errorStore.email),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingBetweenFields),
          child: Observer(
            builder: (_) => TextField(
              onChanged: (value) =>
                  viewModel.registrationFormStore.setPassword(value),
              decoration: InputDecoration(
                  labelText: 'Senha',
                  hintText: 'Entre com a senha',
                  errorText:
                      viewModel.registrationFormStore.errorStore.password),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingBetweenFields),
          child: Observer(
            builder: (_) => TextField(
              onChanged: (value) =>
                  viewModel.registrationFormStore.setConfirmedPassword(value),
              decoration: InputDecoration(
                  labelText: 'Confirme a senha',
                  hintText: 'Entre com a senha acima',
                  errorText: viewModel
                      .registrationFormStore.errorStore.confirmedPassword),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: RaisedButton(
            onPressed: () {},
            child: Text("Salvar"),
          ),
        )
      ],
    );
  }
}
