import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ebooks/data/local/db/book_db.dart';
import 'package:flutter_ebooks/data/remote/repo/book_repository.dart';
import 'package:flutter_ebooks/screens/widget/book_list.dart';
import 'package:flutter_ebooks/screens/widget/custom_search.dart';
import 'package:stacked/stacked.dart';

import 'file:///C:/Users/user/AndroidStudioProjects/flutter_ebooks/lib/data/local/view_model/home_screen_viewmodel.dart';
import 'file:///C:/Users/user/AndroidStudioProjects/flutter_ebooks/lib/data/remote/service/book_api_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dio = Dio(); // Provide a Dio instance to the client
    final client = BookApiService(dio); // Initialise the client

    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      viewModelBuilder: () => HomeScreenViewModel(bookRepository: BookRepository(bookApi: client), bookDao: BookDatabase().bookDao),
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
                  CustomSearch(),
                  SizedBox(height: 20.0),
                  //  TRENDING BOOKS LIST CATEGORY
                  _buildTextHeader(leadingTitle: "Trending", endTitle: "VIEW ALL"),
                  _buildTrendingBookList(viewModel: viewModel),
                  Divider(thickness: 1.0),
                  SizedBox(height: 20.0),
                  _buildTextHeader(leadingTitle: "Romantic", endTitle: "VIEW ALL"),
                  //  ROMANTIC BOOKS LIST CATEGORY
                  _buildRomanticBookList(viewModel: viewModel)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextHeader({String leadingTitle, String endTitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(leadingTitle, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: "Opensans")),
            Text("Leading retailer of ebooks", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300, fontFamily: "Opensans")),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(endTitle, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }

  Widget _buildTrendingBookList({HomeScreenViewModel viewModel}) {
    return BookList(
        viewModel: viewModel,
        bookCategory: "trending",
        parentContainerHeight: 290,
        childContainerWidth: 152,
        childContainerHeight: 200);
  }

  Widget _buildRomanticBookList({HomeScreenViewModel viewModel}) {
    return BookList(
        viewModel: viewModel,
        bookCategory: "Romance",
        parentContainerHeight: 250.0,
        childContainerWidth: 100,
        childContainerHeight: 151);
  }
}
