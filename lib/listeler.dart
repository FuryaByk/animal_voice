void main() {
  List<String> isimler = ['barış', 'arda', 'kerem', 'ecenaz', 'ecem'];
  print(isimler[2]); //2. index deki değeri yaz
  print(isimler[0]);
  isimler[0] = 'Alpay'; //0. indexi Alpay olarak değiştir.
  print(isimler[0]);
  isimler.add('Koray'); //en sona deger ekler
  print(isimler);
  // isimler.remove('Alpay'); //Değere göre siler
  // print(isimler);
  // isimler.removeAt(4); //indexe göre siler
  // print(isimler);
  // isimler.removeLast(); //en sondakini siler
  // print(isimler);
  // isimler.removeRange(0, 2); //0 dan başlayıp 2 tane siler
  // print(isimler);

  //indexOf('Kerem')=> isimlerde kerem varsa indexini yoksa da -1 değerini verir.
  int varmi = isimler.indexOf('kerem');
  if (varmi == -1) {
    print('Değer YOK');
  } else {
    print('Değer VAR $varmi. indexte');
  }
//(isimler.contains('ecenaz')=> isimlerde ecenaz varsa true yoksa false verir.
  if (isimler.contains('ecenaz')) {
    print('Değer VAR');
  } else {
    print('Değer YOK');
  }
}
