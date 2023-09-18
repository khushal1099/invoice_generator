// ignore_for_file: prefer_const_constructors
import 'package:invoice_generator/util.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController invoice_numberController = TextEditingController();
TextEditingController invoice_dateController = TextEditingController();
TextEditingController invoice_paytermsController = TextEditingController();
TextEditingController invoice_duedateController = TextEditingController();
TextEditingController customernameController = TextEditingController();
TextEditingController customeraddressController = TextEditingController();
TextEditingController customeraddress1Controller = TextEditingController();
TextEditingController customeraddress2Controller = TextEditingController();
TextEditingController customerreceiveraddressController =
    TextEditingController();
TextEditingController customerreceiveraddress1Controller =
    TextEditingController();
TextEditingController customerreceiveraddress2Controller =
    TextEditingController();
TextEditingController product_nameController = TextEditingController();
TextEditingController dateController = TextEditingController();
TextEditingController vatController = TextEditingController();
TextEditingController quantityController = TextEditingController();
TextEditingController priceController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          appBar: (AppBar(
            title: Text("Invoice Generator"),
            centerTitle: true,
          )),
          body: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: invoice_numberController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Invoice Number";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Invoice Number",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: invoice_dateController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter  Date";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Date',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(10),
                        ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: invoice_paytermsController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter  Payment Terms";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'In Days',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: invoice_duedateController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Due Date";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Due Date',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(10),
                        ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: customernameController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Customer Name";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Customer Name",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: customeraddressController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Your Address";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Address",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: customeraddress1Controller,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Your Address1";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Address1",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: customeraddress2Controller,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Your Address2";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Address2",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: customerreceiveraddressController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Receiver Address";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Receiver Address",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: customerreceiveraddress1Controller,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Receiver Address1";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Receiver Address1",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: customerreceiveraddress2Controller,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Receiver Address2";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Receiver Address2",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: product_nameController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Product Name";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Product Name",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5)),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: dateController,
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Enter Date";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Product Date',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(5),
                        ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: quantityController,
                          validator: (value) {
                            if (value?.isEmpty ?? false) {
                              return "Enter Quantity ";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "Quantity",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(5)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          controller: priceController,
                          validator: (value) {
                            if (value?.isEmpty ?? false) {
                              return "Enter Price";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "Price",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [

                      Flexible(
                        child: TextFormField(
                          controller: vatController,
                          validator: (value) {
                            if (value?.isEmpty ?? false) {
                              return "Enter VAT Percentage";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "VAT %",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          FocusScope.of(context)
                              .unfocus(); // For keyboard Close
                          formKey.currentState?.save();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Save Successfully"),
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.red,
                            action: SnackBarAction(
                              label: "Send",
                              onPressed: () {},
                            ),
                          ));
                          invoice.invoice_no = invoice_numberController.text;
                          invoice.invoice_date = invoice_dateController.text;
                          invoice.payterms = invoice_paytermsController.text;
                          invoice.Due_date = invoice_duedateController.text;
                          invoice.cust_name = customernameController.text;
                          invoice.customeraddress =
                              customeraddressController.text;
                          invoice.customeraddress1 =
                              customeraddress1Controller.text;
                          invoice.customeraddress2 =
                              customeraddress2Controller.text;
                          invoice.customerreceiveraddress =
                              customerreceiveraddressController.text;
                          invoice.customerreceiveraddress =
                              customerreceiveraddress1Controller.text;
                          invoice.customerreceiveraddress2 =
                              customerreceiveraddress2Controller.text;
                          invoice.product_name = product_nameController.text;
                          invoice.prodate = dateController.text;
                          invoice.vat = int.parse(vatController.text);
                          invoice.product_price = int.parse(priceController.text);
                          invoice.product_quantity1 = int.parse(quantityController.text);
                          invoice.total=(invoice.product_quantity1!*invoice.product_price!);
                          invoice.nettotal=(invoice.total);
                          invoice.amounttotal=(invoice.nettotal!+invoice.vat!);
                          Navigator.pushNamed(context, pdfScreenRoute,
                              arguments: invoice);
                          print("Total ${invoice.amounttotal}");
                        } else {
                          print("Invalid");
                        }
                      },
                      child: Text("Save")),
                ],
              ),
            ),
          )),
    );
  }
}
