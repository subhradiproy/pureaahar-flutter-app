// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ad_banner.dart';

class AdBannerMapper extends ClassMapperBase<AdBanner> {
  AdBannerMapper._();

  static AdBannerMapper? _instance;
  static AdBannerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AdBannerMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AdBanner';

  static String _$id(AdBanner v) => v.id;
  static const Field<AdBanner, String> _f$id = Field('id', _$id, key: '_id');
  static String _$name(AdBanner v) => v.name;
  static const Field<AdBanner, String> _f$name = Field('name', _$name);
  static String _$url(AdBanner v) => v.url;
  static const Field<AdBanner, String> _f$url =
      Field('url', _$url, key: 'bannerImageUrl');

  @override
  final MappableFields<AdBanner> fields = const {
    #id: _f$id,
    #name: _f$name,
    #url: _f$url,
  };
  @override
  final bool ignoreNull = true;

  static AdBanner _instantiate(DecodingData data) {
    return AdBanner(
        id: data.dec(_f$id), name: data.dec(_f$name), url: data.dec(_f$url));
  }

  @override
  final Function instantiate = _instantiate;

  static AdBanner fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AdBanner>(map);
  }

  static AdBanner fromJson(String json) {
    return ensureInitialized().decodeJson<AdBanner>(json);
  }
}

mixin AdBannerMappable {
  String toJson() {
    return AdBannerMapper.ensureInitialized()
        .encodeJson<AdBanner>(this as AdBanner);
  }

  Map<String, dynamic> toMap() {
    return AdBannerMapper.ensureInitialized()
        .encodeMap<AdBanner>(this as AdBanner);
  }

  AdBannerCopyWith<AdBanner, AdBanner, AdBanner> get copyWith =>
      _AdBannerCopyWithImpl(this as AdBanner, $identity, $identity);
  @override
  String toString() {
    return AdBannerMapper.ensureInitialized().stringifyValue(this as AdBanner);
  }

  @override
  bool operator ==(Object other) {
    return AdBannerMapper.ensureInitialized()
        .equalsValue(this as AdBanner, other);
  }

  @override
  int get hashCode {
    return AdBannerMapper.ensureInitialized().hashValue(this as AdBanner);
  }
}

extension AdBannerValueCopy<$R, $Out> on ObjectCopyWith<$R, AdBanner, $Out> {
  AdBannerCopyWith<$R, AdBanner, $Out> get $asAdBanner =>
      $base.as((v, t, t2) => _AdBannerCopyWithImpl(v, t, t2));
}

abstract class AdBannerCopyWith<$R, $In extends AdBanner, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? url});
  AdBannerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AdBannerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AdBanner, $Out>
    implements AdBannerCopyWith<$R, AdBanner, $Out> {
  _AdBannerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AdBanner> $mapper =
      AdBannerMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, String? url}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (url != null) #url: url
      }));
  @override
  AdBanner $make(CopyWithData data) => AdBanner(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      url: data.get(#url, or: $value.url));

  @override
  AdBannerCopyWith<$R2, AdBanner, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AdBannerCopyWithImpl($value, $cast, t);
}
