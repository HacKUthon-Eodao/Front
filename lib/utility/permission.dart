import 'package:permission_handler/permission_handler.dart';

void checkStoragePermission() async {
  var status = await Permission.storage.status;
  if (status.isDenied) {
    var requestStatus = await Permission.storage.request();
    print("requestStatus: ${requestStatus.toString()}");
// We didn't ask for permission yet or the permission has been denied before but not permanently.
  }

// You can can also directly ask the permission about its status.
  if (status.isRestricted) {
// The OS restricts access, for example because of parental controls.
  }

  if (status.isGranted) {
// Either the permission was already granted before or the user just granted it.
  }

  print("asdfasfa${status.toString()}");
}
