import 'package:flutter/material.dart';

Widget itemWisata(String image, String title, String desc, String time) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 18.0,
      vertical: 6.0,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 14.0,
          ),
          height: 90.0,
          width: 80.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: null,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  desc,
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 10.0,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
