import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/pages/bloc/home_event.dart';
import 'package:flutter_application_1/pages/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc([HomeLoadingState homeLoadingState]) : super(HomeLoadingState()); 


  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    var state;
    switch (event. runtimeType) {
      case HomeFetchList:
          state = await _fetchList();
        break;
      default:
    }
    yield state;
  }

  Future<HomeState> _fetchList() async{
   var list = await Future.delayed(
    Duration(
      seconds: 3,
      ),
    () => <String>[
      'Item 1',
      'Item 1',
      'Item 1',
      'Item 1',
      'Item 1',
      'Item 1',
      'Item 1',
      'Item 1',
      'Item 1',
    ]);
    return HomeLoadedState(list: list);
  }
 
  
}