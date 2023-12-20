class RegisterModel{
  String name;
  String email;
  DateTime date;
  String confirmPassword;
  String password;

  RegisterModel({
    required this.name,
    required this.email,
    required this.date,
    required this.confirmPassword,
    required this.password
  });
}