import 'package:e_commerce/app/app_colors.dart';
import 'package:e_commerce/core/extensions/localization_extension.dart';
import 'package:e_commerce/features/auth/ui/widget/app_logo.dart';
import 'package:e_commerce/l10n/app_localizations.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 80),
              //const Spacer(),
              const AppLogo(),
              const SizedBox(height: 16),
              Text(
                  context.localization.welcomeBack,
                  style: textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(context.localization.enterYourEmailAndPassword,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: context.localization.email
                ),
                /*
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.themColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green, //AppColors.themColor
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                */
              ),
              const SizedBox(height: 8,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: context.localization.password
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    FirebaseCrashlytics.instance.log('Enter sign in button');
                    throw Exception('My custom error');
                  },
                  child: Text(context.localization.signIn)),
            ],
          ),
        ),
      ),
    );
  }
}
