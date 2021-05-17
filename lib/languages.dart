export 'languages.g.dart';

class Language {
  Language(this.isoCode, this.name);

  final String name;
  final String isoCode;

  Language.fromMap(Map<String, String> map)
      : name = map['name']!,
        isoCode = map['isoCode']!;

  bool operator ==(o) =>
      o is Language && name == o.name && isoCode == o.isoCode;

  @override
  int get hashCode => super.hashCode;
}
