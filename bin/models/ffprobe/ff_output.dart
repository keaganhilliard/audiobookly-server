import 'ff_chapter.dart';
import 'ff_format.dart';
import 'ff_stream.dart';

class FFOutput {
  FFOutput({
    required this.streams,
    required this.chapters,
    required this.format,
  });

  List<FFStream> streams;
  List<FFChapter> chapters;
  FFFormat format;

  factory FFOutput.fromJson(Map<String, dynamic> json) => FFOutput(
        streams: List<FFStream>.from(
            json["streams"].map((x) => FFStream.fromJson(x))),
        chapters: List<FFChapter>.from(
            json["chapters"].map((x) => FFChapter.fromJson(x))),
        format: FFFormat.fromJson(json["format"]),
      );

  Map<String, dynamic> toJson() => {
        "streams": List<dynamic>.from(streams.map((x) => x.toJson())),
        "chapters": List<dynamic>.from(chapters.map((x) => x.toJson())),
        "format": format.toJson(),
      };
}
