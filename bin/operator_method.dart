void main() {
  StockGalon gudang1 = StockGalon();
  StockGalon gudang2 = StockGalon();
  gudang2.jumlahBarang = 5;

  StockGalon gudang3 = gudang1 + gudang2;
  print(gudang3.jumlahBarang);

  StockGalon gudang4 = gudang3 + gudang2;
  print(
      '${gudang3.jumlahBarang} + ${gudang2.jumlahBarang} = ${gudang4.jumlahBarang}');
}

class StockGalon {
  int jumlahBarang = 1;

  StockGalon operator +(StockGalon gudangLain) {
    StockGalon result = StockGalon();
    result.jumlahBarang = jumlahBarang + gudangLain.jumlahBarang;
    return result;
  }
}
