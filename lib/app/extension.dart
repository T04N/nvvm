
const EMPTY = "";
const ZERO = 0;
extension nonNullString on String {
  String orEmpty() {
    if (this == null)
      return "";
    else
      return this;
  }
}

extension nonNullInteger on int? {
  int orZero() {
    if (this == null)
      return 0;
    else
      return this!;
  }
}



