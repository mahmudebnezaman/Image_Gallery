import 'package:examweektwo/views/categorydetail.dart';
import 'package:flutter/material.dart';

Widget CustomGridview (data, crossAxisCount, itemCount) {
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1,
    ),
    itemCount: itemCount,
    itemBuilder: (context, index) {
      return InkWell(
        radius: 16.0,
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryDetails(fetchedData: data[index],
            ),
          ),
        ),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  data[index]['image']!,
                  fit: BoxFit.cover,
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  isAntiAlias: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data[index]['title']!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto'),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}