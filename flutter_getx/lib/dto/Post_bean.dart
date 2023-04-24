class PostBean {
  int userId;
  int id;
  String title;
  String body;

  PostBean({this.userId = -1, this.id = -1, this.title = "", this.body = ""});

  factory PostBean.fromJson(Map<String, dynamic> json) {
    return PostBean(
      userId: json["userId"] ?? -1,
      id: json["id"] ?? -1,
      title: json["title"],
      body: json["body"],
    );
  }
}
