import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:wireframe_karim/configurator.dart';
import 'package:wireframe_karim/models/content.dart';

class CustomMateriScreen extends StatefulWidget {
  final List<ContentModel> contents;
  final bool? shrinkWrap;
  final bool? selected;
  const CustomMateriScreen({Key? key, required this.contents, this.selected, this.shrinkWrap}) : super(key: key);

  @override
  State<CustomMateriScreen> createState() => _CustomMateriScreenState();
}

class _CustomMateriScreenState extends State<CustomMateriScreen> {
  late AssetsAudioPlayer _audioPlayer;
  final Playlist _playlist = Playlist();

  @override
  void initState() {
    _audioPlayer = AssetsAudioPlayer();
    for (ContentModel content in widget.contents) {
      if (content.audio != null && content.audio!.isNotEmpty) {
        _playlist.add(Audio(content.audio!));
      }
    }
    _audioPlayer.open(_playlist, autoStart: false);
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollWithoutEffect(),
      child: ListView.builder(
          shrinkWrap: widget.shrinkWrap ?? false,
          padding: const EdgeInsets.only(bottom: 120),
          itemCount: widget.contents.length,
          itemBuilder: ((_, index) {
            return _buildContent(context, index, index.floor().isEven);
          })),
    );
  }

  _buildContent(context, int index, bool isEven) {
    ContentModel content = widget.contents[index];
    bool haveAudio = content.audio != null && content.audio!.isNotEmpty;
    double audioProgresWidth = MediaQuery.of(context).size.width * 0.5;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 34),
      color: isEven ? Colors.grey.withOpacity(0.1) : Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Text(
              widget.contents[index].content,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 12),
          haveAudio
              ? StreamBuilder<bool>(
                  stream: _audioPlayer.isPlaying,
                  builder: (context, snapshot) {
                    bool isPlaying = snapshot.data ?? false;
                    Duration? duration = _audioPlayer.current.valueOrNull?.audio.duration;
                    double presentage = 0;
                    isPlaying = isPlaying && _audioPlayer.current.valueOrNull?.index == index;
                    return SizedBox(
                      height: 28,
                      width: audioProgresWidth,
                      child: Stack(
                        children: [
                          Align(
                            alignment: const Alignment(-0.8, 0),
                            child: Material(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(12),
                              child: SizedBox(height: 14, width: audioProgresWidth),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(-0.8, 0),
                            child: StreamBuilder<Duration>(
                                stream: _audioPlayer.currentPosition,
                                builder: (context, snapshot) {
                                  Duration? currentPosition = snapshot.data;
                                  if (currentPosition != null && duration != null) {
                                    presentage = currentPosition.inSeconds / duration.inSeconds;
                                  }
                                  return Material(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                    child: SizedBox(height: 14, width: _audioPlayer.current.valueOrNull?.index == index ? audioProgresWidth * presentage : 0),
                                  );
                                }),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(90),
                              onTap: () {
                                if (_audioPlayer.current.valueOrNull?.index == index) {
                                  _audioPlayer.playOrPause();
                                } else {
                                  _audioPlayer.playlistPlayAtIndex(index);
                                }
                              },
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.green,
                                child: Center(
                                  child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  })
              : const SizedBox()
        ],
      ),
    );
  }
}
