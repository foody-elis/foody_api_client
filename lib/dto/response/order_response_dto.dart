import 'package:foody_api_client/dto/response/order_dish_response_dto.dart';
import 'package:foody_api_client/dto/response/restaurant_response_dto.dart';
import 'package:foody_api_client/dto/response/user_response_dto.dart';
import 'package:foody_api_client/utils/order_status.dart';
import 'package:json_annotation/json_annotation.dart';

part '../mapper/response/order_response_dto.g.dart';

@JsonSerializable()
class OrderResponseDto {
  const OrderResponseDto({
    required this.id,
    required this.tableCode,
    required this.orderDishes,
    required this.buyer,
    required this.restaurant,
    required this.status,
    required this.createdAt,
  });

  factory OrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseDtoFromJson(json);

  final int id;
  final String tableCode;
  final List<OrderDishResponseDto> orderDishes;
  final UserResponseDto buyer;
  final RestaurantResponseDto restaurant;
  final OrderStatus status;
  final DateTime createdAt;

  Map<String, dynamic> toJson() => _$OrderResponseDtoToJson(this);

  OrderResponseDto copyWith({
    int? id,
    String? tableCode,
    List<OrderDishResponseDto>? orderDishes,
    UserResponseDto? buyer,
    RestaurantResponseDto? restaurant,
    OrderStatus? status,
    DateTime? createdAt,
  }) {
    return OrderResponseDto(
      id: id ?? this.id,
      tableCode: tableCode ?? this.tableCode,
      orderDishes: orderDishes ?? this.orderDishes,
      buyer: buyer ?? this.buyer,
      restaurant: restaurant ?? this.restaurant,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
