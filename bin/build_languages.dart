import 'dart:convert';
import 'dart:io';
import 'package:recase/recase.dart';

import 'package:language_picker/languages.dart';

/// Reads languages.json and generates lib/languages.g.dart, which contains
/// Languages.countryName constants.
main() {
  final contents = File('lib/languages.json').readAsStringSync();
  final jsonLanguages = jsonDecode(contents);
  final List<Language> languages = jsonLanguages
      .map<Language>((m) => Language.fromMap(Map<String, String>.from(m)))
      .toList();
  final getters = languages.map((l) {
    final escapedName = l.name
        // Remove commas and parentheses
        .replaceAll(RegExp('[,\(\)]'), '')
        // Replace punctuated name
        .replaceAll('ü', 'u')
        .camelCase;
    return "  static Language get $escapedName => Language('${l.isoCode}', '${l.name}');";
  });
  final extension = '''
import 'languages.dart';

class Languages {
${getters.join('\n')}
}
''';
  File('lib/languages.g.dart').writeAsStringSync(extension);
}
