import 'package:json_annotation/json_annotation.dart';

part 'deal.g.dart';

@JsonSerializable()
class Deal {
	int? id;
	@JsonKey(name: 'comments_count') 
	int? commentsCount;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'created_at_in_millis') 
	int? createdAtInMillis;
	@JsonKey(name: 'image_medium') 
	String? imageMedium;
	dynamic store;

	Deal({
		this.id, 
		this.commentsCount, 
		this.createdAt, 
		this.createdAtInMillis, 
		this.imageMedium, 
		this.store, 
	});

	factory Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);

	Map<String, dynamic> toJson() => _$DealToJson(this);
}
