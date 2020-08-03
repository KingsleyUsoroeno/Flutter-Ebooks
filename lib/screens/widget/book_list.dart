import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_ebooks/data/local/db/book_db.dart';

import 'file:///C:/Users/user/AndroidStudioProjects/flutter_ebooks/lib/data/local/view_model/home_screen_viewmodel.dart';

class BookList extends StatelessWidget {
  final double parentContainerHeight;
  final double childContainerWidth;
  final String bookCategory;
  final double childContainerHeight;
  final HomeScreenViewModel viewModel;
  final _defaultImageUrl =
      "http://books.google.com/books/content?id=oVvuCAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api";

  BookList(
      {@required this.viewModel,
      @required this.bookCategory,
      @required this.parentContainerHeight,
      @required this.childContainerWidth,
      @required this.childContainerHeight});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: viewModel.bookDao.watchAllBooks(),
      builder: (BuildContext context, AsyncSnapshot<List<BookDatabaseModelData>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingIndicator();
        } else if (snapshot.hasData) {
          final bookList = snapshot.data.where((book) => book.bookCategory == bookCategory).toList();
          return Container(
            height: parentContainerHeight,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.length != null ? bookList.length : 0,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                final book = bookList[index];
                return Padding(
                  padding: EdgeInsets.only(right: 10.0, top: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, "bookDetail", arguments: book),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage(book.smallThumbnail ?? _defaultImageUrl), fit: BoxFit.cover)),
                          width: childContainerWidth,
                          height: childContainerHeight,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      _buildAuthorDetails(name: book.title ?? "Andrew", publisher: book.publisher ?? "No Known Publisher", bookPrice: "400")
                    ],
                  ),
                );
              },
            ),
          );
        } else {
          return Center(
            child: Container(
              child: Text("Failed to fetch your E-book please try again"),
            ),
          );
        }
      },
    );
  }

  Widget _buildLoadingIndicator() {
    return CircularProgressIndicator();
  }

  Widget _buildAuthorDetails({double width = 100, String name, String publisher, String bookPrice}) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis),
          Text(publisher, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400), overflow: TextOverflow.ellipsis),
          SizedBox(height: 2.0),
          Text("\$$bookPrice", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.green)),
        ],
      ),
    );
  }
}
