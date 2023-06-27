import 'package:app_one/smart_device_box.dart';
import 'package:flutter/material.dart';

class SmartUI extends StatefulWidget {
  const SmartUI({super.key});

  @override
  State<SmartUI> createState() => _SmartUIState();
}

class _SmartUIState extends State<SmartUI> {

  final double horizontalPadding = 40;
  final double verticalPadding = 25;
  bool isCheck=true;
  List mySmartDevices = [
    ["Smart Light", "assets/icons/light-bulb.png", true],
    ["Smart AC", "assets/icons/air-conditioner.png", true],
    ["Smart TV", "assets/icons/smart-tv.png", true],
    ["Smart Fan", "assets/icons/fan.png", true],
  ];

  void powerSwitchChanged(bool value, int index){
    print(value);
    setState(() {
      mySmartDevices[index] [2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/menu.png',
                    height: 45,
                    color: Colors.grey[800],
                  ),
                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Welcome Home"),
                Text("MITCH KOKO",
                style: TextStyle(fontSize: 40),
                ),
              ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child:const Text("Smart Devices"),
            ),

            Expanded(child: GridView.builder(
              itemCount: mySmartDevices.length,
              padding: const EdgeInsets.all(25),
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // childAspectRatio: 1/13,
                ),
              itemBuilder: (context, index){
                return InkWell(
                  onTap: (){
                    mySmartDevices[index][2] = !isCheck;
                    print(mySmartDevices[index][2]);
                    setState(() {
                      
                    });
                  },
                  child: SmartDeviceBox(
                    smartDeviceName: mySmartDevices[index][0],
                    iconPath: mySmartDevices[index][1],
                    powerOn: mySmartDevices[index][2],
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                );
             }
              ),
             )

        ],
        ),
      ),
    );
  }
}