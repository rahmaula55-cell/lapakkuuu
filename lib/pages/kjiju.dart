import 'package:flutter/material.dart';
import 'package:uts_remidi/models/produk_model.dart';
import 'package:uts_remidi/services/produk_srvice.dart';
import 'package:uts_remidi/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProdukModel> favorite = [];
  List<ProdukModel> nonfavorite = [];
  @override
  void initState() {
    super.initState();
    prdk.forEach((element) {
      if (element.favorite) {
        favorite.add(element);
      } else {
        nonfavorite.add(element);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.person, color: Colors.white),
            Text(
              "SHOPEE",
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
          ),
        ),
      ),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: size.width,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Favorite"),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [Icon(Icons.list), Text("All")],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: favorite.length,
                          itemBuilder: (context, i) {
                            {
                              return Card(
                                margin: EdgeInsets.all(10),
                                elevation: 3,
                                child: Container(
                                  width: size.width - 150,
                                  height: 100,
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        favorite[i].imageUrl,
                                        width: 100,
                                        height: 100,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              favorite[i].name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              favorite[i].price.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    ),
                                                    Text(
                                                      favorite[i].ratings
                                                          .toString(),
                                                      style: TextStyle(
                                                        color: Colors.pink,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                IconButton(
                                                  icon: Icon(
                                                    Icons.favorite,
                                                    color: Colors.pink,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      final item = favorite
                                                          .removeAt(i);
                                                      item.favorite = false;
                                                      nonfavorite.add(item);
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: prdk.length / 2 * 210,
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.7,
                    ),
                    shrinkWrap: true,
                    itemCount: nonfavorite.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, i) {
                      return ProductWidget(
                        name: nonfavorite[i].name,
                        price: nonfavorite[i].price.toString(),
                        ratting: nonfavorite[i].ratings.toString(),
                        imageUrl: nonfavorite[i].imageUrl,
                        width: size.width / 2 - 15,
                        height: 100,
                        kei: () {
                          setState(() {
                            final item = nonfavorite.removeAt(i);
                            item.favorite = true;
                            favorite.add(item);
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}