// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AndroidConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AndroidConfig _$AndroidConfigFromJson(Map<String, dynamic> json) {
  return AndroidConfig(
    collapse_key: json['collapse_key'] as String?,
    priority:
        _$enumDecodeNullable(_$AndroidMessagePriorityEnumMap, json['priority']),
    ttl: json['ttl'] as String?,
    restricted_package_name: json['restricted_package_name'] as String?,
    data: (json['data'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    notification: json['notification'] == null
        ? null
        : AndroidNotification.fromJson(
            json['notification'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AndroidConfigToJson(AndroidConfig instance) =>
    <String, dynamic>{
      'collapse_key': instance.collapse_key,
      'priority': _$AndroidMessagePriorityEnumMap[instance.priority],
      'ttl': instance.ttl,
      'restricted_package_name': instance.restricted_package_name,
      'data': instance.data,
      'notification': instance.notification,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AndroidMessagePriorityEnumMap = {
  AndroidMessagePriority.NORMAL: 'NORMAL',
  AndroidMessagePriority.HIGH: 'HIGH',
};
