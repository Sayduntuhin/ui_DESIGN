import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  final List<Map<String, String>> items;

  const VerticalList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final movie = items[index];
              return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 160,
                        child: Stack(children: [
                          Container(
                            width: 250,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(movie['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 160,
                                height: 6,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10)),
                                ),
                              ))
                        ]),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "${movie['title']}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ));
            }));
  }
}
