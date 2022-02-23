import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScroll extends StatefulWidget {
  const HomeScroll({Key? key}) : super(key: key);

  @override
  _HomeScrollState createState() => _HomeScrollState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String subTitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subTitle,
  });
}

class ShoePage extends StatelessWidget {
  var item;

  ShoePage({
    Key? key,
    required this.item,
  }) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.1,
        title: Text(
          'Logo',
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Ink.image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Insurance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Ink.image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'UAE Attraction',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Ink.image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Holiday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.network(
                    item.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  item.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeScrollState extends State<HomeScroll> {
  // DateTime date = DateTime.now();
  // DateTime onlyDate = DateTime(now.year, now.month, now.day);
  //
  // get child => null;
  //
  // static get now => null;
  // Future<Null> selectTimePicker(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: date,
  //       firstDate: DateTime(2020),
  //       lastDate: DateTime(2050));
  //   if (picked != null && picked != date) {
  //     setState(() {
  //       date = picked;
  //       print(date.toString());
  //     });
  //   }
  // }

  // int _index = 0;
  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        width: 250,
        child: Column(children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Material(
                  child: Ink.image(
                    image: NetworkImage(item.urlImage),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoePage(item: item))),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            item.subTitle,
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      );

  //list card items
  List<CardItem> items = [
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: ' Nike Run shoe',
      subTitle: '\$99',
    ),
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      title: ' Nike Run shoe',
      subTitle: '\$99',
    ),
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
      title: ' Nike Run shoe',
      subTitle: '\$99',
    ),
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: ' Nike Run shoe',
      subTitle: '\$99',
    ),
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1582588678413-dbf45f4823e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
      title: ' Nike Run shoe',
      subTitle: '\$99',
    ),
  ];
  @override
  /* Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scroll view'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 160.0,
              child: Card(
                child: Wrap(
                  children: [
                    Image.network(
                        "https://cdn.iconscout.com/icon/free/png-256/star-bookmark-favorite-shape-rank-16-28621.png"),
                    ListTile(
                      title: Text("title"),
                      subtitle: Text("sub Title"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }*/
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 250,
              child: ListView.separated(
                padding: EdgeInsets.all(16),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => buildCard(item: items[index]),
                separatorBuilder: (context, _) => SizedBox(
                  width: 10,
                ),
              ),
            ),
            // ignore: deprecated_member_use
            // FlatButton(
            //   child: Text(date.toString()),
            //   color: Colors.green,
            //   textColor: Colors.white,
            //   onPressed: () {
            //     selectTimePicker(context);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class Hello extends HomeScroll {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.1,
        title: Text(
          'Logo',
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Ink.image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Insurance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Ink.image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'UAE Attraction',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Ink.image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/3643/3643948.png'),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Holiday',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
