import 'package:cis_task_3/models/food_model.dart';
import 'package:cis_task_3/shared/cubit/app_cubit.dart';
import 'package:cis_task_3/shared/cubit/app_states.dart';
import 'package:cis_task_3/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/home_layout.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );

  runApp(
    LocalizedApp(
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
        return Directionality(
          textDirection: FoodModel.val==1?TextDirection.ltr:TextDirection.rtl,
          child: MaterialApp(
              home: HomeLayout(),
              theme:lightTheme,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: translator.delegates, // Android + iOS Delegates
              locale: translator.locale, // Active locale
              supportedLocales: translator.locals(),
            ),
        )
        ;

  }
}
