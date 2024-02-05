import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/provider/repo_provider.dart';
import 'package:login/screens/home/home_view_model.dart';
import '../screens/login/login_view_model.dart';

final loginVm =
    StateProvider((ref) => LoginViewModel(ref.read(loginRepository)));

final homeVm = StateProvider((ref) => HomeViewModel(ref.read(homeRepository)));
