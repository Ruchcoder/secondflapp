import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        //scaffoldBackgroundColor: Color(0xffe6e6fd),
        scaffoldBackgroundColor: Colors.grey.shade300

        //primarySwatch: Color.fromARGB(200, 30, 40, 50);
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body:Container(
        padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
        child: ListView(
          children: [
            Profile(),//Profile class created below
            Padding(padding: EdgeInsets.all(12)),
            Search(),
            Padding(padding: EdgeInsets.all(12)),
            Statistics(),
            Padding(padding: EdgeInsets.all(12)),
            CompanyGoals(),
          ],
        ),
      )
    );
  }
}
// create a classs widget for the profile and then call it in your HomePage
class Profile  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      // width: 200,
      // height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*0.7, ///set the text to screen size
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dele Royce Bamidele ",
                    //overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5),
                Text("CEO at VMStudio",
                  style: TextStyle(

                    color: Colors.grey.shade500,
                  ),
                )
              ],
            ),
          ),
          //FlutterLogo(),
          Icon(
            Icons.account_box_outlined,
            size: 50,
            color: Colors.blue.shade600,
          )
        ],
      ),
    );
  }
}
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      //padding: EdgeInsets.fromLTRB(10, 2, 20, 2),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(10),
            child:Icon(
            Icons.search_sharp,
            size: 20,
            color: Colors.grey,
           ),
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
            labelText: "SEARCH"
            ),
              ), //use for spacimg the search icon and search text

          ),
          Container( ///gadient color box
            height: 62 ,
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(
                colors: [
                  Colors.green.shade800,
                  Colors.green.shade600,
                  Colors.amber.shade500,
                  Colors.amber.shade300
                ],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,

              ),
              border: Border.all(color: Colors.black)
            ),

            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu_rounded, size: 40,),
              color: Colors.black,
            ),
          )
        ],
      ),

    );
  }
}
class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        //width: MediaQuery.of(context).size.width*0.9,
        Padding(padding: EdgeInsets.only(top: 15)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Statistics",
                  style:Theme.of(context).textTheme.headline5),
              Text("Month",
                style: Theme.of(context).textTheme.headline6,)
            ],
          ),


        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 50,
                    color: Colors.black,),
                  Container(
                    width: 10,
                  ),


                  Text("Security Attack",
                    //style:Theme.of(context).textTheme.headline6,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_upward,
                    color: Colors.green.shade800,),
                  const Text("68%")
                ],

              )


            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.fingerprint_sharp,
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 50,
                    color: Colors.black,),
                  Container(
                    width: 10,
                  ),


                  Text("Protected Bunches",
                    //style:Theme.of(context).textTheme.headline6,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_downward,
                    color: Colors.red.shade800,),
                  const Text("38%")
                ],

              )


            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.sports_basketball_outlined,
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 50,
                    color: Colors.black,),
                  Container(
                    width: 10,
                  ),


                  const Text("Runtime Cost",
                    //style:Theme.of(context).textTheme.headline6,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    ),
                  ),

                ],
              ),
              Row(
                children: const [
                // Icon(Icons.arrow_upward,
                   // color: Colors.black,),
                  Text("\$6325")
                ],

              )


            ],
          ),
        ),


      ],

    );
  }
}
class CompanyGoals extends StatelessWidget {
  const CompanyGoals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,


      child: Column(


        children: [

          Padding(padding: EdgeInsets.all(8)),// space around
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                "Company Goals",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                  "All",
              style: Theme.of(context).textTheme.labelLarge,),
            ],
          ),
          Padding(padding: EdgeInsets.all(8)), ///space between company goals ands box deco
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              )
            ),
            child: Column(

              children: [

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [

                        Icon(Icons.check_circle),
                        Text("CyberSecurity Teams")
                      ],
                    ),
                    Text("Active",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),),

                  ],
                ),

                Padding(padding: EdgeInsets.all(20)),
                Text("Conducting Phishing Simulation "
                    "Within Companies",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                )),
                Padding(padding: EdgeInsets.all(10)),
                Divider(
                  color: Colors.grey.shade600,
                  indent: 10,
                  endIndent: 10,
                ),

                Row(
                  children: [
                      Icon(Icons.access_time_filled_sharp),
                    Text("Ends in 24 days")

                  ],
                ),

              ],
              
            ),

          ),
          Container(
            height: 30,
          ),
          Row(
            children: [
              //Padding(padding: EdgeInsets.all(10)),

              Row(

                children: [
                  //Icon(Icons.home_mini_outlined),
                  Icon(Icons.home_outlined,
                  size: 50,),
                  Padding(padding: EdgeInsets.all(20)),
                  Icon(Icons.sports_baseball,
                    size: 50,),
                  Padding(padding: EdgeInsets.all(20)),
                  Icon(Icons.calendar_today_outlined,
                    size: 50,),
                  Padding(padding: EdgeInsets.all(20)),
                  Icon(Icons.person,
                    size: 50,)
                ],
              )
            ],
          )
        ],

      ),

      
    );
  }
}








