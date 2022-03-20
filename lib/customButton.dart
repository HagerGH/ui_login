import 'package:flutter/material.dart';
import 'package:ux/mytheme.dart';


class CustomButton extends StatelessWidget {

  Function()? onTap;
  String? title;
  CustomButton({
    this.onTap,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: MyTheme.primaryColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Center(child: Text(title! , style: const TextStyle(color: Colors.white),)),
        width: 300,
        height: 50,
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}