import 'package:bloc/bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  final cubit = CounterCubit(0);
  CounterCubit(0);
  cubit.increment();

  cubit.close();
}


class CounterCubit extends Cubit<int> {
  CounterCubit(int intialState) : super(intialState);
  void increment() => emit(state + 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
  @override
  void onError(Object error, StackTrace stackTrace) {
    
  }
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
