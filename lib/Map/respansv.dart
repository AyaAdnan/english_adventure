

class Respansv{
  double size1;
  double size2;
  Respansv({this.size1, this.size2});
  getDeviceType(){
    if(size1 >= 600){
      return size2 / 1.50;
    }else{
      return size2;
    }
  }
}