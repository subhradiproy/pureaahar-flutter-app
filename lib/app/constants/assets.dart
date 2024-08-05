/// This contains all the svg assets used in the app.
enum SvgAsset {
  googleIcon('assets/vectors/google.svg'),
  india('assets/vectors/india.svg'),
  ;

  const SvgAsset(this.path);

  final String path;
}

/// This contains all the animation assets used in the app.
enum LottieAsset {
  splash('assets/animations/splash.json'),
  ;

  const LottieAsset(this.path);

  final String path;
}

/// This contains all the image assets used in the app.
enum ImageAsset {
  bestOffer('assets/images/best-offer.png'),
  ;

  const ImageAsset(this.path);

  final String path;
}
