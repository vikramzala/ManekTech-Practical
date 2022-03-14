import 'package:manektech_practical_task/feature/product_list/bloc/product_event.dart';
import 'package:manektech_practical_task/feature/product_list/bloc/product_state.dart';
import 'package:manektech_practical_task/feature/product_list/repo/product_list_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductListRepository repository;
  ProductBloc({required this.repository}) : super(Initial());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    // TODO: implement mapEventToState
    yield Loading();
    if (event is GetProductListEvent) {}
  }
}
