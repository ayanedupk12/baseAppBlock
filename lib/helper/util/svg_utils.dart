import 'package:flutter_svg/flutter_svg.dart';

import '../constant/images_resource.dart';

class SvgUtils {
  static const cancelIcon = SvgAssetLoader(ImagesResource.CANCEL_ICON);
  static const emailIcon = SvgAssetLoader(ImagesResource.EMAIL_ICON);

  static void preCacheSVGs() {
    Future.wait([
      svg.cache.putIfAbsent(
          cancelIcon.cacheKey(null), () => cancelIcon.loadBytes(null)),
      svg.cache.putIfAbsent(
          emailIcon.cacheKey(null), () => emailIcon.loadBytes(null)),
    ]);
  }
}
