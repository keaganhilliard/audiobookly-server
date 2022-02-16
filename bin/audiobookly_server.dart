import 'dart:convert';
import 'dart:io';

import 'package:alfred/alfred.dart';

import 'models/ffprobe/ff_output.dart';

void main(List<String> arguments) async {
  final app = Alfred();

  app.get('/text', (req, res) => 'Text response');

  app.get('/json', (req, res) async {
    final something = await Process.run('ffprobe', [
      '-v',
      'quiet',
      '-print_format',
      'json',
      '-show_format',
      '-show_streams',
      '-show_chapters',
      'audiobooks/test.m4b'
    ]);
    final output = FFOutput.fromJson(jsonDecode(something.stdout));
    for (var e in output.chapters) {
      print(e.tags.title);
    }
    return something.stdout;
  });

  app.post('/json', (req, res) async {
    final body = await req.body;
    if (body != null) {
      final map = body as Map;
      print(map['url']);
      final something = await Process.run('ffprobe', [
        '-v',
        'quiet',
        '-print_format',
        'json',
        '-show_format',
        '-show_streams',
        '-show_chapters',
        map['url'],
      ]);
      final output = FFOutput.fromJson(jsonDecode(something.stdout));
      for (var e in output.chapters) {
        print(e.tags.title);
      }
      return something.stdout;
    }
  });

  app.get('/jsonExpressStyle', (req, res) {
    res.json({'type': 'traditional_json_response'});
  });

  app.get('/file.m4b', (req, res) {
    final file = File('audiobooks/test.m4b');
    res.headers.add('Accept-Ranges', 'bytes');
    return file;
  });

  app.get('/html', (req, res) {
    res.headers.contentType = ContentType.html;
    return '<html><body><h1>Test HTML</h1><audio controls src="/file.m4b"/></body></html>';
  });

  await app.listen(6565); //Listening on port 6565
}
