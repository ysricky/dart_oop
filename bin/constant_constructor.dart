class ImmutableData{
  final int? dataX;
  final int? dataY;

  const ImmutableData(this.dataX, this.dataY);
}

void main() {
  ImmutableData data1 = ImmutableData(30, 30);
  ImmutableData data2 = ImmutableData(30, 30);

  ImmutableData data3 = const ImmutableData(50, 50);
  ImmutableData data4 = const ImmutableData(50, 50);

  print(data1 == data2);
  print(data3 == data4);
}