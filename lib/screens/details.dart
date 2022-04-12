import 'package:flutter/material.dart';
import 'package:travel_go/widgets/icon_badge.dart';

class Details extends StatelessWidget {
  Details({required this.place});

  Map<dynamic, dynamic> place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
              color: Colors.white12,
              size: 24.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          //const SizedBox(height: 10.0),
          //buildSlider(),
          const SizedBox(height: 20),
          buildList(place, context)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.airplanemode_active,
        ),
        onPressed: () {},
      ),
    );
  }

  buildList(place, context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            "${place["img"]}",
            height: 250.0,
            width: MediaQuery.of(context).size.width - 40.0,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "${place["name"]}",
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                maxLines: 2,
                textAlign: TextAlign.left,
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.bookmark,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 14,
              color: Colors.blueGrey[300],
            ),
            const SizedBox(width: 3),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "${place["location"]}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.blueGrey[300],
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "${place["price"]}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            maxLines: 1,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 40),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Details",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            maxLines: 1,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "${place["details"]}",
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }

/*buildSlider() {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "${place["img"]}",
                height: 250.0,
                width: MediaQuery.of(context).size.width - 40.0,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }*/
}
