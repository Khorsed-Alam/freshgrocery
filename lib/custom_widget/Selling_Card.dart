import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Selling_Card extends StatelessWidget {

  final String image;
  final String name;
  final String type;
  final String weight;
  final double price;

  const Selling_Card({
    required this.image,
    required this.name,
    required this.type,
    required this.weight,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              ),
            ]
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,


                  ),
                ),
                child: Positioned(
                    top: 10,
                    right: 10,
                    child: Align(
                      alignment: Alignment.topRight,
                      child:  IconButton(onPressed: (){},
                          icon: Icon(Icons.favorite,color: Colors.white, size: 20,)),)

                ),


              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  SizedBox(
                    height: 1,
                  ),  Text( type,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  SizedBox(
                    height: 1,
                  ),
                  Text(weight, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text( price.toString(),style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                        SizedBox(
                          width: 5,

                        ),

                        IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.brown,size: 20,))
                      ],

                    ),
                  )

                ],
              ),
            )
          ],
        )
    );
  }
}