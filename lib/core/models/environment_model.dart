class EnvironmentModel {
  final String url;
  final String key;

  EnvironmentModel({
    required this.url,
    required this.key,
  });

  factory EnvironmentModel.fromMap({required Map<String, String> map}) {
    return EnvironmentModel(
      url: map['URL'] ?? '',
      key: map['KEY'] ?? '',
    );
  }
}
