import 'package:json_annotation/json_annotation.dart';

import 'deal.dart';
import 'seo_settings.dart';

part 'home_page_data_model.g.dart';

@JsonSerializable()
class HomePageDataModel {
	@JsonKey(name: 'seo_settings') 
	SeoSettings? seoSettings;
	List<Deal>? deals;

	HomePageDataModel({this.seoSettings, this.deals});

	factory HomePageDataModel.fromJson(Map<String, dynamic> json) {
		return _$HomePageDataModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$HomePageDataModelToJson(this);
}
