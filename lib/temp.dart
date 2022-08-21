
class CtoF {
  double sum = 0;
  CtoF() {}
  double doConvert(double num) {
    sum = (num*9)/5+32;
    return sum;
  }
}

class FtoC {
  double sum = 0;
  FtoC() {}
  double doConvert(double num){
    sum = ((num-32)*5)/9;
    return sum;
  }
}

class KtoC {
  double sum = 0;
  KtoC() {}
  double doConvert(double num){
    sum = num-273.15;
    return sum;
  }
}

class CtoK {
  double sum = 0;
  CtoK() {}
  double doConvert(double num){
    sum = num+273.15;
    return sum;
  }
}

class FtoK {
  double sum = 0;
  FtoK() {}
  double doConvert(double num){
    sum = ((num+459.67)*5)/9;
    return sum;
  }
}

class KtoF {
  double sum = 0;
  KtoF() {}
  double doConvert(double num){
    sum = (num*9)/5-459.67;
    return sum;
  }
}