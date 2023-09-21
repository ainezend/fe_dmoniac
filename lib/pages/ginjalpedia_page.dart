import 'package:flutter/material.dart';

class GinjalpediaPage extends StatelessWidget {
  GinjalpediaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(slivers: [
        
        //sliver app bar
        SliverAppBar(
          backgroundColor: Color(0xffcc5a71),
          //title: Text('G I N J A L P E D I A'),
          expandedHeight: 300,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Colors.white,
            ),
            centerTitle: true,
            title: Text('G I N J A L P E D I A'),
          ),
        ),

        //sliver items
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          ),
        ),

        //sliver items
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          ),
        ),

        //sliver items
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          ),
        ),

        //sliver items
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          ),
        ),

        //sliver items
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}