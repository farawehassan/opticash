import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';
import 'package:opticash/ui/ui.dart';

@RoutePage()
class WelcomeScreen extends HookWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: AppColors.black09,
      body: Stack(
        children: [
          FadeAnimation(
            delay: 0.4,
            child: AppAssets.images.pattern.image(
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          FadeAnimation(
            delay: 0.5,
            child: Padding(
              padding: const EdgeInsets.only(top: 187, right: 43.5),
              child: AppAssets.images.pattern2.image(
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Stack(
              children: [
                FadeAnimation(
                  delay: 0.7,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: AppAssets.images.people1.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 0.8,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 145),
                      child: AppAssets.images.people2.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 0.9,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80, left: 60),
                      child: AppAssets.images.people3.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 100),
                      child: AppAssets.images.people4.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1.1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70, right: 95),
                      child: AppAssets.images.people5.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1.2,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: AppAssets.images.people6.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1.3,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 65,
                      ),
                      child: AppAssets.images.people7.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1.4,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 145, right: 5),
                      child: AppAssets.images.people8.image(
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 80),
              FadeAnimation(
                delay: 1.5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: AppAssets.images.mainPeople.image(
                    width: 164.709,
                    height: 164.709,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FadeAnimation(
                        delay: 1,
                        child: Text(
                          'Send Money faster\nthan imagined',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      FadeAnimation(
                        delay: 1.1,
                        child: Text(
                          'Opticash provides you the fastest\nremittance to send and receive money!',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyCF,
                          ),
                        ),
                      ),
                      const SizedBox(height: 37),
                      SizedBox(
                        height: 2,
                        width: 220,
                        child: ListView.separated(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 68,
                              height: 2,
                              decoration: BoxDecoration(
                                color: index > 0
                                    ? AppColors.greyA0
                                    : AppColors.greenC1,
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(width: 3),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Button(
                        theme: const CustomButtonTheme.gradient(),
                        text: 'Create New Account',
                        onTap: () => context.router.push(const RegisterRoute()),
                      ),
                      const SizedBox(height: 13),
                      Center(
                        child: TextButton(
                          onPressed: () =>
                              context.router.push(const SignInRoute()),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
