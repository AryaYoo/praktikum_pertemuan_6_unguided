import "package:flutter/material.dart";


Card buildCard(
    title, String date, String img, String desc, BuildContext context, Widget nextPage) {
  return Card(
    margin: EdgeInsets.all(20),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
          ),
          Divider(),
          SizedBox(height: 20),
          Image.network(img),
          SizedBox(height: 10),
          Text(
            desc,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 50),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: Text("share")),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          nextPage, 
                    ),
                  );
                },
                child: Text("more"),),
            ],
          ),
        ],
      ),
    ),
  );
}