import 'package:cis_task_3/modules/setting_screen.dart';
import 'package:cis_task_3/shared/components/reusable_components.dart';
import 'package:cis_task_3/shared/cubit/app_cubit.dart';
import 'package:cis_task_3/shared/cubit/app_states.dart';
import 'package:cis_task_3/shared/styles/colors.dart';
import 'package:cis_task_3/shared/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../models/food_model.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                iconTheme:IconThemeData(color: Colors.black),
                title: Column(
                  children: [
                    Text(
                      'Delivering To',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'El Gaish شارع شكري القوتلي',
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
               /* leading: IconButton(
                  color: Colors.black, onPressed: () {
                    Scaffold.of(context).openDrawer();
                },
                  icon: Icon(Icons.menu),
                ),

                */
                actions: [
                  Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.black,
                  )
                ],
              ),
              body: Container(
                margin: EdgeInsets.only(left: 20),
                child: ListView(
                  children: [
                    Container(
                      height: height * 0.14,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        color: kDismissibleColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Your Health and safety is our top priority',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 20,
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            'Learn more',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'What would you like to order,    Amr',
                      style: kLikeOrderStyle,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CategoryCard(
                            image: 'assets/food.png',
                            colour: kPrimaryColor,
                            name: 'Food'),
                        Spacer(),
                        CategoryCard(
                            image: 'assets/firut.png',
                            colour: Colors.green,
                            name: 'Groceries'),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Text(
                      'Groceries and more',
                      style: kLikeOrderStyle,
                    ),
                    CatBuilder(model: FoodModel.groceries),
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Row(children: [
                      Text('All Day desserts',style: kLikeOrderStyle,),
                      SizedBox(width: 4,),
                      Icon(Icons.icecream_outlined),
                      Icon(Icons.cake),
                    ],),
                    CatBuilder(model: FoodModel.desserts,),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      height: height*0.09,
                      margin: EdgeInsets.only(top: 20,right: 20,bottom: 30),
                      child: Center(child: Text('View all restaurants',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    )
                  ],
                ),
              ),
              drawer: Container(
                width: width*0.85,
                child: Drawer(
                  child: ListView(
                    children: [ListTile(
                      trailing:IconButton(
                          icon:Icon(Icons.settings,size: 30,),
                        onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                        },
                      ),title: Row(
                      children: [
                        CircleAvatar(radius: 30,backgroundColor: Colors.green,),
                        SizedBox(width: 10,),
                        Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
                          Text('Amr El -hafy',style: kLikeOrderStyle,),
                          Row(children: [
                            CircleAvatar(radius: 10,backgroundColor: Colors.red,),
                            SizedBox(width: 5,),
                            Text('Egypt',style: TextStyle(color: Colors.grey),)
                          ],)
                        ],),
                      ],
                    ),)],
                  ),
                ),
              ),
          );

  }
}
/*
          Dismissible(
            onDismissed:(dir){
              cubit.removeFrom(0);
            },background: Container(color: Colors.green,)
            ,key: ValueKey('myString'), child: Container(

            color: kDismissibleColor,
            width: 200,
            height: 200
            ,)),

 */
