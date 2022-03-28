import 'package:cis_task_3/models/food_model.dart';
import 'package:cis_task_3/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int val=1;
void setRadioValue(current){
 setState(() {
   val=current;
 });
}
  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Center(child: Text('Change Language'),),
             content: Container(
               height: 120,
               child: Column(
                 children: [
                   RadioListTile(
                       title: Text('English'),
                       value: 1, groupValue: FoodModel.val, onChanged: (int? value)
                   {
                     setState(() {
                     FoodModel.val=value!;
                     print(FoodModel.val);
                     if(translator.currentLanguage=='en'){
                       Navigator.pop(context);
                     }else{
                       translator.setNewLanguage(context, newLanguage: 'en');
                       Navigator.pop(context);
                     }
                     });
                   }),
                   RadioListTile(
                       title: Text('Arabic'),
                       value: 2,
                       groupValue: FoodModel.val,
                       onChanged: (int? value)
                       {
                        setState(() {

                        FoodModel.val=value!;
                        print(FoodModel.val);
                          if(translator.currentLanguage=='en'){
                            Navigator.pop(context);
                          }else{
                            translator.setNewLanguage(context, newLanguage: 'en');
                            Navigator.pop(context);
                          }
                        });
                       }),
                 ],
               ),
             ),
            ));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Language',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'English',
                  style: TextStyle(color: kPrimaryColor, fontSize: 16),
                )
              ],
            ),
            onTap: () {
              openDialog();
            },
          )
        ],
      ),
    );
  }
}
