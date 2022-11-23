import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/dumb_widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: AuthenticationLayout(
                busy: model.isBusy,
                onCreateAccountTapped: () {},
                title: 'Welcome',
                subtitle: 'Enter your email address to sign in.',
                mainButtonTitle: 'SIGN IN',
                form: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(labelText: 'Eamil'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Password'),
                    )
                  ],
                ),
              ),
            ),
        viewModelBuilder: (() => LoginViewModel()));
  }
}
