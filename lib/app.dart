import 'package:flutter/material.dart';
import 'package:contact_list_app/utility/provider.dart';
import 'package:contact_list_app/theme/appbar.dart';
import 'package:contact_list_app/theme/elevated_button.dart';
import 'package:contact_list_app/theme/textfield.dart';
import 'package:contact_list_app/theme/color.dart';
import 'package:contact_list_app/ui/screen/main_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { return ContactListProvider(); },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
        theme: ThemeData(
          appBarTheme: AppbarStyle.getAppBarTheme(),
          inputDecorationTheme: TextFieldTheme.getTextFieldStyle(),
          elevatedButtonTheme: ElevatedButtonStyle.getElevatedButtonStyle(),
          scaffoldBackgroundColor: whiteColor,
        ),
      ),
    );
  }
}