import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/extensions/extension.dart';
import 'package:opticash/features/features.dart';
import 'package:opticash/ui/ui.dart';
import 'package:opticash/utils/email_validator.dart';

@RoutePage()
class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final validateMode = useState<AutovalidateMode>(AutovalidateMode.disabled);
    final loading = useState<bool>(false);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          registered: (value) {
            loading.value = false;
            showDialog(
              context: context,
              barrierDismissible: false,
              barrierColor: AppColors.overlayCOlor.withOpacity(0.34),
              builder: (context) => const AccountSuccessModal(),
            );
          },
          authenticating: (value) => loading.value = true,
          unauthenticated: (value) {
            loading.value = false;
            if (value.error != null) {
              ToastMessage.error(message: value.error!);
            }
          },
          orElse: () => loading.value = false,
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 23, 24, 0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomBackButton(),
                ),
                const SizedBox(height: 31.24),
                const CustomSubtitle(
                  title: 'Create Account',
                  description:
                      'Register a new account using your email address and fill in your informations',
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 22),
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              CustomTextField(
                                controller: firstNameController,
                                labelText: 'First Name',
                                textCapitalization: TextCapitalization.words,
                                textInputType: TextInputType.name,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z]'),
                                  ),
                                ],
                                autoFillHints: const [
                                  AutofillHints.name,
                                ],
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'First Name Cannot Be Empty';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 30),
                              CustomTextField(
                                controller: lastNameController,
                                labelText: 'Last Name',
                                textCapitalization: TextCapitalization.words,
                                textInputType: TextInputType.name,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z]'),
                                  ),
                                ],
                                autoFillHints: const [
                                  AutofillHints.name,
                                ],
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Last Name Cannot Be Empty';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 30),
                              CustomTextField(
                                controller: emailController,
                                labelText: 'Email',
                                textInputType: TextInputType.emailAddress,
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp('[ ]'),
                                  ),
                                ],
                                autoFillHints: const [
                                  AutofillHints.email,
                                ],
                                validator: (email) {
                                  if (email == null || email.isEmpty) {
                                    return 'Email address is required';
                                  }
                                  if (!EmailValidator.validate(email)) {
                                    return 'Email Address is incorrect';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 30),
                              CustomPasswordField(
                                controller: passwordController,
                                labelText: 'Passsword',
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp('[ ]'),
                                  ),
                                ],
                                autoFillHints: const [
                                  AutofillHints.email,
                                ],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password is required';
                                  }
                                  if (!value.isPasswordValid()) {
                                    return '';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                        const SizedBox(height: 41),
                        RichText(
                          text: TextSpan(
                            text: 'Already have an account? ',
                            style: GoogleFonts.poppins(
                              color: AppColors.grey9E,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign in',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.router
                                        .popAndPush(const SignInRoute());
                                  },
                                style: GoogleFonts.poppins(
                                  color: AppColors.lightGreen,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Button(
                          text: 'CREATE NEW ACCOUNT',
                          loading: loading.value,
                          onTap: () {
                            if (validateMode.value !=
                                AutovalidateMode.onUserInteraction) {
                              validateMode.value =
                                  AutovalidateMode.onUserInteraction;
                            }
                            if (formKey.currentState!.validate()) {
                              context.read<AuthBloc>().add(
                                    AuthEvent.authRegister(
                                      firstName:
                                          firstNameController.text.trim(),
                                      lastName: lastNameController.text.trim(),
                                      email: emailController.text.toLowerCase(),
                                      password: passwordController.text,
                                    ),
                                  );
                            }
                          },
                        ),
                        const SizedBox(height: 13),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'By signing up you agree to our \n',
                            style: GoogleFonts.poppins(
                              color: AppColors.grey9E,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: 'Term of use',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                style: GoogleFonts.poppins(
                                  color: AppColors.lightGreen,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: GoogleFonts.poppins(
                                  color: AppColors.grey9E,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                style: GoogleFonts.poppins(
                                  color: AppColors.lightGreen,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
