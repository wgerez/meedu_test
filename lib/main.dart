import 'package:complete_example/app/data/repositories_impl/auth_repository_impl.dart';
import 'package:complete_example/app/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'app/my_app.dart';
import 'package:flutter_meedu/meedu.dart';

void main() {
  Get.put<AuthRespository>(AuthRespositoryImpl());
  runApp(const MyApp());
}
