class Validator {
  static String? validateField({required String value}) {
    if (value.isEmpty) {
      return 'Заполните поле';
    }
    return null;
  }

  static String? validateUserID({required String uid}) {
    if (uid.isEmpty) {
      return "заполните поле";
    } else if (uid.length <= 3) {
      return "User ID очень короткий";
    }
    return null;
  }
}
