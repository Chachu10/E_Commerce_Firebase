import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/add_image/add_image.dart';
import 'package:shop_app/screens/add_product/add_product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class AddProductForm extends StatefulWidget {
  @override
  _AddProductForm createState() => _AddProductForm();
}

class _AddProductForm extends State<AddProductForm> {
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? productName;
  String? description;
  String? price;

  List<String> category = [
    'Electronics',
    'Groceries',
    'Sports',
    'Fashion',
    'Books',
  ];
  String? selectedCategory;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).pushNamed(AddImage.routeName);
              },
              label: const Text('Add Images'),
              icon: const Icon(Icons.add_a_photo_outlined),
              backgroundColor: kPrimaryColor,
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            Container(
              height: 65,
              width: 470,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black38,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(80)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Center(
                      child: DropdownButton(
                        hint: Text('Please choose a Category'),
                        value: selectedCategory,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCategory = newValue as String?;
                          });
                        },
                        items: category.map((category) {
                          return DropdownMenuItem(
                            child: new Text(category),
                            value: category,
                          );
                        }).toList(),
                        underline: Container(
                          height: 1,
                          color: Colors.black38,
                        ),
                        //icon: Icon(Icons.arrow_drop_down_circle_outlined),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black26,
                    size: 30,
                  ),
                  Padding(padding: EdgeInsets.only(right: 2)),
                ],
              ),
            ),

            //FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: "Add this product",
              press: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, AddProduct.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  
  // TextFormField buildAddressFormField() {
  //   return TextFormField(
  //     onSaved: (newValue) => address = newValue,
  //     onChanged: (value) {
  //       if (value.isNotEmpty) {
  //         removeError(error: kAddressNullError);
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         addError(error: kAddressNullError);
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "Address",
  //       hintText: "Enter your home address",
  //       // If  you are using latest version of flutter then lable text and hint text shown like this
  //       // if you r using flutter less then 1.20.* then maybe this is not working properly
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon:
  //           CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
  //     ),
  //   );
  // }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => price = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Price (INR)",
        hintText: "Enter product price",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/price.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => description = newValue,
      decoration: InputDecoration(
        labelText: "Description",
        hintText: "Tell us about your product",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/description.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => productName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Product Name",
        hintText: "Enter your product's name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/myproduct.svg"),
      ),
    );
  }
}
