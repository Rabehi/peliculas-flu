class Cast {
  List<Actor> actores = new List();

  Cast.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    jsonList.forEach((item) {
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }
}

class Actor {
  bool adult;
  int gender;
  int id;
  String name;
  String originalName;
  double popularity;
  String profilePath;
  int castId;
  String character;
  String creditId;
  int order;
  String job;

  Actor({
    this.adult,
    this.gender,
    this.id,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
    this.job,
  });

  Actor.fromJsonMap(Map<String, dynamic> json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    name = json['name'];
    originalName = json['original_name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
    castId = json['cast_id'];
    character = json['character'];
    creditId = json['credit_id'];
    order = json['order'];
    job = json['job'];
  }

  getFotorImg() {
    if (profilePath == null) {
      return 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.slotcharter.net%2Fwp-content%2Fuploads%2F2020%2F02%2Fno-avatar.png&imgrefurl=https%3A%2F%2Fwww.slotcharter.net%2Fteams%2Fjavier-gonzalez%2Fno-avatar%2F&tbnid=htXKixAcxjebdM&vet=12ahUKEwihgqPL0pjtAhWx1eAKHTLzCFAQMygAegUIARCPAQ..i&docid=u2TU37iirip4MM&w=512&h=512&q=no%20avatar&ved=2ahUKEwihgqPL0pjtAhWx1eAKHTLzCFAQMygAegUIARCPAQ';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }
}
