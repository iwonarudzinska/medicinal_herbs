import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart' as route;
import 'package:medicinal_herbs/auth/pages/cubit/auth_cubit.dart';
import 'package:medicinal_herbs/features/root_page/root_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..start(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return route.SignInScreen(
                subtitleBuilder: (context, action) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      action == route.AuthAction.signIn
                          ? 'Welcome to Medicinal Herbs! Please sign in to continue.'
                          : 'Welcome to Medicinal Herbs! Please create an account to continue',
                    ),
                  );
                },
                footerBuilder: (context, _) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      'By signing in, you agree to our terms and conditions.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                },
                headerBuilder: (context, constraints, _) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        'https://images.ctfassets.net/3s5io6mnxfqz/3pLESMFjNopcam5J5qGcoT/0427544b060a8fd29e3c0b68281d56cf/AdobeStock_191057762.jpeg?fm=jpg&w=900&fl=progressive',
                      ),
                    ),
                  );
                },
                providerConfigs: const [
                  route.EmailProviderConfiguration(),
                ]);
          }

          return const RootPage();
        },
      ),
    );
  }
}
