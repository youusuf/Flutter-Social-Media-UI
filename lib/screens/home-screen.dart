import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/models/user_model.dart';
import 'package:social_media_app/widget/custom_drawer.dart';
import 'package:social_media_app/widget/following_users.dart';
import 'package:social_media_app/widget/post_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
 TabController tabController;
 PageController pageController;
@override
  void initState() {
    tabController = TabController(
        length: 2,
        vsync: this
    );
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        brightness: Brightness.light,
        title: Text("FRENZY",style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0
        ),
        ),
        bottom: TabBar(
          labelColor:Theme.of(context).primaryColor,
          labelStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),
          controller: tabController,
         unselectedLabelStyle: TextStyle(
           fontSize: 18.0
         ),
         indicatorWeight: 3.0,
         tabs: [
           Tab(text: "Trending",),
           Tab(text: "Latest",),
         ],
        ),

      ),
      body: ListView(
        children: [
          FollowingUsers(),
          PostsCarousel(
            pageController:pageController,
            title:'Post',
            posts:posts
          )
        ],
      ),
    );
  }
}
