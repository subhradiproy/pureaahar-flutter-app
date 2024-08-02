import 'package:dart_mappable/dart_mappable.dart';

part 'ad_banner.mapper.dart';

@MappableClass()
class AdBanner with AdBannerMappable {
  const AdBanner({
    required this.id,
    required this.name,
    required this.url,
  });

  factory AdBanner.fromMap(Map<String, Object?> json) =>
      AdBannerMapper.fromMap(json);

  @MappableField(key: '_id')
  final String id;
  final String name;
  @MappableField(key: 'bannerImageUrl')
  final String url;
}
