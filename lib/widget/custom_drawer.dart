import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/screens/home-screen.dart';
import 'package:social_media_app/screens/login_screen.dart';
import 'package:social_media_app/screens/profile_screen.dart';
class CustomDrawer extends StatelessWidget {

  buildDrawerOption(Icon icon,String title,Function onTap){
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      onTap: onTap,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200.0,
                width: double.infinity,
                image: AssetImage(
                  currentUser.backgroundImageUrl
                ),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3.0,
                              color: Theme.of(context).primaryColor
                            )
                          ),
                          child: ClipOval(
                            child: Image(
                              image: AssetImage(
                                currentUser.profileImageUrl
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    SizedBox(width: 6.0,),
                    Text(currentUser.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
          buildDrawerOption(
              Icon(Icons.dashboard),
              "Home",
              ()=>Navigator.pushReplacement(
                  context,
                 MaterialPageRoute(builder:(context)=>HomeScreen())
              )
          ),
          buildDrawerOption(
              Icon(Icons.chat),
              "Chat",
                  (){}
              ),
          buildDrawerOption(
              Icon(Icons.location_on),
              "Map",
                  (){}
          ),
          buildDrawerOption(
              Icon(Icons.account_circle),
              "Your profile",
                  ()=>Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder:(context)=>ProfileScreen(user: currentUser,))
              )
          ),
          buildDrawerOption(
              Icon(Icons.settings),
              "Settings",
              (){}
          ),
          Expanded(child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: buildDrawerOption(
                Icon(Icons.directions_run),
                "Log Out",
                    ()=>Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:(_)=>LoginScreen())
                )
            ),
          )),



        ],
      ),
    );
  }
}
