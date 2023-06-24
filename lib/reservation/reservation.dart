import 'package:ac_88/enginnerdetail/engineerprovider.dart';
import 'package:ac_88/register/registerProvider.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Reservation extends StatefulWidget {
  int index;

  Reservation({super.key, required this.index});

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<registerProvider>(context);
    var engprov = Provider.of<EngineerProvider>(context);
    var engtmp = engprov.jsonData['data'];
    var more = engtmp[widget.index]['More'];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "AC88",
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 3, 25, 0),
              child: Text(
                "Reservation",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 3, 25, 0),
              child: Text(
                "Fill out this form to make reservation",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 17, 25, 5),
              child: Text(
                "Name",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 5, 25, 5),
              child: TextField(
                controller: prov.tfname,
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Ho'oH",
                    hintStyle: TextStyle(fontSize: 15),
                    isDense: true,
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    labelText: "Ho'oH",
                    floatingLabelBehavior: FloatingLabelBehavior.never),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 5, 25, 5),
              child: Text(
                "Address",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(17, 5, 25, 17),
              child: TextField(
                controller: prov.tfaddress,
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Jln. Gajah Kuda No 12",
                    hintStyle: TextStyle(fontSize: 15),
                    isDense: true,
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    labelText: "Jln. Gajah Kuda No 12",
                    floatingLabelBehavior: FloatingLabelBehavior.never),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 5, 25, 17),
              child: DateTimePicker(
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Time",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 5, 25, 5),
              child: Text(
                "Engineer Name",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 5, 25, 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(97, 97, 97, 1)),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.grey[200],
                ),
                height: 0.053 * height,
                width: 0.95 * width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${engtmp[widget.index]['name']}",
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 5, 25, 5),
              child: Text(
                "What you need",
                style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              height: 350,
              child: ListView.builder(
                  itemCount: more.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(17, 5, 25, 5),
                      child: Card(
                        elevation: 8,
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${more[index]['name']}",
                                style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "${more[index]['price']}",
                                style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
