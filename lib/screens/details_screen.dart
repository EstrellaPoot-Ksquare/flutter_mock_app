import 'package:flutter/material.dart';
import 'package:flutter_mock_app/screens/series.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Series arguments = ModalRoute.of(context)!.settings.arguments as Series;
    print('arguments: ${arguments.name}');
    return Scaffold(
        appBar: AppBar(
          title: Text('${arguments.name}'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.network(arguments.image!.medium.toString()),
            Text('${arguments.language}'),
            Expanded(
              child: ListView.builder(
                itemCount: arguments.genres!.length,
                itemBuilder: (context, index) {
                  var genre = arguments.genres![index];
                  return Text(genre);
                },
              ),
            )
          ],
        ));
  }
}
