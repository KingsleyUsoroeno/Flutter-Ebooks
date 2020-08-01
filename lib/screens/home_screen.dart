import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ebooks/data/local/home_screen_viewmodel.dart';
import 'package:flutter_ebooks/data/remote/repo/book_repository.dart';
import 'package:stacked/stacked.dart';

import 'file:///C:/Users/user/AndroidStudioProjects/flutter_ebooks/lib/data/remote/service/book_api_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dio = Dio(); // Provide a Dio instance to the client
    final client = BookApiService(dio); // Initialise the client

    final _defaultImageUrl =
        "http://books.google.com/books/content?id=oVvuCAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api";
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      viewModelBuilder: () => HomeScreenViewModel(bookRepository: BookRepository(bookApi: client)),
      onModelReady: (model) {
        model.fetchBook(bookName: "trending");
        model.fetchRomanticBooks();
      },
      builder: (context, viewModel, widget) => SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
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
                  SizedBox(height: 20.0),
                  //  TRENDING BOOKS LIST CATEGORY
                  _buildTextHeader(leadingTitle: "Trending", endTitle: "VIEW ALL"),
                  viewModel.trendingBooks == null
                      ? _buildLoadingIndicator()
                      : Container(
                          height: 290,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: viewModel.trendingBooks != null ? viewModel.trendingBooks.length : 0,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              final book = viewModel.trendingBooks[index];
                              print("imageUrl is ${book.book.imageLinks}");
                              return Padding(
                                padding: EdgeInsets.only(right: 10.0, top: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          image:
                                              DecorationImage(image: NetworkImage(book.book.imageLinks.smallThumbnail), fit: BoxFit.cover)),
                                      width: 152,
                                      height: 200,
                                    ),
                                    SizedBox(height: 8.0),
                                    _buildAuthorDetails(
                                        width: 152,
                                        name: book.book.title != null ? book.book.title : "Margaret",
                                        publisher: book.book.publisher != null ? book.book.publisher : "No Recorded Publisher",
                                        bookPrice: "400")
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                  Divider(thickness: 1.0),
                  SizedBox(height: 20.0),
                  _buildTextHeader(leadingTitle: "Romantic", endTitle: "VIEW ALL"),
                  //  ROMANTIC BOOKS LIST CATEGORY
                  viewModel.romanticBooks == null
                      ? _buildLoadingIndicator()
                      : Container(
                          height: 250,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: viewModel.romanticBooks != null ? viewModel.romanticBooks.length : 0,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              final romanticBooks = viewModel.romanticBooks[index];
                              return Padding(
                                padding: EdgeInsets.only(right: 10.0, top: 14.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () => Navigator.pushNamed(context, "bookDetail"),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(romanticBooks.book.imageLinks.smallThumbnail), fit: BoxFit.cover)),
                                        width: 100,
                                        height: 151,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    _buildAuthorDetails(name: "Andrew", publisher: "Andrews Publisher", bookPrice: "400")
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return CircularProgressIndicator();
  }

  Widget _buildTextHeader({String leadingTitle, String endTitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              leadingTitle,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: "Opensans"),
            ),
            Text(
              "Leading retailer of ebooks",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            endTitle,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _buildAuthorDetails({double width = 100, String name, String publisher, String bookPrice}) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis),
          Text(publisher, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400), overflow: TextOverflow.ellipsis),
          Text("\$$bookPrice", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.green)),
        ],
      ),
    );
  }
}
