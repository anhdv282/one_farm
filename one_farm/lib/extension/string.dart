extension StringExtension on String {
  get firstLetterToUpperCase {
    if (this != null)
      return this[0].toUpperCase() + this.substring(1);
    else
      return null;
  }

  isNullOrEmpty() {
    if(this == null || this.isEmpty) {
      return true;
    }
    return false;
  }
}