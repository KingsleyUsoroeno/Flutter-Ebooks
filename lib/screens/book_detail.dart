import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final String _dummyText =
      "Blubber is a thick layer of fat that lies under the skin and over the muscles of whales . . . \n \n When Linda innocently reads out her class project, everyone finds it funny. Linda can’t help it if she’s fat, but what starts as a joke leads to a sustained and cruel ritual of humiliation.  ";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          hintText: "Search eBook",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.0),
                Text("Blubber", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Opensans")),
                Text("Judy Bloom (Author)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 170,
                      height: 235,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 12.0),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("\$200"),
                            SizedBox(height: 6.0),
                            _buildRating(),
                            SizedBox(height: 6.0),
                            Text("646 Ratings"),
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
                Text(_dummyText, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, fontFamily: "Opensans")),
                Expanded(
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
                )
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
