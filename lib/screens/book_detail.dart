import 'package:flutter/material.dart';
import 'package:flutter_ebooks/data/local/db/book_db.dart';
import 'package:flutter_ebooks/screens/widget/custom_search.dart';

class BookDetailScreen extends StatelessWidget {
  final String _dummyText =
      "Blubber is a thick layer of fat that lies under the skin and over the muscles of whales . . . \n \n When Linda innocently reads out her class project, everyone finds it funny. Linda can’t help it if she’s fat, but what starts as a joke leads to a sustained and cruel ritual of humiliation.  ";

  @override
  Widget build(BuildContext context) {
    final BookDatabaseModelData book = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomSearch(),
                    SizedBox(height: 30.0),
                    Text(book.title ?? "Blubber", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Opensans")),
                    Text(book.publisher ?? "Judy Bloom (Author)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(book.smallThumbnail), fit: BoxFit.cover)),
                            width: 170,
                            height: 235),
                        SizedBox(width: 12.0),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("\$200"),
                                SizedBox(height: 6.0),
                                _buildRating(),
                                SizedBox(height: 6.0),
                                Text("${book.ratingsCount.toString()}"),
                                SizedBox(height: 18.0),
                                _buildCustomBox(icon: Icon(Icons.visibility, size: 20.0), label: "Preview".toUpperCase()),
                                SizedBox(height: 10.0),
                                _buildCustomBox(icon: Icon(Icons.star, size: 20.0), label: "WishList".toUpperCase()),
                                SizedBox(height: 10.0),
                                _buildCustomBox(icon: Icon(Icons.library_books, size: 20.0), label: "Similar".toUpperCase())
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Text(book.description ?? _dummyText,
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, fontFamily: "Opensans")),
                    SizedBox(height: 10.0)
                  ],
                ),
                /*Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                        height: 80.0,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[Icon(Icons.arrow_back), Text("Back")],
                              ),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.0), color: Colors.black),
                                width: 230,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "ADD TO CART",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRating() {
    final stars = [0, 1, 2, 3, 4];
    final starIcon = Icon(Icons.star, color: Colors.yellow, size: 13.0);
    return Row(children: stars.map((e) => starIcon).toList());
  }

  Widget _buildCustomBox({Icon icon, String label}) {
    return Container(
      height: 47.0,
      width: 120,
      color: Color(0xFFF5F5F5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[icon, Text(label, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, fontFamily: "Opensans"))],
      ),
    );
  }
}
