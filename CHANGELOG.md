## 0.3.0

- Rename the library to to language_picker.
- Fixed LanguagePickerDropdown's layout to render well with Flex, eg when two of them are laid out in a Row.
- Changed LanguagePickerDropdown's `List<Map<String, String>> languagesList` to `List<Language> languages`.
- Introduced `Map<String, Language> defaultLanguageMap` and `List<Language> defaultLanguages`.
- Removed duplicate English language from the default list.
- Removed dates from Greek and Occitan, eg "Greek, Modern (1453-)" to "Greek".
- Migrated to null safety. Thank you [spsarolkar](https://github.com/spsarolkar)!

## [0.2.0+1] - 3rd March, 2020

- Fix type bugs for other widgets.
- Remove author sector in pubspec.yaml


## [0.2.0] - 1st March, 2020

- Bug fixes.
- Change languages type.


## [0.1.3] - 9th October, 2019

- (Pull Request Merge -- Masato Nagashima) Renamed from country to language.
- (Pull Request Merge -- Masato Nagashima) Enabled a user of this picker to choose his/her own language list.
- (Pull Request Merge -- Masato Nagashima) Changed from native writing systems to English.


## [0.1.2] - 11th February, 2019

- Fix README.md.


## [0.1.1] - 19th January, 2019

- Fix error 'Error: unable to find directory entry in pubspec.yaml'.


## [0.1.0] - 17th January, 2019

- First release of package(language_pickers).
