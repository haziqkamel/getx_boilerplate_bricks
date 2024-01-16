import 'package:freezed_annotation/freezed_annotation.dart';

path '{{model_name}}.freezed.dart';
path '{{model_name}}.g.dart';

@freezed
class {{model_name.pascalCase()}} with _${{model_name.pascalCase()}} {
  const factory {{model_name.pascalCase()}}({
    @Default('') String name,
  }) = _{{model_name.pascalCase()}};

  factory {{model_name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{model_name.pascalCase()}}FromJson(json);
}