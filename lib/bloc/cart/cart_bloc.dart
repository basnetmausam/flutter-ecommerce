import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/models.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<CartStarted>(_onCartStarted);
    on<CartProductAdded>(_onCartProductAdded);
    on<CartProductRemoved>(_onCartProductRemoved);
  }

  void _onCartStarted(
    CartStarted event,
    Emitter<CartState> emit,
  ) async {
    emit(CartLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(const CartLoaded());
    } catch (_) {
      emit(CartError());
    }
  }

  void _onCartProductAdded(
    CartProductAdded event,
    Emitter<CartState> emit,
  ) {
    if (state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: Cart(
                cartProducts: List.from((state as CartLoaded).cart.cartProducts)
                  ..add(event.product)),
          ),
        );
      } on Exception {
        emit(CartError());
      }
    }
  }

  void _onCartProductRemoved(
    CartProductRemoved event,
    Emitter<CartState> emit,
  ) {
    if (state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: Cart(
                cartProducts: List.from((state as CartLoaded).cart.cartProducts)
                  ..remove(event.product)),
          ),
        );
      } on Exception {
        emit(CartError());
      }
    }
  }
}
