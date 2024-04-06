import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TailorMainPage extends StatefulWidget {
  const TailorMainPage({Key? key}) : super(key: key);

  @override
  State<TailorMainPage> createState() => _TailorMainPageState();
}

class _TailorMainPageState extends State<TailorMainPage> {
  var TailorShop = "The Dream Designers";
  var TailorAddress = "Marve road, Malad(west)";
  var CurrentDate = "27th March, Monday";
  var OrderRecieved = "68";
  var NewOrders = "2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 125,
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(30),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF1F4E5F),
                  Color(0xFF79A8A9),
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 35),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          TailorShop,
                          style: GoogleFonts.poppins(
                            color: const Color(0xFFF4F7F7),
                            fontStyle: FontStyle.italic,
                            fontSize: 23,
                          ),
                        ),
                        const SizedBox(
                            height:
                                5), // Adjust the space between TailorShop and TailorAddress
                        Text(
                          TailorAddress,
                          style: GoogleFonts.poppins(
                            color: const Color(
                                0xFFF4F7F7), // Set the color same as TailorShop
                            fontSize: 12, // Adjust the font size
                          ),
                        ),
                        const SizedBox(height: 28),
                        Text(
                          CurrentDate,
                          style: GoogleFonts.poppins(
                            color: const Color(0xFFF4F7F7),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(), // Added Spacer to push the CircleAvatar to the rightmost side
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            "images/man-tailor-sitting-table-sewing-machine-atelier-studio-workshop-fashion-designer-profession-job-occupation_575670-321.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        title: const SizedBox.shrink(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.fromLTRB(22, 20, 22, 16), // Adjust top padding
          child: Column(
            children: [
              const SizedBox(
                  height: 10), // Increase space between AppBar and Container
              Container(
                height: 190, // Increase height of the container
                width: double.infinity, // Set width to maximum
                decoration: BoxDecoration(
                  color: Colors.white, // Set card background color to white
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 6,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align the text to the left
                    children: [
                      Row(
                        children: [
                          Text(
                            "All time",
                            style: GoogleFonts.inter(
                              fontSize: 15, // Reduce font size
                              color: const Color(0xFF1F4E5F),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6), // Increase space between rows
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Align text to left
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total Amount Received",
                                style: GoogleFonts.inter(
                                  fontSize: 12, // Reduce font size
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              Text(
                                "Rs.5000",
                                style: GoogleFonts.inter(
                                  fontSize: 17, // Reduce font size
                                  color: const Color(0xFF84DB2D),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                "Active Orders",
                                style: GoogleFonts.inter(
                                  fontSize: 12, // Reduce font size
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              Text(
                                "2",
                                style: GoogleFonts.inter(
                                  fontSize: 17, // Reduce font size
                                  color: const Color(0xFF84DB2D),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 35),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Align text to left
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pending Amount",
                                style: GoogleFonts.inter(
                                  fontSize: 12, // Reduce font size
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              Text(
                                "Rs.478",
                                style: GoogleFonts.inter(
                                  fontSize: 17, // Reduce font size
                                  color: const Color(0xFFF60C0C),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                "Active Orders",
                                style: GoogleFonts.inter(
                                  fontSize: 12, // Reduce font size
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              Text(
                                "2",
                                style: GoogleFonts.inter(
                                  fontSize: 17, // Reduce font size
                                  color: const Color(0xFF84DB2D),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ), // Increase space between rows

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            backgroundColor:
                                const Color(0xFFAACFD0), // Set background color
                          ),
                          child: const Text(
                            "View Dashboard",
                            style: TextStyle(fontSize: 10), // Reduce font size
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 85, // Increase height of the container
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFAACFD0), // Set card background color to white
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              "Add new order",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.inter(fontSize: 14),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            "images/icons8-jeans-jacket-100.png",
                            width: 45, // Set width to 50 pixels
                            height: 45, // Set height to 50 pixels
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 85, // Increase height of the container
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFAACFD0), // Set card background color to white
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: Text(
                                  "Add new appointment",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.inter(fontSize: 14),
                                ),
                            ),
                            
                          ),
                          const SizedBox(width: 8),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,8,0),
                            child: Image.asset(
                              "images/icons8-sewing-machine-48.png",
                              width: 45, // Set width to 50 pixels
                              height: 45, // Set height to 50 pixels
                            ),
                          ),
                        ],
                      ),
                    
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80, // Increase height of the container
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFAACFD0), // Set card background color to white
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/icons8-list-64.png",
                                width: 50, // Set width to 50 pixels
                                height: 50, // Set height to 50 pixels
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Track Orders",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700, fontSize: 13),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80, // Increase height of the container
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFAACFD0), // Set card background color to white
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/icons8-administrator-male-50.png",
                                width: 50, // Set width to 50 pixels
                                height:50, // Set height to 50 pixels
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Clients",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700, fontSize: 13),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80, // Increase height of the container
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFAACFD0), // Set card background color to white
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star,color: Colors.amber,size: 50,)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Reviews",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700, fontSize: 13),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80, // Increase height of the container
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFAACFD0), // Set card background color to white
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/icons8-thread-48.png",
                                width: 50, // Set width to 50 pixels
                                height: 50, // Set height to 50 pixels
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Materials",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700, fontSize: 13),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                        height: 150, // Increase height of the container
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF4F7F5),
                  Color(0xFFAACFD0),
                ],
              ), // Set card background color to white
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(height: 20,),
                                  Text("Performance this month",style: GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:18),)
                                ],
                              ),
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(6,0,6,0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(OrderRecieved,style: GoogleFonts.inter(fontSize: 34,fontWeight:FontWeight.w600),),
                                            const SizedBox(width: 10,),
                                            Image.asset("images/icons8-jeans-jacket-100.png",
                                                                    width: 60,
                                                                    height:60, )
                                          ],
                                        ),
                                        Text("Orders Recieved",style: GoogleFonts.inter(fontSize:16),)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(6.0,0,6,0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(NewOrders,style: GoogleFonts.inter(fontSize: 34,fontWeight:FontWeight.w600),),
                                            const SizedBox(width: 10,),
                                            Image.asset("images/icons8-jeans-jacket-100.png",
                                                                    width: 60,
                                                                    height:60, )
                                          ],
                                        ),
                                        Text("New clients",style: GoogleFonts.inter(fontSize:16),)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                      ),
            ],
          ),
          
        ),
      ),
    );
  }
}
