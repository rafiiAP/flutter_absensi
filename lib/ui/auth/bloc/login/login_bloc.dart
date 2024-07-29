import 'package:bloc/bloc.dart';
import 'package:flutter_absensi/data/datasource/auth_remote_datasource.dart';
import 'package:flutter_absensi/data/models/response/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource _authRemoteDatasource;

  LoginBloc(this._authRemoteDatasource) : super(_Initial()) {
    on<_Login>((event, emit) {
      emit(_Loading());
      _authRemoteDatasource.login(event.email, event.password).then((value) {
        value.fold((l) {
          emit(_Error(l));
        }, (r) {
          emit(_Success(r));
        });
      });
    });
  }
}
