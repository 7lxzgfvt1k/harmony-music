import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

class FullscreenController extends GetxController {
  final isFullscreen = false.obs;

  Future<void> toggleFullscreen() async {
    await windowManager.setFullScreen(!isFullscreen.value);
    isFullscreen.value = !isFullscreen.value;
  }

  Future<void> exitFullscreen() async {
    if (isFullscreen.value) {
      await windowManager.setFullScreen(false);
      isFullscreen.value = false;
    }
  }

  Future<void> initializeWindowManager() async {
    await windowManager.ensureInitialized();
    isFullscreen.value = await windowManager.isFullScreen();
  }
}
