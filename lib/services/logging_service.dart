import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

final Provider<LoggingService> loggingServiceProvider =
    Provider((ref) => const LoggingService._());

class LoggingService {
  static LoggingService get instance =>
      globalProviderContainer.read(loggingServiceProvider);

  const LoggingService._();

  FutureOr<void> reportError(Object error, [StackTrace? stackTrace]) async {
    _reportErrorToService(error, stackTrace);
  }

  FutureOr<void> reportFlutterError(FlutterErrorDetails details) async {
    _reportErrorToService(details.exception, details.stack);
  }

  // TODO: Send error to a service like Sentry or Firebase Crashlytics
  void _reportErrorToService(Object error, [StackTrace? stackTrace]) {
    log('Error: $error', stackTrace: stackTrace);
  }
}
