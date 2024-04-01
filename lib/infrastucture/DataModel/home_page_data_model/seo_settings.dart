import 'package:json_annotation/json_annotation.dart';

part 'seo_settings.g.dart';

@JsonSerializable()
class SeoSettings {
	@JsonKey(name: 'seo_title') 
	String? seoTitle;
	@JsonKey(name: 'seo_description') 
	String? seoDescription;
	@JsonKey(name: 'web_url') 
	String? webUrl;

	SeoSettings({this.seoTitle, this.seoDescription, this.webUrl});

	factory SeoSettings.fromJson(Map<String, dynamic> json) {
		return _$SeoSettingsFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SeoSettingsToJson(this);
}
