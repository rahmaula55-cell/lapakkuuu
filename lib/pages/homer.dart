import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/pencarianmenur.dart';
import 'package:lapakkuuu/services/categorsr.dart';
import 'package:lapakkuuu/widgets/bannerss/bannersr.dart';
import 'package:lapakkuuu/widgets/bannerss/bannersr1.dart';
import 'package:lapakkuuu/widgets/categowr.dart';

class Homer extends StatefulWidget {
  const Homer({super.key});

  @override
  State<Homer> createState() => _HomerState();
}

class _HomerState extends State<Homer> {
  TextEditingController _pencarian = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.purple.shade700),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                  icon: Icon(Icons.shopping_basket, color: Colors.black),
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
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pencarianmenur()),
                ),
                child: Text("Pencarian"),
              ),
              SizedBox(height: 20),
              //Banner
              SizedBox(
                width: size.width,
                height: 150,
                child: PageView(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  children: [Bannersr(), Bannersr1()],
                ),
              ),
              //
              // categories
              SizedBox(height: 35),
              Container(
                width: size.width,
                height: 300,
                margin: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: iyaa.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, i) => Categowr(
                    icon: iyaa[i].icon,
                    title: iyaa[i].title,
                    color: iyaa[i].color,
                    page: iyaa[i].page,
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
