import 'package:flutter/material.dart';
import 'package:flutter_mock_app/controller/series_controller.dart';
import 'package:flutter_mock_app/screens/series.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: SeriesController().fetchSeries(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // print(snapshot.data);
              List<Series> series = snapshot.data as List<Series>;

              return ListView.builder(
                itemCount: series.length,
                itemBuilder: (context, index) {
                  Series serie = series[index];
                  return ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/details',
                          arguments: serie);
                    },
                    leading: Image.network(serie.image!.medium.toString()),
                    title: Text('${serie.name}'),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
