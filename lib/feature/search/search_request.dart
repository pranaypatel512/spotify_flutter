class SearchRequest {
  SearchRequest({required this.query, required this.type, this.market});
  final String query;
  final String type;
  final String? market;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SearchRequest &&
        other.query == query &&
        other.type == type &&
        other.market == market;
  }

  @override
  int get hashCode => query.hashCode ^ type.hashCode ^ market.hashCode;
}
