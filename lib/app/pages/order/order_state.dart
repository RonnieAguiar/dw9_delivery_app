// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dw9_delivery/app/dto/order_product_dto.dart';
import 'package:dw9_delivery/app/models/payment_type_model.dart';
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'order_state.g.dart';

@match
enum OrderStatus {
  initial,
  loading,
  loaded,
  error,
  updateOrder,
  confirmRemoveProduct,
  empytBag,
  success,
}

class OrderState extends Equatable {
  final OrderStatus status;
  final List<OrderProductDto> orderProducts;
  final List<PaymentTypeModel> paymentTypes;
  final String? errorMessage;

  const OrderState({
    required this.paymentTypes,
    required this.status,
    required this.orderProducts,
    this.errorMessage,
  });

  const OrderState.initial()
      : status = OrderStatus.initial,
        orderProducts = const [],
        paymentTypes = const [],
        errorMessage = null;

  double get totalOrder => orderProducts.fold(
      0.0, (previousValue, element) => previousValue + element.totalPrice);

  @override
  List<Object?> get props => [status, orderProducts, paymentTypes];

  OrderState copyWith({
    OrderStatus? status,
    List<OrderProductDto>? orderProducts,
    List<PaymentTypeModel>? paymentTypes,
    String? errorMessage,
  }) {
    return OrderState(
      status: status ?? this.status,
      orderProducts: orderProducts ?? this.orderProducts,
      paymentTypes: paymentTypes ?? this.paymentTypes,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class OrderConfirmDeleteProductState extends OrderState {
  final OrderProductDto orderProduct;
  final int index;

  const OrderConfirmDeleteProductState({
    required this.orderProduct,
    required this.index,
    required super.paymentTypes,
    required super.status,
    required super.orderProducts,
    super.errorMessage,
  });
}
