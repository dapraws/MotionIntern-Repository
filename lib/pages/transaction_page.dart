import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Selesai"),
          content: Text("udah gitu aja bang."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_outlined,
            size: 35,
          ),
        ),
        title: Container(
          width: 43,
          height: 44,
          child: Image(
            image: AssetImage(
              "assets/images/logo.png",
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.ios_share,
              size: 30,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                // Transaction Details
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.6),
                    color: Colors.grey[100],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Image.asset("assets/images/success.png"),
                      SizedBox(height: 10),
                      Text(
                        "Transaksi Berhasil",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black.withOpacity(.75),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Rp. 58,000",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 27,
                        ),
                      ),
                      Divider(
                        height: 30,
                        thickness: 1,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invoice Number",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.5,
                              color: Colors.black.withOpacity(.55),
                            ),
                          ),
                          Text(
                            "000085752257",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 13.5,
                                color: Colors.black.withOpacity(.75)),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tanggal Transaksi",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.5,
                              color: Colors.black.withOpacity(.55),
                            ),
                          ),
                          Text(
                            "16 Juni 2023",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 13.5,
                                color: Colors.black.withOpacity(.75)),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jenis Pembayaran",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.5,
                              color: Colors.black.withOpacity(.55),
                            ),
                          ),
                          Text(
                            "QRIS",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 13.5,
                                color: Colors.black.withOpacity(.75)),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 30),

                // Order Details
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.6),
                    color: Colors.grey[100],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Detail Pesanan",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jenis Pesanan",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black.withOpacity(.55),
                            ),
                          ),
                          Text(
                            "2x Frappucino - Monte",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black.withOpacity(.75),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nama Pemesan",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black.withOpacity(.55),
                            ),
                          ),
                          Text(
                            "Asep Knalpot",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black.withOpacity(.75),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Pesanan",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black.withOpacity(.55),
                            ),
                          ),
                          Text(
                            "Rp. 58,000",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black.withOpacity(.75),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 40),

                // Download Button
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFF00623B),
                    borderRadius: BorderRadius.circular(27.5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _showDialog(context);
                    },
                    child: Text(
                      "Download E - Ticket",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
