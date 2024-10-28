import 'dart:async';
import 'dart:io' show InternetAddress;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/enums.dart';

class ConnectionCubit extends Cubit<ConnectionStatus> {
  final Connectivity _connectivity;
  ConnectionCubit(this._connectivity) : super(ConnectionStatus.connected) {
    _checkConnectivity();
  }

  late StreamSubscription<List<ConnectivityResult>> _connection;

  void _checkConnectivity() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    if (_canConnectToNetwork(connectivityResult)) {
      _connection = _connectivity.onConnectivityChanged.listen((result) async {
        connectivityResult = result;
        if (_canConnectToNetwork(connectivityResult)) {
          final lookupResult = await InternetAddress.lookup('example.com');
          if (_isLookupSuccessful(lookupResult)) {
            emit(ConnectionStatus.connected);
          } else {
            emit(ConnectionStatus.disconnected);
          }
        } else {
          emit(ConnectionStatus.disconnected);
        }
      });
    } else {
      emit(ConnectionStatus.disconnected);
    }
  }

  bool _canConnectToNetwork(
    List<ConnectivityResult> connectivityResult,
  ) =>
      connectivityResult.contains(ConnectivityResult.mobile) ||
      connectivityResult.contains(ConnectivityResult.wifi);

  bool _isLookupSuccessful(List<InternetAddress> lookupResult) =>
      lookupResult.isNotEmpty && lookupResult[0].rawAddress.isNotEmpty;

  @override
  Future<void> close() {
    _connection.cancel();
    return super.close();
  }
}
