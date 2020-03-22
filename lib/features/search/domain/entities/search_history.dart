import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class SearchHistory extends Equatable {
  const SearchHistory({@required this.history});

  final List<String> history;

  @override
  List<Object> get props => [history];
}
