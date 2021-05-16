# language_picker

![](https://img.shields.io/github/license/atn832/language_picker.svg)
[![pub package](https://img.shields.io/pub/v/language_picker.svg)](https://pub.dartlang.org/packages/language_picker)
![](https://img.shields.io/github/languages/code-size/atn832/language_picker.svg)

Provides a dropdown and dialog to select a language.

Originally made by [@gomgom](https://github.com/gomgom) at https://pub.dev/packages/language_pickers. As of May 2021, this project has had no activity for more than a year and does not compile anymore. So I am shamelessly republishing it. :) I've also improved the API and fixed a few issues along the way.

![](art/example.gif)

## Getting Started

#### LanguagePickerDropdown example

```dart
import 'package:language_picker/language.dart';
import 'package:language_picker/language_picker.dart';

Language _selectedDropdownLanguage =
      LanguagePickerUtils.getLanguageByIsoCode('ko');

// It's sample code of Dropdown Item.
Widget _buildDropdownItem(Language language) {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 8.0,
      ),
      Text("${language.name} (${language.isoCode})"),
    ],
  );
}


// Builder
LanguagePickerDropdown(
                    initialValue: 'ko',
                    itemBuilder: _buildDropdownItem,
                    onValuePicked: (Language language) {
                      _selectedDropdownLanguage = language;
                      print(_selectedDropdownLanguage.name);
                      print(_selectedDropdownLanguage.isoCode);
                    },
                  ),
```

#### LanguagePickerDialog example

```dart
import 'package:language_picker/language.dart';
import 'package:language_picker/language_picker.dart';

Language _selectedDialogLanguage =
      LanguagePickerUtils.getLanguageByIsoCode('ko');

// It's sample code of Dialog Item.
Widget _buildDialogItem(Language language) => Row(
    children: <Widget>[
      Text(language.name),
      SizedBox(width: 8.0),
      Flexible(child: Text("(${language.isoCode})"))
    ],
  );

void _openLanguagePickerDialog() => showDialog(
    context: context,
    builder: (context) => Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.pink),
        child: LanguagePickerDialog(
            titlePadding: EdgeInsets.all(8.0),
            searchCursorColor: Colors.pinkAccent,
            searchInputDecoration: InputDecoration(hintText: 'Search...'),
            isSearchable: true,
            title: Text('Select your language'),
            onValuePicked: (Language language) => setState(() {
                  _selectedDialogLanguage = language;
                  print(_selectedDialogLanguage.name);
                  print(_selectedDialogLanguage.isoCode);
                }),
            itemBuilder: _buildDialogItem)),
  );
```

#### LanguagePickerCupertino example

```dart
import 'package:language_picker/language.dart';
import 'package:language_picker/language_picker.dart';

Language _selectedCupertinoLanguage =
  LanguagePickerUtils.getLanguageByIsoCode('ko');

// It's sample code of Cupertino Item.
void _openCupertinoLanguagePicker() => showCupertinoModalPopup<void>(
  context: context,
  builder: (BuildContext context) {
    return LanguagePickerCupertino(
      pickerSheetHeight: 200.0,
      onValuePicked: (Language language) => setState(() {
            _selectedCupertinoLanguage = language;
            print(_selectedCupertinoLanguage.name);
            print(_selectedCupertinoLanguage.isoCode);
          }),
    );
  });

Widget _buildCupertinoItem(Language language) => Row(
    children: <Widget>[
      Text("+${language.name}"),
      SizedBox(width: 8.0),
      Flexible(child: Text(language.name))
    ],
  );
```
