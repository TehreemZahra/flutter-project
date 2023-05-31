import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {

  Widget singleProducts(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network('https://cdn.shopify.com/s/files/1/0604/6276/0102/products/BasilLeaves-336765_1200x.jpg?v=1648110738'),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fresh Basil',style: TextStyle(
                    color: Colors.black,
                    //fontSize: ,
                    fontWeight: FontWeight.bold
                ),),
                Text('50\$/50 Gram ',style: TextStyle(
                    color: Colors.grey,
                    //fontSize: ,
                    fontWeight: FontWeight.bold
                ),),
                Row(children: [
                  Expanded(child: Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),

                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('50 Gram', style:
                          TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                        Center(
                          child: Icon(Icons.arrow_drop_down,
                            color: Colors.yellow,
                            size: 20,),
                        )
                      ],
                    ),
                  )),
                  SizedBox(width: 5,),
                  Expanded(child: Container(

                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.remove, size: 15,color: Color(0xffd0b84c),),
                        Text('1'),
                        Icon(Icons.add, size: 15,color: Color(0xffd0b84c))
                      ],
                    ),

                  )),
                ],),
                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //           height: 30,
                //           width: 150,
                //
                //           child: MaterialButton(onPressed: () {},child: Row(
                //             children: [
                //
                //             ],
                //           ), )),
                //     ),
                //     Expanded(
                //       child: Container(
                //           height: 30,
                //           width: 150,
                //           child: MaterialButton(onPressed: () {},child: Row(
                //             children: [
                //               Expanded(
                //                 child: Text('50 Gram', style: TextStyle(
                //                     color: Colors.black
                //                 ),),
                //               ),
                //               Expanded(
                //                 child: Icon(Icons.arrow_drop_down,
                //                   color: Colors.yellow,
                //                   size: 20,),
                //               )
                //             ],
                //           ), )),
                //     )
                //   ],
                // ),

              ],
            ),
          ),
          ),

        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: const Text('Home',
        style: TextStyle(
          color: Colors.black,
          fontSize: 17
        ) ,),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,
              size: 17, color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop,
                size: 17, color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffd4d181),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration:BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://media.istockphoto.com/id/1409236261/photo/healthy-food-healthy-eating-background-fruit-vegetable-berry-vegetarian-eating-superfood.webp?b=1&s=170667a&w=0&k=20&c=KdkqtpvIHgiMk4ZEqlXDt53NjYYszTccGrnHJKkecF0='),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ) ,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 190,bottom: 10),
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xffd4d181),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50)
                              )
                            ),
                            child: Center(
                              child: Text('Vegi',style: TextStyle(
                                fontSize: 23 ,
                                  color:Colors.white,
                                shadows: [
                                  BoxShadow(
                                      color:Colors.green,
                                    blurRadius: 3,
                                    offset: Offset(2, 2),

                                  )
                                ]
                              ),),
                            ),
                          ),
                        ),
                        Text('30% OFF',style:
                        TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[100],
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('On all vegetables products',style:
                          TextStyle(
                            color: Colors.white,
                          ),),
                        )

                      ],
                    ),
                  ),
                  ),
                  Expanded(child: Container(),

                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasonings',),
                  Text('view all',
                  style: TextStyle(
                    color: Colors.grey
                  ),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits',),
                  Text('view all',
                    style: TextStyle(
                        color: Colors.grey
                    ),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
