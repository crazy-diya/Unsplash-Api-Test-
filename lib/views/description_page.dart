import 'dart:ui';

import 'package:flutter/material.dart';

class ImageDetailsPage extends StatefulWidget {
  var imageData;

  ImageDetailsPage({this.imageData, Key? key}) : super(key: key);

  @override
  State<ImageDetailsPage> createState() => _ImageDetailsPageState();
}

class _ImageDetailsPageState extends State<ImageDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.imageData["urls"]["regular"]),
                fit: BoxFit.fitHeight),
          ),
          child: widget.imageData == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                              color: Colors.grey.withOpacity(0.1),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Likes",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                          Text(
                                              widget.imageData["likes"]
                                                  .toString(),
                                              textAlign: TextAlign.end,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                  widget.imageData["sponsorship"] != null
                                      ? widget.imageData["sponsorship"]
                                                  ["tagline"] !=
                                              null
                                          ? Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text("Tagline",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 18)),
                                                    Container(
                                                      width: 180,
                                                      child: Text(
                                                          widget.imageData[
                                                                  "sponsorship"]
                                                                  ["tagline"]
                                                              .toString(),
                                                          textAlign: TextAlign
                                                              .end,
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      18)),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                              ],
                                            )
                                          : const SizedBox()
                                      : const SizedBox(),
                                  widget.imageData["description"] != null
                                      ? Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("Description",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                Container(
                                                  width: 180,
                                                  child: Text(
                                                      widget.imageData[
                                                              "description"]
                                                          .toString(),
                                                      textAlign: TextAlign.end,
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                  widget.imageData["alt_description"] != null
                                      ? Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("Alt Description",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                Container(
                                                  width: 180,
                                                  child: Text(
                                                      widget.imageData[
                                                              "alt_description"]
                                                          .toString(),
                                                      textAlign: TextAlign.end,
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                  widget.imageData["created_at"] != null
                                      ? Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("Created Date",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                Container(
                                                  width: 180,
                                                  child: Text(
                                                      widget.imageData[
                                                              "created_at"]
                                                          .toString(),
                                                      textAlign: TextAlign.end,
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                  widget.imageData["user"] != null
                                      ? Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("User Name",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                Container(
                                                  width: 180,
                                                  child: Text(
                                                      widget.imageData[
                                                              "user"]["name"]
                                                          .toString(),
                                                      textAlign: TextAlign.end,
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Height & Width",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)),
                                      Text(
                                          "${widget.imageData["height"]} * ${widget.imageData["width"]}",
                                          textAlign: TextAlign.end,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)),
                                    ],
                                  ),
                                ],
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
}
