// enums : represent constant values

void main(){
  person prsn =person('ayesha', gender.female);
  // prsn.displayinfo();
  switch(prsn.Gender){
    case gender.male:
     print('i am male');
    
    case gender.female:
     print('i am female');

    case gender.other:
     print('i am other');
  }
}

class person{
  String name;
  gender Gender;
  person(this.name, this.Gender);
  
  void displayinfo(){
    print('my name is ${name}');
    if(Gender == gender.male){
      print('i am male');
    }
    else if(Gender == gender.female){
      print('i am female');
    }else{
       print('i am other');
    }
  }
}

enum gender{
  male,
  female,
  other;
}


// mixin we to share code between different classes, it has no constructor and no object

// import 'dart:io';

// void main(){
//   person p = person('talha@gmail.com', '123');
//   p.displayinfo();
// }

// class person with validation{
//   String? email;
//   String password;

//   person(this.email, this.password);

//   void displayinfo(){
//     print('email : ${email}');
//  print('password : ${validator(password)}');
//   }

// }



// mixin validation{
//   String? validator(String value){
//     if(value.isEmpty){
//       return 'password can not be null';
//     }
//     if(value.length < 6){
//       return 'password is week';
//     }
//     return value;
//   }
// }



// void main(){
//   dog _dog = dog('dog');
//   _dog.sound();

//   cat _cat = cat('cat');
//   _cat.sound();
// }

// abstract class animals{
//   String? animal;
//   animals(this.animal);
//   void sound();
//   void eat(){
//     print('this ${animal} is eating');
//   }
// }

// class dog extends animals{
//   dog(String animal) : super(animal);
//   @override
//   void sound() {
//     print('dog barks');
//     super.eat();
//     // TODO: implement sound
//   }

// }

// class cat extends animals{
//   cat(String animal) : super(animal);
//   @override
//   void sound() {
//     print('cat  meaow');
//     super.eat();
//     // TODO: implement sound
//   }

// }

// // abstract class,  we can not create abstract class object, in abstract class we define methods only
// void main(){
//   network ntwrk = network();
//   Map<String, String> data ={
//     'email' : 'zafartalha062@gmail.com',
//     'password' : '123456'
//   };
//   ntwrk.postapi(data);
// }

// abstract class baseapiservice{
//   void getapi();
//   void postapi(var data);
// }

// class network extends baseapiservice{
//   @override
//   void getapi() {
//     // TODO: implement getapi
//   }

//   @override
//   void postapi(var data) async{
//     print('API HIT');
//     await Future.delayed(Duration(seconds: 2));
//     print(data['email']);
//   }

// }

// class spectrumnetwork extends baseapiservice{
//   @override
//   void getapi() {
//     // TODO: implement getapi
//   }

//   @override
//   void postapi(data) {
//     // TODO: implement postapi
//   }

// }


// car rental system

// void main(){
//   car rcar = car('toyota', '2024', 4); 
//   rcar.displayinfo();
//   print('car rent is : ${rcar.calculatefair(5)}');

//   bike rbike = bike('CD70', '2024', 5);
//   rbike.displayinfo();
//   print('bike rent is : ${rbike.calculatefair(1)}');
// }

// class vehicle{
//   String? name;
//   String? model;

//   vehicle(this.name, this.model);
//   void displayinfo(){
//     print('vaehicle name : ${name}');
//     print('vehicle model : ${model}');
//   }

//   double calculatefair(int days){
//     return days * 50.0;
//   }
// }
// class car extends vehicle{
//   int? door;
//   car(String name, String model, this.door) : super(name,model);

//   @override
//    double calculatefair(int days){
//     return super.calculatefair(days) * 20 * door!;
//   }
// }

// class bike extends vehicle{
//   int days;
//   bike(String name, String model,this.days) : super(name,model);
//   // @override
//   // void displayinfo() {
//   //   // TODO: implement displayinfo
//   //   super.displayinfo();
//   // }
//   @override
//   double calculatefair(int days){
//     return super.calculatefair(days);
//   }
// }


// inheritance concept again 
// super constructor inherit parent constructor and pass the value to parent constructor with default or using child constructor
// void main(){
//   Dellx dell = Dellx('dell','grey','1212');
//   // dell.displayinfo();
//   dell.displayinfolaptop();
// }
// class laptop{
//   String? brand;
//   String? color;

//   laptop(this.brand, this.color);

//    void displayinfo(){
//     print('laptop name: ${brand}');
//     print('laptop coor : ${color}');
//   }
// }

// class Dellx extends laptop{
//   String? modelid;
//   // Dellx() : super('Dell', 'black');
//   Dellx(String brand, String color, this.modelid) : super(brand, color);  

//   void displayinfolaptop(){
//     super.displayinfo();
//      print('laptop model : ${modelid}');
//   }
// }

// inheritance
// void main(){
//   student student1 = student();
//   student1.name='Talha';
//   student1.age=23;
//   student1.student_gender ='Male';
//   student1.student_id=1212;

//   student1.displayinfo();
//   student1.studentSchoolInfo();
// }
// class person{
// String? name;
// int? age;

// void displayinfo(){
//   print('name : ${name}');
//   print('age : ${age}');
// }
// }

// class student extends person{
//   String? student_gender;
//   int? student_id;

//   void studentSchoolInfo(){
//       print('student_Gender : ${name}');
//       print('ID : ${age}');
//   }
// }

// encapsulation using specialized method getter and setter get meam(get values of private variable) and set mean(set valyes of privae varibales)
// mean jo data private hy usko hm publically get kr ske
// import 'personEncapsulate.dart';
// void main(){
//   peron person1 = peron('talha',20);
//   person1.displaypersoninfo();
//   person1.setage=30;
//   person1.setname = "mustafa";
//   //after setter age is update
//   print(person1.fname);
//   print(person1.age);
// }

// class peron{
//   String _name;
//   int _age;
//   peron(this._name, this._age){}

//   void displaypersoninfo(){
//     print("name is ${_name}");
//     print("age is ${_age}");
//   }
// }

// car rental system

// import 'dart:ffi';

// void main(){
//   Cars _cars1 = Cars(name: 'corolla', model: '2024',color:  'black',available_is:  true);
//   Cars _cars2 = Cars(name: 'GLI', model: '2020',color:  'white',available_is:  true);

//   WhoTake taken =WhoTake('talha', '101');

//   CarRentaoffice _cro = CarRentaoffice();
//   _cro.allcarsinshowroom(_cars1);
//   _cro.allcarsinshowroom(_cars2);
//   _cro.listallcars();

//   _cro.allborrowcars(_cars1, taken);
//   _cro.listallcars();
// }

// class Cars{
//   String? name;
//   String? model;
//   String? color;
//   bool? available_is;

//   Cars({this.name, this.model, this.color, this.available_is}){}
// }


// class CarRentaoffice{
//   List<Cars> allcars=[];
//   List<rental_car> r_cars=[];

//   void allcarsinshowroom(Cars Addcars){
//     allcars.add(Addcars);
//   }

//   void allborrowcars(Cars car, WhoTake whotook){
//     if(car.available_is!){
//       car.available_is = false;
//       r_cars.add(rental_car(car, whotook, DateTime.now()));
//     }else{
//       print('${car.name} is unavailable');
//     }
//   }

//   void listallcars(){
//     for(var aL_cars in allcars){
//       print('------------All Cars---------------');
//      print(aL_cars.name);
//      print(aL_cars.model);
//      print(aL_cars.color);
//      print(aL_cars.available_is);
//      print('---------------------------');
//     }
//   }


//    void listofallborrowcars(){
//     for(var aL_cars in allcars){
//       print('------------All Cars---------------');
//      print(aL_cars.name);
//      print(aL_cars.model);
//      print(aL_cars.color);
//      print(aL_cars.available_is);
//      print('---------------------------');
//     }
//   }
// }

// class WhoTake{
//   String? name;
//   String? id;

//   WhoTake(this.name, this.id){}
// }

// class rental_car{
//   Cars? R_car;
//   WhoTake? W_take;
//   DateTime? borrow_date;

//   rental_car(this.R_car, this.W_take, this.borrow_date){}
// }

// library management system

// void main(){

//   Book book1 = Book(title: '1984', author: 'sheikh', id: '1', isAvailable: true);
//   Book book2 = Book(title: 'GTVC', author: 'talha', id: '2', isAvailable: true);

//   libraries library= libraries();
//   library.addbooks(book1);
//   library.addbooks(book2); 
//   library.listbook();

//   members _membr = members('Johny','m401');
//   library.borrowbooks(book1, _membr);
//   library.listbook();
//   library.list_of_borrow_book();
// }

// class Book{
//   String? title;
//   String? author;
//   String? id;
//   bool? isAvailable;

//   Book({this.title,this.author,this.id,this.isAvailable}){}
// }

// class libraries{
//   List<Book> booklist =[];
//   List<Borrow>  B_book_list =[];

//   void borrowbooks(Book books, members mmbr){
//     if(books.isAvailable!){
//       books.isAvailable = false;
//       B_book_list.add(Borrow(books,mmbr, DateTime.now()));
//     }else{
//       print('${books.title} is unavailable');
//     }
//   }

//   void addbooks(Book book){
//     booklist.add(book);
//   }

//   void listbook(){
//     print('-----------list All books in library------------');
//     for(var bk in booklist){
//       print('title : ${bk.title}, Author : ${bk.author}, BookiId : ${bk.id}, Availability : ${bk.isAvailable} ');
//     }
//     print('-------------------------------------------');
//   }

//     void list_of_borrow_book(){
//     print('-----------list All Borrow books in library------------');
//     for(var b_books in B_book_list){
//       print('Member : ${b_books.membr.member_name}, m_Id : ${b_books.membr.member_id}, ');
//     }
//     print('-------------------------------------------');
//   }

// }

// class members{
//   String? member_name;
//   String? member_id;
//   members(this.member_name, this.member_id){}
// }


// class Borrow{
//   Book book;
//   members membr;
//   DateTime borrowdate;

//   Borrow(this.book, this.membr, this.borrowdate){}
// }



// constructor practice
// void main(){
//   Vechile _vehicle = Vechile();
//   Vechile _vehicle1 = Vechile();

//   _vehicle.Vname = 'prado';
//   _vehicle.Vmodel=2024;
//   _vehicle.Vcolor ='white';
//   _vehicle.displayinfoVehicle();


//   _vehicle1.Vname = 'BMW';
//   _vehicle1.Vmodel=2023;
//   _vehicle1.Vcolor ='Golden';
//   _vehicle1.displayinfoVehicle();




//   // List<Vechile> vehicles =[
//   //   Vechile(Vname: 'landcruise', Vmodel:2024, Vcolor:'black'),
//   //   Vechile(Vname: 'civic', Vmodel:2020, Vcolor:'white')
//   // ];
//   // vehicles.forEach((element) {
//   //    print('Vechicle name is ${element.Vname}');
//   //   print('Vechicle model is ${element.Vmodel}');
//   //   print('Vechicle color is ${element.Vname}');
//   //   print("--------------------------");
//   // },);
  
// }

// class Vechile{
//   String? Vname;
//   int? Vmodel;
//   String? Vcolor;
//   Vechile({this.Vname, this.Vmodel, this.Vcolor}){}

//   void displayinfoVehicle(){
//     print('Vechicle name is ${Vname}');
//     print('Vechicle model is ${Vmodel}');
//     print('Vechicle color is ${Vcolor}');
//     print("--------------------------");
//   }
// }

// constructor called byfault and we intialized value in a class using constructor this.method
// void main(){
//   // student student1 = student('talha',20);
//   // student1.displayinfo();

//   List<student> allstudent =[
//    student('talha',20),
//    student('mustafa',22),
//    student('ali',24),
//   ];

//   allstudent.forEach((element){
//     print(element.name);
//     print(element.age);
//     print('--------');
//   });
// }

// class student{
//   String? name;
//   int? age;
//   student(String name, int age){
//     this.name = name;
//     this.age = age;
//   }

//   void displayinfo(){
//     print('My name is${name}');
//      print('My age is${age}');
//      print('-----------------');
//   }
// }


// null check operator with handling exception
// (??) by using this we can set a by default value
// void main(){
//   Area areaof = Area();
//   // areaof.width = 10;
//   //areaof.height = 10;
//   areaof.calculatearea();
// }

// class Area{
//   double? width;
//   double? height;

//   void calculatearea(){
//     try{

//       if(height == null){
//         print('height have a null vale ');
//       }
//       print(height);
//       //one way
//       // double temp_height = height ?? 0;
//       // double area = width! * temp_height;

//       //other way
//       double area = width ?? 0 * (height ?? 0);
//       print(area);
//     }catch(e){
//       print(e.toString());
//     }
//   }
// }


// classes and objects
// void main(){
//   person _person =person();
//   _person.name = 'talha';
//   _person.fname = 'zafar ali';
//   _person.age = 22;
//   _person.displayinfo();

//     person _person1 =person();
//   _person1.name = 'Mustaf';
//   _person1.fname = 'zafar ali';
//   _person1.age = 24;
//   _person1.displayinfo();
// }

// class person{
//   String? name;
//   String? fname;
//   int? age;

//   void displayinfo(){
//     print('my name is ${name}');
//     print('my father name is ${fname}');
//     print('my age is ${age}');
//   }
// }


// null variables
// void main(){
//   int? age;
//   print(age);

//   List<String> arr = ['mango', 'banana', 'orange'];
//   for(int i=0; i<3; i++){
//     print(arr[i]);
//   }

//   age = 10;
//   print(age);
//   print('hello world');
// }