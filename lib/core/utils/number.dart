extension IntExtension on int {
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  int get inKobo => this * 100;
  int get inNaira => this ~/ 100;
}
