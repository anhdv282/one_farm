import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
import 'package:package_info/package_info.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:convert/convert.dart';

class Device {
  static Future<String> deviceId() async {
    final info = DeviceInfoPlugin();
    final packageInfo = await PackageInfo.fromPlatform();

    String deviceId;
    if (Platform.isIOS) {
      final iosInfo = await info.iosInfo;
      final vendorId = iosInfo.identifierForVendor;
      final bundleId = packageInfo.packageName;
      deviceId = generateMd5(vendorId + bundleId);
    } else if (Platform.isAndroid) {
      final androidInfo = await info.androidInfo;
      final vendorId = androidInfo.androidId;
      final packageName = packageInfo.packageName;
      deviceId = generateMd5(vendorId + packageName);
    }

    if (deviceId?.isNotEmpty != true) throw NullThrownError();
    return deviceId;
  }

  static generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var md5 = crypto.md5;
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.shortestSide;
    return width >= 600;
  }
}
