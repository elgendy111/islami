import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = '/hadeth_details';
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(hadeth.title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.06,
            horizontal: MediaQuery.of(context).size.width * 0.07,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppTheme.white,
          ),
          child: hadeth.content.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : ListView.builder(
                  itemBuilder: (_, index) => Text(
                    hadeth.content[index],
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  itemCount: hadeth.content.length,
                ),
        ),
      ),
    );
  }
}
