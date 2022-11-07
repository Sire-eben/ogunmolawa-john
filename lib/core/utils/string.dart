import "package:intl/intl.dart";

extension StringExtension on String {
  int toInt() {
    try {
      return int.parse(this);
    } catch (e) {
      return -1;
    }
  }

  double toDouble() {
    try {
      return double.parse(this);
    } catch (e) {
      return -1;
    }
  }

  String toReadableDateString(
      {bool withTime = false, bool relativeToNow = false}) {
    try {
      final DateTime date =
          DateFormat("EEE MMM dd yyyy HH:mm:ss").parse(this, true).toLocal();
      if (relativeToNow) {
        return _dateRelativeToNow(date);
      }
      DateFormat dateFormat = DateFormat("d, MMM yyyy");
      if (withTime) {
        return dateFormat.add_jm().format(date);
      } else {
        return dateFormat.format(date);
      }
    } catch (_) {
      return "";
    }
  }

  String getInitials({defaultLength = 2}) {
    try {
      if (isEmpty) return "";
      final names = split(" ");
      if (names.length < defaultLength) {
        return names[0][0].toUpperCase();
      }
      return names.sublist(0, defaultLength).map((name) {
        return name[0].toUpperCase();
      }).join();
    } catch (_) {
      return substring(0, 1).toUpperCase();
    }
  }

  String capitalize() {
    if (isEmpty) return this;
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String toFilterDate() {
    return replaceAll("/", "-").split("-").reversed.toList().join("-");
  }

  String toTitleCase() {
    if (length < 2) return this;
    return toLowerCase().split(" ").map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1);
    }).join(" ");
  }

  String redactRange(int start, int end, {String replacement = "•"}) {
    return replaceRange(start, end, replacement * (end - start));
  }

  String toUrlEncoded() {
    return Uri.encodeComponent(this);
  }

  String _dateRelativeToNow(DateTime date) {
    final thisInstant = DateTime.now();
    final diff = thisInstant.difference(date);

    if ((diff.inDays / 365).floor() >= 2) {
      return "${(diff.inDays / 365).floor()} years ago";
    } else if ((diff.inDays / 365).floor() >= 1) {
      return "Last year";
    } else if ((diff.inDays / 30).floor() >= 2) {
      return "${(diff.inDays / 30).floor()} months ago";
    } else if ((diff.inDays / 30).floor() >= 1) {
      return "Last month";
    } else if ((diff.inDays / 7).floor() >= 2) {
      return "${(diff.inDays / 7).floor()} weeks ago";
    } else if ((diff.inDays / 7).floor() >= 1) {
      return "Last week";
    } else if (diff.inDays >= 2) {
      return "${diff.inDays} days ago";
    } else if (diff.inDays >= 1) {
      return "Yesterday";
    } else if (diff.inHours >= 2) {
      return "${diff.inHours} hours ago";
    } else if (diff.inHours >= 1) {
      return "1 hour ago";
    } else if (diff.inMinutes >= 2) {
      return "${diff.inMinutes} minutes ago";
    } else if (diff.inMinutes >= 1) {
      return "1 minute ago";
    } else if (diff.inSeconds >= 3) {
      return "${diff.inSeconds} seconds ago";
    } else {
      return "Just now";
    }
  }
}
