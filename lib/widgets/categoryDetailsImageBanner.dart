import 'package:flutter/material.dart';

Widget CategoryDetailImageBanner (context, img){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: SizedBox(
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 6 / 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            img,
            isAntiAlias: true,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}