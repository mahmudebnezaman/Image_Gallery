import 'package:examweektwo/widgets/categoryDetailsImageBanner.dart';
import 'package:examweektwo/widgets/customGridView.dart';
import 'package:examweektwo/widgets/customappbar.dart';
import 'package:flutter/material.dart';

import '../consts/strings.dart';

class CategoryDetails extends StatelessWidget {
  final Map fetchedData;

  CategoryDetails({super.key, required this.fetchedData});

  List suggestionData = [];

  initSugestionData() {
    for (var i in data) {
      if (fetchedData['title'] != i['title']) {
        suggestionData.add(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    initSugestionData();
    return Scaffold(
      appBar: MyCustomAppBar(context, fetchedData['title']),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return PortraitView(context, fetchedData, suggestionData);
        } else {
          return LandscapeView(context, fetchedData, suggestionData);
        }
      }),
    );
  }
}

Widget PortraitView(
  context,
  fetchedData,
  data,
) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryDetailImageBanner(
            context,
            fetchedData['image'],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              fetchedData['headline'],
              style: const TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              fetchedData['detail'],
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 51,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {},
              child: const Text(
                'See More',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Suggetions',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          CustomGridview(data, 2, 4),
        ],
      ),
    ),
  );
}

Widget LandscapeView(
  context,
  fetchedData,
  data,
) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: CategoryDetailImageBanner(
              context,
              fetchedData['image'],
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        fetchedData['headline'],
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        fetchedData['detail'],
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 51,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'See More',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Suggetions',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                CustomGridview(data, 3, 6),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
