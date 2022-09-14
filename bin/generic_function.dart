import 'helper/array_helper.dart';

void main() {
  List<String> listString = ['Satu'];
  List<int> listInteger = [1, 2];
  List<bool> listBoolean = [true, false, true];

  ArrayHelper arrayCount = ArrayHelper();

  print(ArrayHelper.countItems(listString));
  print(ArrayHelper.countItems(listInteger));
  print(ArrayHelper.countItems(listBoolean));
}
