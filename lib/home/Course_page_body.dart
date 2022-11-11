import 'package:flutter/material.dart';

class CoursePageBody extends StatefulWidget {
  const CoursePageBody({Key? key}) : super(key: key);

  @override
  _CoursePageBodyState createState() => _CoursePageBodyState();
}

class _CoursePageBodyState extends State<CoursePageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, Position) {
            return _buildPageItem(Position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
          image:
              DecorationImage(image: AssetImage("assets/image/course1.png"))),
    );
  }
}
