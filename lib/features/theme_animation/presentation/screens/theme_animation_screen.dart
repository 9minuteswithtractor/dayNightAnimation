import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/features/moon/service/moon.dart';
import 'package:state_app/features/stars/star.dart';

import 'package:state_app/features/state_home/application/theme_service.dart';
import 'package:state_app/features/sun/service/sun.dart';
import 'package:state_app/features/theme_animation/application/utils/conditional_rendering.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme animation'),
          centerTitle: true,
        ),
        body: Consumer<ThemeService>(
          builder: (context, themeService, child) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  // shadowColor: Colors.black45,
                  elevation: 20.0,
                  child: Container(
                    height: 600.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: themeService.isDarkModeOn
                              ? [
                                  Colors.lightBlue,
                                  Colors.grey.shade900,
                                ]
                              : [
                                  // Colors.white60,
                                  Colors.white70,
                                  Colors.lightBlue,
                                ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.blue,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 10.0,
                            spreadRadius: 7.0,
                          ),
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 75,
                          right: 320,
                          child: AnimatedOpacity(
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 350),
                            child: const StarShine(),
                          ),
                        ),
                        Positioned(
                          top: 200,
                          right: 280,
                          child: AnimatedOpacity(
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 350),
                            child: const StarShine(),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 50,
                          child: AnimatedOpacity(
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 350),
                            child: const StarShine(),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 200,
                          child: AnimatedOpacity(
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 350),
                            child: const StarShine(),
                          ),
                        ),
                        AnimatedPositioned(
                          top: themeService.isDarkModeOn ? 150 : 190,
                          right: themeService.isDarkModeOn ? 100 : -40,
                          duration: const Duration(milliseconds: 450),
                          child: AnimatedOpacity(
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 650),
                            child: const MoonShine(),
                          ),
                        ),
                        AnimatedPadding(
                          duration: const Duration(milliseconds: 250),
                          padding: EdgeInsets.only(
                              top: themeService.isDarkModeOn ? 55 : 3.0),
                          child: const Center(
                            child: SunService(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 300.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0),
                              ),
                              color: themeService.isDarkModeOn
                                  ? Colors.grey.shade800
                                  : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  checkTheme(context).toString(),
                                  style: const TextStyle(
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                Text(
                                  letItBeThemeText(context).toString(),
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Switch(
                                    value: themeService.isDarkModeOn,
                                    onChanged: (_) =>
                                        themeService.toggleTheme()),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
