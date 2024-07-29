class peron{
  String _name;
  int _age;
  peron(this._name, this._age){}

  String get fname => _name;
  int get age => _age;

  set setage(int age){
    if(age>0){
      _age = age;
    }
  }

  set setname(String fname){
    _name = fname;
  }
  void displaypersoninfo(){
    print("name is ${_name}");
    print("age is ${_age}");
  }
}