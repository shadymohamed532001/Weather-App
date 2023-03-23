import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
    MenuIcon({ this.color,this.onTap});

  Color? color;
    void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 45,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 55,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                color: color
            ),
          )

        ],
      ),
    );
  }
}
