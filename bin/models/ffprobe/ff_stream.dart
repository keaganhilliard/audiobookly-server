class FFStream {
  FFStream({
    required this.index,
    required this.codecName,
    required this.codecLongName,
    required this.profile,
    required this.codecType,
    required this.codecTagString,
    required this.codecTag,
    required this.sampleFmt,
    required this.sampleRate,
    required this.channels,
    required this.channelLayout,
    required this.bitsPerSample,
    required this.rFrameRate,
    required this.avgFrameRate,
    required this.timeBase,
    required this.startPts,
    required this.startTime,
    required this.durationTs,
    required this.duration,
    required this.bitRate,
    required this.nbFrames,
    required this.disposition,
    this.tags,
    required this.width,
    required this.height,
    required this.codedWidth,
    required this.codedHeight,
    required this.closedCaptions,
    required this.hasBFrames,
    required this.sampleAspectRatio,
    required this.displayAspectRatio,
    required this.pixFmt,
    required this.level,
    required this.colorRange,
    required this.colorSpace,
    required this.chromaLocation,
    required this.refs,
    required this.bitsPerRawSample,
  });

  int index;
  String codecName;
  String codecLongName;
  String profile;
  String codecType;
  String codecTagString;
  String codecTag;
  String sampleFmt;
  String sampleRate;
  int channels;
  String channelLayout;
  int bitsPerSample;
  String rFrameRate;
  String avgFrameRate;
  String timeBase;
  int startPts;
  String startTime;
  int durationTs;
  String duration;
  String bitRate;
  String nbFrames;
  Map<String, int> disposition;
  StreamTags? tags;
  int width;
  int height;
  int codedWidth;
  int codedHeight;
  int closedCaptions;
  int hasBFrames;
  String sampleAspectRatio;
  String displayAspectRatio;
  String pixFmt;
  int level;
  String colorRange;
  String colorSpace;
  String chromaLocation;
  int refs;
  String bitsPerRawSample;

  factory FFStream.fromJson(Map<String, dynamic> json) => FFStream(
        index: json["index"],
        codecName: json["codec_name"],
        codecLongName: json["codec_long_name"],
        profile: json["profile"] ?? '',
        codecType: json["codec_type"],
        codecTagString: json["codec_tag_string"],
        codecTag: json["codec_tag"],
        sampleFmt: json["sample_fmt"] ?? '',
        sampleRate: json["sample_rate"] ?? '',
        channels: json["channels"] ?? 0,
        channelLayout: json["channel_layout"] ?? '',
        bitsPerSample: json["bits_per_sample"] ?? 0,
        rFrameRate: json["r_frame_rate"],
        avgFrameRate: json["avg_frame_rate"],
        timeBase: json["time_base"],
        startPts: json["start_pts"],
        startTime: json["start_time"],
        durationTs: json["duration_ts"],
        duration: json["duration"],
        bitRate: json["bit_rate"] ?? '',
        nbFrames: json["nb_frames"] ?? '',
        disposition: Map.from(json["disposition"])
            .map((k, v) => MapEntry<String, int>(k, v)),
        tags: json['tags'] != null ? StreamTags.fromJson(json["tags"]) : null,
        width: json["width"] ?? 0,
        height: json["height"] ?? 0,
        codedWidth: json["coded_width"] ?? 0,
        codedHeight: json["coded_height"] ?? 0,
        closedCaptions: json["closed_captions"] ?? 0,
        hasBFrames: json["has_b_frames"] ?? 0,
        sampleAspectRatio: json["sample_aspect_ratio"] ?? '',
        displayAspectRatio: json["display_aspect_ratio"] ?? '',
        pixFmt: json["pix_fmt"] ?? '',
        level: json["level"] ?? 0,
        colorRange: json["color_range"] ?? '',
        colorSpace: json["color_space"] ?? '',
        chromaLocation: json["chroma_location"] ?? '',
        refs: json["refs"] ?? 0,
        bitsPerRawSample: json["bits_per_raw_sample"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "codec_name": codecName,
        "codec_long_name": codecLongName,
        "profile": profile,
        "codec_type": codecType,
        "codec_tag_string": codecTagString,
        "codec_tag": codecTag,
        "sample_fmt": sampleFmt,
        "sample_rate": sampleRate,
        "channels": channels,
        "channel_layout": channelLayout,
        "bits_per_sample": bitsPerSample,
        "r_frame_rate": rFrameRate,
        "avg_frame_rate": avgFrameRate,
        "time_base": timeBase,
        "start_pts": startPts,
        "start_time": startTime,
        "duration_ts": durationTs,
        "duration": duration,
        "bit_rate": bitRate,
        "nb_frames": nbFrames,
        "disposition": Map.from(disposition)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "tags": tags?.toJson(),
        "width": width,
        "height": height,
        "coded_width": codedWidth,
        "coded_height": codedHeight,
        "closed_captions": closedCaptions,
        "has_b_frames": hasBFrames,
        "sample_aspect_ratio": sampleAspectRatio,
        "display_aspect_ratio": displayAspectRatio,
        "pix_fmt": pixFmt,
        "level": level,
        "color_range": colorRange,
        "color_space": colorSpace,
        "chroma_location": chromaLocation,
        "refs": refs,
        "bits_per_raw_sample": bitsPerRawSample,
      };
}

class StreamTags {
  StreamTags({
    this.language,
    this.handlerName,
    this.vendorId,
    this.creationTime,
  });

  String? language;
  String? handlerName;
  String? vendorId;
  DateTime? creationTime;

  factory StreamTags.fromJson(Map<String, dynamic> json) => StreamTags(
        language: json["language"],
        handlerName: json["handler_name"],
        vendorId: json["vendor_id"],
        creationTime: json["creation_time"] == null
            ? null
            : DateTime.parse(json["creation_time"]),
      );

  Map<String, dynamic> toJson() => {
        "language": language,
        "handler_name": handlerName,
        "vendor_id": vendorId,
        "creation_time": creationTime?.toIso8601String(),
      };
}
