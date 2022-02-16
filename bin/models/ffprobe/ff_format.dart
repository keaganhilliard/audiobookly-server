class FFFormat {
  FFFormat({
    required this.filename,
    required this.nbStreams,
    required this.nbPrograms,
    required this.formatName,
    required this.formatLongName,
    required this.startTime,
    required this.duration,
    required this.size,
    required this.bitRate,
    required this.probeScore,
    required this.tags,
  });

  String filename;
  int nbStreams;
  int nbPrograms;
  String formatName;
  String formatLongName;
  String startTime;
  String duration;
  String size;
  String bitRate;
  int probeScore;
  FFFormatTags tags;

  factory FFFormat.fromJson(Map<String, dynamic> json) => FFFormat(
        filename: json["filename"],
        nbStreams: json["nb_streams"],
        nbPrograms: json["nb_programs"],
        formatName: json["format_name"],
        formatLongName: json["format_long_name"],
        startTime: json["start_time"],
        duration: json["duration"],
        size: json["size"],
        bitRate: json["bit_rate"],
        probeScore: json["probe_score"],
        tags: FFFormatTags.fromJson(json["tags"]),
      );

  Map<String, dynamic> toJson() => {
        "filename": filename,
        "nb_streams": nbStreams,
        "nb_programs": nbPrograms,
        "format_name": formatName,
        "format_long_name": formatLongName,
        "start_time": startTime,
        "duration": duration,
        "size": size,
        "bit_rate": bitRate,
        "probe_score": probeScore,
        "tags": tags.toJson(),
      };
}

class FFFormatTags {
  FFFormatTags({
    this.majorBrand,
    this.minorVersion,
    this.compatibleBrands,
    this.title,
    this.artist,
    this.albumArtist,
    this.album,
    this.genre,
    this.date,
    this.sortName,
    this.sortAlbum,
    this.copyright,
    this.encoder,
    this.mediaType,
  });

  String? majorBrand;
  String? minorVersion;
  String? compatibleBrands;
  String? title;
  String? artist;
  String? albumArtist;
  String? album;
  String? genre;
  String? date;
  String? sortName;
  String? sortAlbum;
  String? copyright;
  String? encoder;
  String? mediaType;

  factory FFFormatTags.fromJson(Map<String, dynamic> json) => FFFormatTags(
        majorBrand: json["major_brand"],
        minorVersion: json["minor_version"],
        compatibleBrands: json["compatible_brands"],
        title: json["title"],
        artist: json["artist"],
        albumArtist: json["album_artist"],
        album: json["album"],
        genre: json["genre"],
        date: json["date"],
        sortName: json["sort_name"],
        sortAlbum: json["sort_album"],
        copyright: json["copyright"],
        encoder: json["encoder"],
        mediaType: json["media_type"],
      );

  Map<String, dynamic> toJson() => {
        "major_brand": majorBrand,
        "minor_version": minorVersion,
        "compatible_brands": compatibleBrands,
        "title": title,
        "artist": artist,
        "album_artist": albumArtist,
        "album": album,
        "genre": genre,
        "date": date,
        "sort_name": sortName,
        "sort_album": sortAlbum,
        "copyright": copyright,
        "encoder": encoder,
        "media_type": mediaType,
      };
}
