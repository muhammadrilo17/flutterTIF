import 'package:flutter/material.dart';

Widget headerDetail(BuildContext context, String image) {
  return Container(
    height: 180.0,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    ),
  );
}

Widget headingTextDetail(String heading, String time) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.clip,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.access_time,
              size: 12.0,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 4.0,
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w100,
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget statistic(String time, String price, String popular) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      itemStatistic(
        Icons.access_time,
        time,
        Colors.blue,
      ),
      const SizedBox(
        height: 28.0,
        child: VerticalDivider(
          width: 12.0,
          color: Colors.grey,
        ),
      ),
      itemStatistic(
        Icons.attach_money_rounded,
        price,
        Colors.green,
      ),
      const SizedBox(
        height: 28.0,
        child: VerticalDivider(
          width: 12.0,
          color: Colors.grey,
        ),
      ),
      itemStatistic(
        Icons.star,
        popular,
        Colors.yellow,
      ),
    ],
  );
}

Widget itemStatistic(IconData icon, String desc, Color color) {
  return Column(
    children: [
      Icon(
        icon,
        size: 24.0,
        color: color,
      ),
      const SizedBox(
        height: 8.0,
      ),
      Text(
        desc,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      )
    ],
  );
}

Widget descDetail(String desc) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Deskripsi",
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          desc,
          softWrap: true,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.0,
            height: 1.5,
          ),
        )
      ],
    ),
  );
}
