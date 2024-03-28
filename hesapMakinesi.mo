// hesap makinesi 
// değişkenler: (let -> immutable, var -> mutable)

actor hesap_makinesi {
  var hucre: Int = 0;

  // Toplama Fonks
  public func toplama(s:Int) : async Int {
    hucre+=s;
    hucre
  };

  // Çıkarma Fonks
  public func cikarma(s:Int) : async Int {
    hucre-=s;
    hucre
  };

  // Çarpma Fonks
  public func carpma(s:Int) : async Int {
    hucre*=s;
    hucre
  };

  // Bölme Fonks
  public func bolme(s:Int) : async ?Int { // ? sebebi = sonuç 0 veya float bir değer de olabilir
    if( s == 0) {
      null
    }
    else{
    hucre /=s;
    ?hucre // sonucun ne olduğunu bilmediğimiz için ? kullandık
    }
  };

  // Öncek İşlemi Temizleme Fonks
  public func temizle() : async() {
    hucre := 0;
  };
  
}

