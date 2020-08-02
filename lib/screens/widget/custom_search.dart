import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: TextFormField(
              controller: _textEditingController,
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
    );
  }
}
