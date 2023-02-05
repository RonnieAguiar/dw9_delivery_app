import 'package:dw9_delivery/app/dto/order_dto.dart';

import '../../models/payment_type_model.dart';

abstract class OrderRepository {
  Future<List<PaymentTypeModel>> getAllPaymentsTypes();
  Future<void> saveOrder(OrderDto order);
}
