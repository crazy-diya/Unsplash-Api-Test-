import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app_mart/views/description_page.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                  child: Text(
                    "Unsplash Images",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ),
              Expanded(
                child: data == null
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ImageDetailsPage(imageData: data[index]),
                          )),
                          child: Card(
                              borderOnForeground: false,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            data[index]["urls"]["small"]),
                                        fit: BoxFit.cover)),
                              )),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  loadData() async {
    try {
      var response = await Dio().get(
          'https://api.unsplash.com/photos/?client_id=Z7zCrWFjBZIRhwIDU9Hx05XyylxitXIt7V5DBjxuhlU');
      setState(() => {data = response.data});

      print(data.length);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
