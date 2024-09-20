import 'package:url_launcher/url_launcher.dart';
import 'custom_snack_bar.dart';

/// Launches a given URL if it can be opened, otherwise shows an error message.
/// [context] - The current BuildContext for displaying a snack bar.
/// [url] - The URL string to be launched.
Future<void> customLaunchCustomUr( context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url); // Parse the URL string into a Uri object.

    // Check if the URL can be launched.
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri); // Launch the URL.
    } else {
      // Show an error message if the URL cannot be launched.
      customSnackBar(context, 'Cannot launch $url');
    }
  }
}
