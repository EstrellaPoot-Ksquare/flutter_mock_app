class Series {
  String? name;
  String? language;
  List? genres;
  SeriesImages? image;

  Series({
    this.name,
    this.language,
    this.genres,
    this.image,
  });

  Series.fromJson(Map<dynamic, dynamic> json) {
    name = json['name'];
    language = json['language'];
    genres = json['genres'];
    image = SeriesImages.fromJson(json['image']);
  }
}

class SeriesImages {
  String? medium;
  String? original;

  SeriesImages({
    this.medium,
    this.original,
  });

  SeriesImages.fromJson(Map<dynamic, dynamic> json) {
    medium = json['medium'];
    original = json['original'];
  }
}
