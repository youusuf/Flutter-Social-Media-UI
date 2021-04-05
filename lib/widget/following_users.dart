import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Text("Following",style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0
          ),),
        ),
        Container(
          height: 70.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10.0),
              itemCount: users.length,
              itemBuilder:(context,index){
                User user  = users[index];
                return GestureDetector(
                  onTap:(){

                  },
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0,2),
                            blurRadius: 6.0
                        )],
                        border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2.0
                        )
                    ),
                    child: ClipOval(
                      child: Image(
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                          image: AssetImage(
                              user.profileImageUrl
                          )),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
