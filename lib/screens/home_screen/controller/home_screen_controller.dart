import 'package:education_app/controller/base_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreenController extends BaseController {
  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
