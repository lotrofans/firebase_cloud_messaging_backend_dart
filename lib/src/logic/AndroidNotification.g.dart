// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AndroidNotification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AndroidNotification _$AndroidNotificationFromJson(Map<String, dynamic> json) {
  return AndroidNotification(
    title: json['title'] as String,
    body: json['body'] as String,
    icon: json['icon'] as String,
    color: json['color'] as String,
    sound: json['sound'] as String,
    tag: json['tag'] as String,
    click_action: json['click_action'] as String,
    body_loc_key: json['body_loc_key'] as String,
    body_loc_args:
        (json['body_loc_args'] as List)?.map((e) => e as String)?.toList(),
    title_loc_key: json['title_loc_key'] as String,
    title_loc_args:
        (json['title_loc_args'] as List)?.map((e) => e as String)?.toList(),
    channel_id: json['channel_id'] as String,
    ticker: json['ticker'] as String,
    sticky: json['sticky'] as bool,
    event_time: json['event_time'] as String,
    local_only: json['local_only'] as bool,
    notification_priority: _$enumDecodeNullable(
        _$NotificationPriorityEnumMap, json['notification_priority']),
    default_sound: json['default_sound'] as bool,
    default_vibrate_timings: json['default_vibrate_timings'] as bool,
    default_light_settings: json['default_light_settings'] as bool,
    vibrate_timings:
        (json['vibrate_timings'] as List)?.map((e) => e as String)?.toList(),
    visibility: _$enumDecodeNullable(_$VisibilityEnumMap, json['visibility']),
    notification_count: json['notification_count'] as int,
    light_settings: json['light_settings'] == null
        ? null
        : LightSettings.fromJson(
            json['light_settings'] as Map<String, dynamic>),
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$AndroidNotificationToJson(
        AndroidNotification instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'icon': instance.icon,
      'color': instance.color,
      'sound': instance.sound,
      'tag': instance.tag,
      'click_action': instance.click_action,
      'body_loc_key': instance.body_loc_key,
      'body_loc_args': instance.body_loc_args,
      'title_loc_key': instance.title_loc_key,
      'title_loc_args': instance.title_loc_args,
      'channel_id': instance.channel_id,
      'ticker': instance.ticker,
      'sticky': instance.sticky,
      'event_time': instance.event_time,
      'local_only': instance.local_only,
      'notification_priority':
          _$NotificationPriorityEnumMap[instance.notification_priority],
      'default_sound': instance.default_sound,
      'default_vibrate_timings': instance.default_vibrate_timings,
      'default_light_settings': instance.default_light_settings,
      'vibrate_timings': instance.vibrate_timings,
      'visibility': _$VisibilityEnumMap[instance.visibility],
      'notification_count': instance.notification_count,
      'light_settings': instance.light_settings,
      'image': instance.image,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$NotificationPriorityEnumMap = {
  NotificationPriority.PRIORITY_UNSPECIFIED: 'PRIORITY_UNSPECIFIED',
  NotificationPriority.PRIORITY_MIN: 'PRIORITY_MIN',
  NotificationPriority.PRIORITY_LOW: 'PRIORITY_LOW',
  NotificationPriority.PRIORITY_DEFAULT: 'PRIORITY_DEFAULT',
  NotificationPriority.PRIORITY_HIGH: 'PRIORITY_HIGH',
  NotificationPriority.PRIORITY_MAX: 'PRIORITY_MAX',
};

const _$VisibilityEnumMap = {
  Visibility.VISIBILITY_UNSPECIFIED: 'VISIBILITY_UNSPECIFIED',
  Visibility.PRIVATE: 'PRIVATE',
  Visibility.PUBLIC: 'PUBLIC',
  Visibility.SECRET: 'SECRET',
};

LightSettings _$LightSettingsFromJson(Map<String, dynamic> json) {
  return LightSettings(
    color: json['color'] == null
        ? null
        : FCMColor.fromJson(json['color'] as Map<String, dynamic>),
    light_on_duration: json['light_on_duration'] as String,
    light_off_duration: json['light_off_duration'] as String,
  );
}

Map<String, dynamic> _$LightSettingsToJson(LightSettings instance) =>
    <String, dynamic>{
      'color': instance.color,
      'light_on_duration': instance.light_on_duration,
      'light_off_duration': instance.light_off_duration,
    };

FCMColor _$FCMColorFromJson(Map<String, dynamic> json) {
  return FCMColor(
    red: json['red'] as int,
    green: json['green'] as int,
    blue: json['blue'] as int,
    alpha: json['alpha'] as int,
  );
}

Map<String, dynamic> _$FCMColorToJson(FCMColor instance) => <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
      'alpha': instance.alpha,
    };
