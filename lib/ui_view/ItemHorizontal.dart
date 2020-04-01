import 'package:flutter/material.dart';

class ItemHorizontal extends StatelessWidget {
  List list;
  ItemHorizontal({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: list.length,
        itemBuilder: (context, index){
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 16, right: 16, top: 4 , bottom: 16),
            child: Card(
              elevation: 3,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(24)
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(24),
                      child: Image.network(list[index].imageNews, fit: BoxFit.fill,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Text(list[index].titleNews, softWrap: true, style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      backgroundColor: Colors.red
                    ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
