//Model
import 'dart:ffi';

class ProductModel {
  Int ID;
  String Name;
  String Description;
  String Price;
  String Image;
//
  ProductModel({
    required this.ID,
    required this.Name,
    required this.Description,
    required this.Price,
    required this.Image,
  });
}
