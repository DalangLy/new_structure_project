String id({required Map<String, dynamic> json,}){
  return json['id'] as String;
}

DateTime createdDate({required Map<String, dynamic> json,}){
  return DateTime.parse(json['cd'] as String);
}

DateTime? modifiedDate({required Map<String, dynamic> json,}){
  return json['md'] == null ? null : DateTime.parse(json['md'] as String);
}

String createdUserId({required Map<String, dynamic> json,}){
  return json['cuid'] as String;
}

String? modifiedUserId({required Map<String, dynamic> json,}){
  return json['muid'] as String?;
}