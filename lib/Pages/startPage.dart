import 'package:flutter/material.dart';


class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover
                )
              ),
               child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.2)
                          ]
                      )
                  ),
                 child: Padding(
                   padding: EdgeInsets.only(top:50.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       new Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: <Widget>[
                           IconButton(
                             icon: Icon(Icons.favorite,color: Colors.white,),
                           ),
                           IconButton(
                             icon: Icon(Icons.shopping_cart,color: Colors.white,),
                           )
                         ],
                       ),
                       new Padding(
                         padding: const EdgeInsets.all(20.0),

                         child: new Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             new Text("Our New Products",style: TextStyle(color: Colors.white,
                               fontSize: 30,
                               fontWeight: FontWeight.bold
                             ),),
                             SizedBox(height: 10,),
                             new Row(
                               children: <Widget>[
                                 new Text("View more",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                 SizedBox(width: 5,),
                                 new Icon(Icons.arrow_forward_ios ,color: Colors.white,size: 15,)
                               ],
                             )
                           ],
                         ) ,
                       ),
                     ],
                   ),
                 ),
                )
            ),
            new Container(
              padding: EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text("Categories",style:
                      TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      new Text("All"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  new Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategory(image: 'images/parfiume.jpg',title: "Beauty"),
                        makeCategory(image: 'images/clothe.jpg',title: "Clothes"),
                        makeCategory(image: 'images/glassess.jpg',title: "Glassess"),
                        makeCategory(image: 'images/shoes.jpg',title: "Shoes"),
                        makeCategory(image: 'images/bags.jpg',title: "Bags"),
                      ],
                    ),
                  ),
              SizedBox(height: 40,),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text("Best Selling by Category",style:
                  TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  new Text("All"),
                ],
              ),
              SizedBox(height: 20,),
              new Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeBestCategory(image: 'images/teach.jpg',title: "Tech"),
                    makeBestCategory(image: 'images/clothe.jpg',title: "Clothes"),
                    makeBestCategory(image: 'images/glassess.jpg',title: "Glassess"),
                    makeBestCategory(image: 'images/shoes.jpg',title: "Shoes"),
                    makeBestCategory(image: 'images/bags.jpg',title: "Bags"),
                  ],
                ),
              ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget makeCategory({title,image}){
      return AspectRatio(
        aspectRatio: 2 / 2.5,
        child: Container(
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image:AssetImage(image),
                    fit: BoxFit.cover
                )
            ),
            child:new Container(
              padding: EdgeInsets.all(10.0) ,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.0),
                    ]
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: new Text(title,
                  style: TextStyle
                    (color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              ),

            )
        ),
      );
  }
  Widget makeBestCategory({title,image}){
    return AspectRatio(
      aspectRatio: 3 / 2.5,
      child: Container(
          margin: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image:AssetImage(image),
                  fit: BoxFit.cover
              )
          ),
          child:new Container(
            padding: EdgeInsets.all(10.0) ,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.0),
                  ]
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: new Text(title,
                style: TextStyle
                  (color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ),

          )
      ),
    );
  }

}
