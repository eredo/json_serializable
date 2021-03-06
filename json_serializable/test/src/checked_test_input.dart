part of '_json_serializable_test_input.dart';

@ShouldGenerate(r'''
WithANonCtorGetterChecked _$WithANonCtorGetterCheckedFromJson(
    Map<String, dynamic> json) {
  return $checkedNew('WithANonCtorGetterChecked', json, () {
    $checkKeys(json,
        allowedKeys: const ['items'],
        requiredKeys: const ['items'],
        disallowNullValues: const ['items']);
    var val = WithANonCtorGetterChecked($checkedConvert(
        json, 'items', (v) => (v as List)?.map((e) => e as String)?.toList()));
    return val;
  });
}
''', checked: true)
@JsonSerializable(disallowUnrecognizedKeys: true, createToJson: false)
class WithANonCtorGetterChecked {
  @JsonKey(required: true, disallowNullValue: true)
  final List<String> items;
  int get legth => items.length;

  WithANonCtorGetterChecked(this.items);
}

@ShouldGenerate(r'''
WithANonCtorGetter _$WithANonCtorGetterFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      allowedKeys: const ['items'],
      requiredKeys: const ['items'],
      disallowNullValues: const ['items']);
  return WithANonCtorGetter(
      (json['items'] as List)?.map((e) => e as String)?.toList());
}
''')
@JsonSerializable(disallowUnrecognizedKeys: true, createToJson: false)
class WithANonCtorGetter {
  @JsonKey(required: true, disallowNullValue: true)
  final List<String> items;
  int get legth => items.length;

  WithANonCtorGetter(this.items);
}
