import 'package:flutter/material.dart';
import 'package:flutter_8/constants/global_variable.dart';
import 'package:flutter_8/features/account/widgets/below_app_bar.dart';
import 'package:flutter_8/features/account/widgets/orders.dart';
import 'package:flutter_8/features/account/widgets/top_buttons.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(50),
      child: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: GlobalVariables.appBarGradient,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[Expanded(
            child: Container(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/logo_t.png',
            width: 130,height: 80,
           // color: Colors.black,
                   
            ),
                  ),
          ),
        Container(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(children: const [
            Padding(padding: EdgeInsets.only(right: 15,
            ),
            child: Icon(Icons.notifications_outlined),),
            Icon(Icons.search),
          ],),
        )
        ]
          
        ),
      ),),
      body: Column(children: const[
        BelowAppBar(),
        SizedBox(height: 10,),
        TopButtons(),
        SizedBox(height: 20,),
        Orders(),
      ],),
    );
  }
}