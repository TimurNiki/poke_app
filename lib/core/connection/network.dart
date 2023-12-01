import 'package:data_connection_checker_tv/data_connection_checker.dart';

abstract class NetworkInformation{
  Future<bool>? get isConnected;
}

final class NetworkInformationImpl implements NetworkInformation{
  final DataConnectionChecker connectionChecker;

  NetworkInformationImpl(this.connectionChecker);
  
 @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}