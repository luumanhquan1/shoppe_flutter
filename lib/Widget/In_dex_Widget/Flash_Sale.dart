import 'package:flutter/material.dart';
Padding flashSale(BuildContext context,double height){
return Padding(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  child: Container(
    width: double.infinity,
    height: height*0.33,
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                height: 45,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FLASH',style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    Text('SALE',style: TextStyle(
                      color: Colors.red,
                      fontSize: 19,
                    ),),
                    Container(
                        width: 25,
                        height: 18,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(2))
                        ),
                        child: Center(
                          child: Text('00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                    ),
                    Container(
                        width: 25,
                        height: 18,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(2))
                        ),
                        child: Center(
                          child: Text('00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                    ),
                    Container(
                        width: 25,
                        height: 18,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(2))
                        ),
                        child: Center(
                          child: Text('00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                    )
                  ],
                ),
              ),
                    Container(
                      width: 85,
                      height: 35,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Xem tất cả'),
                          Icon(Icons.arrow_forward_ios_sharp,size: 10,)
                        ],
                      ),
                    )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: height*0.28-5,
          color: Colors.white,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (context,index){
              return
                Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Container(
                  height: height*0.28-36,
                  width: 160,
                  color: Colors.white,
                  child:index==8?Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2,color: Colors.red)
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.red,),
                          ),
                        ),
                        Text('Xem tất cả',style: TextStyle(color: Colors.red,fontSize: 15),)
                      ],
                    ),
                  ):
                  Column(
                    children: [
                      Container(
                        width: 160,
                        height: 160,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img/sale.png')
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text('đ${'53.000'}',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                 child: Stack(
                   children: [
                     Container(
                       height: 20,
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.all(Radius.circular(15))
                       ),
                     ),
                     Container(
                       height: 20,
                       width: 9,
                       decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(15),
                             topLeft: Radius.circular(15),
                           )
                       ),
                     ),
                     Center(
                       child:Text('ĐÃ BÁN ${0}',style: TextStyle(color: Colors.white),),
                     )

                   ],
                 )
               )
                    ],
                  ),
                ),
              );
            }
          ),
        )
      ],
    ),
  ),

);
}