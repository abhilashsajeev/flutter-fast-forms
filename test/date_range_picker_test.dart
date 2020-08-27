import 'package:flutter/material.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

void main() {
  testWidgets('FastDateRangerPicker', (WidgetTester tester) async {
    await tester.pumpWidget(
      Utils.wrapMaterial(
        FastDateRangePicker(
          id: 'date_range_picker',
          firstDate: DateTime(1900),
          lastDate: DateTime(2000),
        ),
      ),
    );

    final formFieldFinder = find.byType(DateRangePickerFormField);
    final iconButtonFinder = find.byType(IconButton);

    expect(formFieldFinder, findsOneWidget);
    expect(iconButtonFinder, findsOneWidget);
  });
}