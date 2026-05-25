import 'package:flutter/material.dart';
import 'package:lapakkuuu/services/percariankei_service.dart';
import 'package:lapakkuuu/widgets/pencariankei_widget.dart';

class PencariankeiPage extends StatefulWidget {
  const PencariankeiPage({super.key});

  @override
  State<PencariankeiPage> createState() => _PencariankeiPageState();
}

class _PencariankeiPageState extends State<PencariankeiPage> {
  TextEditingController _pencarian = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(color: Colors.purple.shade700),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _pencarian,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "pencarian",
                  alignLabelWithHint: true,
                  prefixIcon: Icon(Icons.search_rounded),
                  focusColor: Colors.blueAccent,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(400),
                      bottomLeft: Radius.circular(400),
                      bottomRight: Radius.circular(400),
                      topRight: Radius.circular(400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pen.length,
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
                                pen[i].imageUrl,
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
                                      pen[i].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      pen[i].price.toString(),
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
                                              pen[i].ratings
                                                  .toString(),
                                              style: TextStyle(
                                                color: Colors.pink,
                                              ),
                                            ),
                                          ],
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
          height: pen.length / 2 * 210,
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            shrinkWrap: true,
            itemCount: pen.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, i) {
              return PencariankeiWidget(
                name: pen[i].name,
                price: pen[i].price.toString(),
                ratting: pen[i].ratings.toString(),
                imageUrl: pen[i].imageUrl,
                width: size.width / 2 - 15,
                height: 100,
              );
            },
          ),
         ),
          }
          ]
  )
  );



  }
}
