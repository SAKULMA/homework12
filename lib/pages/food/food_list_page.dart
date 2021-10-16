import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';
import 'package:flutter_food/pages/food/food_details.dart';

class FoodListpage extends StatefulWidget {
  const FoodListpage({Key? key}) : super(key: key);

  @override
  _FoodListpageState createState() => _FoodListpageState();
}

class _FoodListpageState extends State<FoodListpage> {
  var items = [
    FoodItem(id: 1, name: "Golden Shrimp Balls", price: 25, image: 'img.png'),
    FoodItem(id: 2, name: "Tricolor Dango", price: 30, image: 'img_1.png'),
    FoodItem(id: 3, name: "Mora Meat", price: 30, image: 'img_2.png'),
    FoodItem(id: 4, name: "Jewelry Soup", price: 40, image: 'img_3.png'),
    FoodItem(id: 5, name: "ข้าวผัด", price: 30, image: 'padkai.jpg'),
    FoodItem(id: 6, name: "ผัดซีอิ๊ว", price: 40, image: 'pad_see_eew.jpg'),
    FoodItem(id: 7, name: "ราดหน้า", price: 40, image: 'radna.jpg'),
    FoodItem(id: 8, name: "ผัดไทย", price: 40, image: 'Padthai.jpg'),
    FoodItem(id: 9, name: "ข้าวไข่เจียว", price: 50, image: 'kaijeaw.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];

          return Card(
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, FoodDetail.routeName,
                  arguments: item,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text('${item.price} บาท',style: TextStyle(fontSize: 15.0,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}