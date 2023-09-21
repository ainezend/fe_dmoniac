import 'package:flutter/material.dart';

class ProcedurePage extends StatelessWidget {
  ProcedurePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(slivers: [
        //sliver app bar
        SliverAppBar(
          backgroundColor: Color(0xffcc5a71),
          leading: Icon(Icons.menu),
          expandedHeight: 300,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Colors.white,
            ),
            centerTitle: true,
            title: Text('PROSEDUR PENDETEKSIAN'),
          ),
        ),
      ]),
    );
  }
}