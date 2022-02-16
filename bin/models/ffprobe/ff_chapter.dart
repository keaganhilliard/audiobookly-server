class FFChapter {
  FFChapter({
    required this.id,
    required this.timeBase,
    required this.start,
    required this.startTime,
    required this.end,
    required this.endTime,
    required this.tags,
  });

  int id;
  String timeBase;
  int start;
  String startTime;
  int end;
  String endTime;
  FFChapterTags tags;

  factory FFChapter.fromJson(Map<String, dynamic> json) => FFChapter(
        id: json["id"],
        timeBase: json["time_base"],
        start: json["start"],
        startTime: json["start_time"],
        end: json["end"],
        endTime: json["end_time"],
        tags: FFChapterTags.fromJson(json["tags"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "time_base": timeBase,
        "start": start,
        "start_time": startTime,
        "end": end,
        "end_time": endTime,
        "tags": tags.toJson(),
      };
}

class FFChapterTags {
  FFChapterTags({
    required this.title,
  });

  String title;

  factory FFChapterTags.fromJson(Map<String, dynamic> json) => FFChapterTags(
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
      };
}
