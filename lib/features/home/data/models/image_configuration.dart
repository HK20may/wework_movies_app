class ImageConfiguration {
  Images? images;
  List<String>? changeKeys;

  ImageConfiguration({this.images, this.changeKeys});

  ImageConfiguration.fromJson(Map<String, dynamic> json) {
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    changeKeys = json['change_keys'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (images != null) {
      data['images'] = images!.toJson();
    }
    data['change_keys'] = changeKeys;
    return data;
  }
}

class Images {
  String? baseUrl;
  String? secureBaseUrl;
  List<String>? backdropSizes;
  List<String>? logoSizes;
  List<String>? posterSizes;
  List<String>? profileSizes;
  List<String>? stillSizes;

  Images(
      {this.baseUrl,
      this.secureBaseUrl,
      this.backdropSizes,
      this.logoSizes,
      this.posterSizes,
      this.profileSizes,
      this.stillSizes});

  Images.fromJson(Map<String, dynamic> json) {
    baseUrl = json['base_url'];
    secureBaseUrl = json['secure_base_url'];
    backdropSizes = json['backdrop_sizes'].cast<String>();
    logoSizes = json['logo_sizes'].cast<String>();
    posterSizes = json['poster_sizes'].cast<String>();
    profileSizes = json['profile_sizes'].cast<String>();
    stillSizes = json['still_sizes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['base_url'] = baseUrl;
    data['secure_base_url'] = secureBaseUrl;
    data['backdrop_sizes'] = backdropSizes;
    data['logo_sizes'] = logoSizes;
    data['poster_sizes'] = posterSizes;
    data['profile_sizes'] = profileSizes;
    data['still_sizes'] = stillSizes;
    return data;
  }
}
