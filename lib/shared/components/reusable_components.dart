import 'package:cis_task_3/models/food_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
late final Color colour;
late final String name;
late final String image;
CategoryCard({required this.colour,required this.name,required this.image});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.26,
      padding: EdgeInsets.only(left: 10,bottom: 7),
      width:width*0.4 ,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
            image: AssetImage('$image')),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
        ),
        color:colour,),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Spacer(),
        Text('$name',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),)
      ],),
    );
  }
}

class FoodCard extends StatelessWidget {
late final FoodModel foodModel;
FoodCard({required this.foodModel});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.35,
      width: width * 0.75,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * 0.2,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                       '${foodModel.image}'))),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            children: [
              Text(
                foodModel.address,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.motorcycle_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text('within 50 mins',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
          Text(
            foodModel.cat,
            style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Icon(Icons.emoji_emotions_outlined),
              SizedBox(
                width: 5,
              ),
              Text(
              foodModel.status,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 20,
              ),
              Text('Delivery: Free',
                  style: TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}

class CatBuilder extends StatelessWidget {
late final List model;
CatBuilder({required this.model});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: height * 0.35,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>FoodCard(foodModel: model[index]),
          separatorBuilder: (context,index)=>SizedBox(width: 20,),
          itemCount: model.length),
    );
  }
}


