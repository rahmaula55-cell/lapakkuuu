import 'package:flutter/material.dart';
import 'package:lapakkuuu/services/keranjangsr.dart';

class Keranjangr extends StatefulWidget {
  const Keranjangr({super.key});

  @override
  State<Keranjangr> createState() => _KeranjangrState();
}

class _KeranjangrState extends State<Keranjangr> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "KERANJANG",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.purple.shade700),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                height: 5,
                child: PageView(children: []),
              ),
              SizedBox(
                width: size.width - 40,
                height: 600,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) => Card(
                    elevation: 4,
                    child: Container(
                      width: 270,
                      height: 60,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              kerrr[i].image,
                              width: 35,
                              height: 35,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kerrr[i].nama,
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Text(
                                  kerrr[i].subtitle,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
