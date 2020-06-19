import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class SearchPediaHistory extends Equatable {
  const SearchPediaHistory({@required this.history});

  final List<String> history;

  @override
  List<Object> get props => [history];
}
