import 'dart:io';

import 'package:flutter/material.dart';

AppBar MyCustomAppBar (context, title) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    leading: InkWell(
      onTap: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          exit(0);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xFF7ACA5E),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
          size: 20,
        ),
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
    actions: const [
      Icon(
        Icons.more_vert,
        color: Colors.white,
        size: 22,
      )
    ],
  );
}