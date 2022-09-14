class Data {
  Future<String> fetchData() async {
    print('Fetching data..');
    await Future.delayed(const Duration(seconds: 13));
    return 'Fetching done';
  }

  Future<String> validateData() async {
    print('Validating data..');
    await Future.delayed(const Duration(seconds: 10));
    return 'Validating done';
  }
}

void main() async {
  Data importantData = Data();

  print('Loading Navbar done');
  print('Loading Body done');
  importantData
      .fetchData()
      .then((value) => print('c: $value'))
      .then((_) => importantData.validateData())
      .then((value) => print('d: $value'))
      .then((_) => 'OK')
      .then((value) => print('Application is $value to use'));
  print('Loading UI done');
}
