/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/attendance.svg
  String get attendance => 'assets/icons/attendance.svg';

  /// File path: assets/icons/back.svg
  String get back => 'assets/icons/back.svg';

  /// File path: assets/icons/email.svg
  String get email => 'assets/icons/email.svg';

  /// Directory path: assets/icons/menu
  $AssetsIconsMenuGen get menu => const $AssetsIconsMenuGen();

  /// Directory path: assets/icons/nav
  $AssetsIconsNavGen get nav => const $AssetsIconsNavGen();

  /// File path: assets/icons/notification_rounded.svg
  String get notificationRounded => 'assets/icons/notification_rounded.svg';

  /// File path: assets/icons/password.svg
  String get password => 'assets/icons/password.svg';

  /// File path: assets/icons/reverse.svg
  String get reverse => 'assets/icons/reverse.svg';

  /// List of all assets
  List<String> get values =>
      [attendance, back, email, notificationRounded, password, reverse];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg_home.png
  AssetGenImage get bgHome => const AssetGenImage('assets/images/bg_home.png');

  /// File path: assets/images/failed.png
  AssetGenImage get failed => const AssetGenImage('assets/images/failed.png');

  /// File path: assets/images/img_my_location.png
  AssetGenImage get imgMyLocation =>
      const AssetGenImage('assets/images/img_my_location.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_code_with_bahri.png
  AssetGenImage get logoCodeWithBahri =>
      const AssetGenImage('assets/images/logo_code_with_bahri.png');

  /// File path: assets/images/logo_white.png
  AssetGenImage get logoWhite =>
      const AssetGenImage('assets/images/logo_white.png');

  /// File path: assets/images/see_location.png
  AssetGenImage get seeLocation =>
      const AssetGenImage('assets/images/see_location.png');

  /// File path: assets/images/success.png
  AssetGenImage get success => const AssetGenImage('assets/images/success.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bgHome,
        failed,
        imgMyLocation,
        logo,
        logoCodeWithBahri,
        logoWhite,
        seeLocation,
        success
      ];
}

class $AssetsIconsMenuGen {
  const $AssetsIconsMenuGen();

  /// File path: assets/icons/menu/catatan.svg
  String get catatan => 'assets/icons/menu/catatan.svg';

  /// File path: assets/icons/menu/datang.svg
  String get datang => 'assets/icons/menu/datang.svg';

  /// File path: assets/icons/menu/izin.svg
  String get izin => 'assets/icons/menu/izin.svg';

  /// File path: assets/icons/menu/jadwal.svg
  String get jadwal => 'assets/icons/menu/jadwal.svg';

  /// File path: assets/icons/menu/lembur.svg
  String get lembur => 'assets/icons/menu/lembur.svg';

  /// File path: assets/icons/menu/pulang.svg
  String get pulang => 'assets/icons/menu/pulang.svg';

  /// List of all assets
  List<String> get values => [catatan, datang, izin, jadwal, lembur, pulang];
}

class $AssetsIconsNavGen {
  const $AssetsIconsNavGen();

  /// File path: assets/icons/nav/history.svg
  String get history => 'assets/icons/nav/history.svg';

  /// File path: assets/icons/nav/home.svg
  String get home => 'assets/icons/nav/home.svg';

  /// File path: assets/icons/nav/profile.svg
  String get profile => 'assets/icons/nav/profile.svg';

  /// File path: assets/icons/nav/setting.svg
  String get setting => 'assets/icons/nav/setting.svg';

  /// List of all assets
  List<String> get values => [history, home, profile, setting];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
