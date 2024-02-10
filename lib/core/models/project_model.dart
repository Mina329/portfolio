import 'package:portfolio/core/models/links_model.dart';

class ProjectModel {
  final String? banner;
  final String? icon;
  final String? description;
  final String? name;
  final List<String> media;
  final List<LinksModel> links;
  final List<String> features;
  ProjectModel({
    required this.features,
    required this.links,
    required this.media,
    required this.name,
    required this.banner,
    required this.icon,
    required this.description,
  });
}
