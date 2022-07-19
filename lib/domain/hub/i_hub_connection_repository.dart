import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pb.dart';
import 'package:dartz/dartz.dart';

abstract class IHubConnectionRepository {
  Future<void> connectWithHub();

  Future<Either<HubFailures, CompHubInfo>> getHubCompInfo(
    CompHubInfo appInfoForHub,
  );

  Future<void> closeConnection();

  Future<Either<HubFailures, Unit>> searchForHub({
    String? deviceIpOnTheNetwork,
  });

  Future<void> saveHubIP(String hubIP);
}
