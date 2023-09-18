// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, non_constant_identifier_names

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'invoice.dart';

class PDFscreen extends StatefulWidget {
  const PDFscreen({super.key});

  @override
  State<PDFscreen> createState() => _PDFscreenState();
}

class _PDFscreenState extends State<PDFscreen> {
  Invoice? myInvoice;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    myInvoice = ModalRoute
        .of(context)
        ?.settings
        .arguments as Invoice?;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF SCREEN"),
        centerTitle: true,
      ),
      body: PdfPreview(
        build: (format) {
          return genPdf();
        },
      ),
    );
  }


  Future<Uint8List> genPdf() {
    pw.Document doc = pw.Document();

    doc.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                "From:-\n",
                style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, fontSize: 20),
              ),
              pw.Text(
                "${myInvoice?.customeraddress ?? ""}",
                style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, fontSize: 25),
              ),
              pw.Text(
                "${myInvoice?.customeraddress1 ?? ""}",
                style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, fontSize: 20),
              ),
              pw.Text(
                "${myInvoice?.customeraddress2 ?? ""}",
                style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, fontSize: 20),
              ),
              pw.SizedBox(height: 40),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    "To:-\n",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 20),
                  ),
                  pw.Text(
                    "${myInvoice?.customerreceiveraddress ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 25),
                  ),
                  pw.Text(
                    "${myInvoice?.customerreceiveraddress1 ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 20),
                  ),
                  pw.Text(
                    "${myInvoice?.customerreceiveraddress2 ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 20),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(left: 210, top: 30),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "Invoice Number:\t\t${myInvoice?.invoice_no ?? ""}",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 20),
                        ),
                        pw.Text(
                          "Invoice Date:\t\t\t\t\t\t\t\t${myInvoice?.invoice_date ?? ""}",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 20),
                        ),
                        pw.Text(
                          "Payment Terms:\t\t\t${myInvoice?.payterms ?? ""}",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 20),
                        ),
                        pw.Text(
                          "Due Date:\t\t\t\t\t\t\t\t\t\t\t\t\t\t${myInvoice?.Due_date ?? ""}",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              pw.SizedBox(height: 100),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    "INVOICE",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 40),
                  ),
                  pw.SizedBox(height: 30),
                  pw.Text(
                    "My description.......",
                    style: pw.TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
    doc.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            children: [
              pw.Container(
                width: double.infinity,
                height: 50,
                color: PdfColors.grey300,
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 10),
                    pw.Text(
                      "Desc.",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 15),
                    ),
                    pw.SizedBox(width: 35),
                    pw.Text(
                      "Date.",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 15),
                    ),
                    pw.SizedBox(width: 35),
                    pw.Text(
                      "Quantity",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 15),
                    ),
                    pw.SizedBox(width: 35),
                    pw.Text(
                      "Unit Price",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 15),
                    ),
                    pw.SizedBox(width: 38),
                    pw.Text(
                      "VAT",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 15),
                    ),
                    pw.SizedBox(width: 35),
                    pw.Text(
                      "Total.",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              pw.Row(
                children: [
                  pw.SizedBox(width: 5, height: 50),
                  pw.Text(
                    "${myInvoice?.product_name ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 13),
                  ),
                  pw.SizedBox(width: 30, height: 50),
                  pw.Text(
                    "${myInvoice?.prodate ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 13),
                  ),
                  pw.SizedBox(width: 50, height: 50),
                  pw.Text(
                    "${myInvoice?.product_quantity1 ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 13),
                  ),
                  pw.SizedBox(width: 50, height: 50),
                  pw.Text(
                    "\$${myInvoice?.product_price ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 13),
                  ),
                  pw.SizedBox(width: 50, height: 50),
                  pw.Text(
                    "${myInvoice?.vat ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 13),
                  ),
                  pw.SizedBox(width: 35, height: 50),
                  pw.Text(
                    "\$${myInvoice?.total ?? ""}",
                    style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold, fontSize: 13),
                  ),
                ],
              ),
              pw.Divider(thickness: 2),
              pw.Padding(
                padding: pw.EdgeInsets.only(left: 300),
                child: pw.Column(
                  children: [
                    pw.Text(
                      "Net total:\t\t\t\t\t\$${myInvoice?.nettotal??""}",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 18),
                    ),
                    pw.Text(
                      "Vat 19.0:\t\t\t\t\t\t${myInvoice?.vat ?? ""}",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 18),
                    ),
                    pw.Divider(thickness: 2),
                    pw.Text(
                      "Total amount due: \$${myInvoice?.amounttotal ?? ""}",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              pw.Divider(thickness: 2),
              pw.Column(
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.only(left: 80),
                    child: pw.Row(
                      children: [
                        pw.Text(
                          "Address: ",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 20),
                        ),
                        pw.Text(
                          "BapaSitaram Chowk,mavdi,rajkot-360004",
                          style: pw.TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(left: 80),
                    child: pw.Row(
                      children: [
                        pw.Text(
                          "Paypal: ",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 20),
                        ),
                        pw.Text(
                          "https://paypal.me/r&w",
                          style: pw.TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );

    return doc.save();
  }
}
