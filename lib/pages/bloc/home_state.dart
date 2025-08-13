import 'package:equatable/equatable.dart';

class HomeState extends Equatable{


  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState{
  final String message;

  HomeErrorState({required this.message});
}

class HomeLoadedState extends HomeState {
  final List<String> list;

  HomeLoadedState(void Function(HomeState state) emit, HomeState state, {required this.list});
}

class HomeStateEmptyList extends HomeState {}