import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/create_account/create_account_viewmodel.dart.dart';
import 'package:flutter_application_1/ui/dumb_widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: AuthenticationLayout(
                busy: model.isBusy,
                onCreateAccountTapped: () {},
                title: 'Create Account',
                subtitle: 'Enter your name, email and password for sign up',
                mainButtonTitle: 'SIGN Up',
                form: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(labelText: 'Full Name'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Eamil'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Password'),
                    )
                  ],
                ),
                showTermsText: true,
              ),
            ),
        viewModelBuilder: (() => CreateAccountViewModel()));
  }
}
