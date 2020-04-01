import 'package:flutter/material.dart';
import 'package:flutternews4/models/NewsModel.dart';

class ItemVertical extends StatelessWidget {
  List list;
  ItemVertical({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: list.length,
        itemBuilder: (context, index){
        Article data = list[index];
        DateTime time = data.dateNews;
        String textTime = "${time.year}/${time.month}/${time.day}";

        return Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: <Widget>[
              Flexible(
                flex:3,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.red,
                  child: Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(data.imageNews, fit: BoxFit.fill,),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(data.titleNews, style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                        softWrap: true,
                        maxLines: 2,
                      ),
                      Text(data.contentNews, style: TextStyle(
                        fontSize: 12,

                        color: Colors.grey,
                      ),
                        maxLines: 3,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Row(

                        children: <Widget>[
                          Icon(Icons.access_time),
                          Text(textTime, softWrap: true),
                          SizedBox(width: 40,),
                          Icon(Icons.bookmark, color: Colors.red,)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
        }
    );
  }
}
