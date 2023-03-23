
import 'package:flutter/material.dart';

import 'CustomMenuIcon.dart';

class DataPageAppBar extends StatelessWidget {
  const DataPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap:()
            {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          InkWell(
            onTap: ()
            {

            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: MenuIcon(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
