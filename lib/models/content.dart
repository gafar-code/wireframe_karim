class ContentModel {
  final int id;
  final String content;
  final String? audio;
  final bool isPlaying;
  const ContentModel({required this.id, required this.content, this.audio, this.isPlaying = false});

  ContentModel updateWith({bool? isPlaying}) {
    return ContentModel(
      id: id,
      content: content,
      audio: audio,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}
