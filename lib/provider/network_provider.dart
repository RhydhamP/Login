import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../network/network_helper.dart';

final dioProvider = StateProvider<Dio>((ref) => createDio());
