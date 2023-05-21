import 'package:flutter/material.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  List<dynamic> doctorsOrderData = [
    {"date": "august 16,1998", 'order': 'Paracetamol', 'rationale': "hehe"},
    {"date": "august 16,1998", 'order': 'Paracetamol', 'rationale': "hehe"},
    {"date": "august 16,1998", 'order': 'Paracetamol', 'rationale': "hehe"},
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    const Center(
                        child: Text(
                      'View Order',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                    Container(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: Text(
                          "Date",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                        Expanded(
                            child: Text(
                          "Order",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                        Expanded(
                            child: Text(
                          "Rationale",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                      ],
                    ),
                    Container(
                      height: 10,
                    ),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //         child: Text(
                    //       myData[0]["date"],
                    //       softWrap: true,
                    //     )),
                    //     Expanded(
                    //         child: Text(
                    //       myData[0]["order"],
                    //       softWrap: true,
                    //     )),
                    //     Expanded(
                    //         child: Text(
                    //       myData[0]["rationale"],
                    //       softWrap: true,
                    //     )),
                    //   ],
                    // ),

                    Expanded(
                      child: ListView.builder(
                        itemCount: doctorsOrderData.length,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    doctorsOrderData[i]['order'],
                                    softWrap: true,
                                  )),
                                  Expanded(
                                      child: Text(
                                    doctorsOrderData[i]['order'],
                                    softWrap: true,
                                  )),
                                  Expanded(
                                      child: Text(
                                    doctorsOrderData[i]['rationale'],
                                    softWrap: true,
                                  )),
                                ],
                              ),
                              Divider()
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
