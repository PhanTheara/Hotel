import 'package:flutter/material.dart';
import 'package:hotel_app/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 236, 233, 233),
                offset: Offset(0, 7),
                spreadRadius: 2,
                blurRadius: 16)
          ]),
      child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            for (int i = 0;
                i < (ListCategory.length < ListCategory.length ? i : 8);
                i++)
              i < 7
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 247, 243, 243)
                                    .withOpacity(0.7)),
                            child: ListCategory[i].icon,
                          ),
                          Text(
                            ListCategory[i].Name,
                            style: const TextStyle(fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 247, 243, 243)
                                    .withOpacity(0.7)),
                            child: const Icon(
                              Icons.more_horiz,
                              color: Colors.red,
                            ),
                          ),
                          const Text(
                            'more',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
          ]),
    );
  }
}
