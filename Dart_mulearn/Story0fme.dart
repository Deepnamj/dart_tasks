import 'dart:io';
void main() {
  print('Name:');
  String name = stdin.readLineSync() ?? '';

  print('Phone number:');
  String phoneNumber = stdin.readLineSync() ?? '';

  print('Age:');
  int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('Height (in cm):');
  double height = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  print('Weight (in kg):');
  double weight = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  print('Address:');
  String address = stdin.readLineSync() ?? '';

  print("Hobbies (separated by comma):");
  List<String> hobbies = (stdin.readLineSync() ?? '').split(',');

  String biodata = '''
---------------------------
       BIODATA
---------------------------
Name: $name
Phone Number: $phoneNumber
Age: $age
Height: $height cm
Weight: $weight kg
Address: $address
Hobbies: ${hobbies.join(', ')}
---------------------------
  ''';
  print(biodata);
}