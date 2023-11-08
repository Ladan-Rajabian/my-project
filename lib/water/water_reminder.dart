import 'package:flutter/material.dart';
import 'package:flutter_untiteld/water/overview.dart';
import 'package:flutter_untiteld/water/settings_page.dart';
import 'package:flutter_untiteld/widgets/healthy_inkwell.dart';
import 'package:gap/gap.dart';

class WaterReminder extends StatelessWidget {
  const WaterReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Water reminder'),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/image/waterBackground.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.30), BlendMode.dstATop)),
            ),
            child: Center(
              child: Column(children: [
                const Gap(120),
                
                InkWell(
                  child:const  HealthyContainer(text: 'Setting',),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Setting(),
                        ));
                  },
                ),
                const Gap(120),
                InkWell(
                  child: const HealthyContainer(text: 'Overview',),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OverView(),
                      ));
                  },
                ),
              ]),
            )));
  }
}
