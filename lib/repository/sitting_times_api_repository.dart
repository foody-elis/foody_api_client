import 'package:dio/dio.dart';
import 'package:foody_api_client/dto/response/sitting_time_response_dto.dart';
import 'package:retrofit/http.dart';

part 'generated/sitting_times_api_repository.g.dart';

@RestApi()
abstract class SittingTimesApiRepository {
  factory SittingTimesApiRepository(Dio dio, {String? baseUrl}) =
      _SittingTimesApiRepository;

  @GET('/restaurant/{restaurantId}/week-day/{weekDay}')
  Future<List<SittingTimeResponseDto>> getAllByRestaurantAndWeekDay(
      @Path() int restaurantId, @Path() int weekDay);
}
