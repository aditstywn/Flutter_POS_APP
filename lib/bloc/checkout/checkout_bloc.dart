import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/response/discount/discount_response_model.dart';
import '../../data/models/response/product/product_response_models.dart';
import '../../presentations/home/models/product_quantity.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _CheckoutSuccess([], null, 0.11, 0)) {
    on<_AddItem>(
      (event, emit) async {
        var currentState = state as _CheckoutSuccess;
        List<ProductQuantity> items = [...currentState.items];
        var index = items.indexWhere(
          (element) => element.product.id == event.product.id,
        );

        emit(const _Loading());

        if (index != -1) {
          items[index] = ProductQuantity(
            product: event.product,
            quantity: items[index].quantity + 1,
          );
        } else {
          items.add(
            ProductQuantity(
              product: event.product,
              quantity: 1,
            ),
          );
        }

        emit(_CheckoutSuccess(
          items,
          currentState.discount,
          currentState.tax,
          currentState.serviceCharge,
        ));
      },
    );

    on<_RemoveItem>(
      (event, emit) async {
        var currentState = state as _CheckoutSuccess;
        List<ProductQuantity> items = [...currentState.items];
        var index = items.indexWhere(
          (element) => element.product.id == event.product.id,
        );

        emit(const _Loading());

        if (index != -1) {
          if (items[index].quantity > 1) {
            items[index] = ProductQuantity(
              product: event.product,
              quantity: items[index].quantity - 1,
            );
          }
        }

        emit(_CheckoutSuccess(
          items,
          currentState.discount,
          currentState.tax,
          currentState.serviceCharge,
        ));
      },
    );

    on<_DeleteItem>(
      (event, emit) async {
        var currentState = state as _CheckoutSuccess;
        List<ProductQuantity> items = [...currentState.items];
        var index = items.indexWhere(
          (element) => element.product.id == event.product.id,
        );

        emit(const _Loading());

        if (index != -1) {
          items.removeAt(index);
        }

        emit(_CheckoutSuccess(
          items,
          currentState.discount,
          currentState.tax,
          currentState.serviceCharge,
        ));
      },
    );

    on<_Started>(
      (event, emit) async {
        emit(const _CheckoutSuccess(
          [],
          null,
          0.11,
          0,
        ));
      },
    );

    on<_AddDiscount>(
      (event, emit) async {
        var currentState = state as _CheckoutSuccess;

        emit(
          _CheckoutSuccess(
            currentState.items,
            event.discount,
            currentState.tax,
            currentState.serviceCharge,
          ),
        );
      },
    );

    on<_RemoveDiscount>(
      (event, emit) async {
        var currentState = state as _CheckoutSuccess;

        emit(
          _CheckoutSuccess(
            currentState.items,
            null,
            currentState.tax,
            currentState.serviceCharge,
          ),
        );
      },
    );

    on<_AddTax>(
      (event, emit) async {
        var currentState = state as _CheckoutSuccess;

        emit(
          _CheckoutSuccess(
            currentState.items,
            currentState.discount,
            event.tax,
            currentState.serviceCharge,
          ),
        );
      },
    );

    on<_AddServiceCharge>(
      (event, emit) async {
        var currentState = state as _CheckoutSuccess;

        emit(
          _CheckoutSuccess(
            currentState.items,
            currentState.discount,
            currentState.tax,
            event.serviceCharge,
          ),
        );
      },
    );
  }
}
