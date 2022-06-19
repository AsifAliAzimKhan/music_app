import 'package:bloc/bloc.dart';

class AppPageViewCubit extends Cubit<int> {
  AppPageViewCubit(int initialState) : super(0);
  setIndexMainPageView({required pageIndex}){
    emit(pageIndex);
  }
}
