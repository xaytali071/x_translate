class MessageModel {
  final String title;
  final String ownerId;
  final String? image;


  MessageModel( {
    required this.title,
    required this.ownerId,
    required this.image,
  });

  factory MessageModel.fromJson({required Map data, required String messId}) {
    return MessageModel(
      title: data["title"],
      ownerId: data["ownerId"],
      image: data['image'],
    );
  }

  toJson() {
    return {
      "title": title,
      "ownerId": ownerId,
      "image":image,
    };
  }
}