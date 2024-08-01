/// This file contains all the svg assets used in the app.
enum SvgAsset {
  googleIcon('assets/vectors/google.svg'),
  india('assets/vectors/india.svg'),
  ;

  const SvgAsset(this.path);

  final String path;
}

/// This file contains all the animation assets used in the app.
enum LottieAssets {
  splash('assets/animations/splash.json');

  const LottieAssets(this.path);

  final String path;
}
