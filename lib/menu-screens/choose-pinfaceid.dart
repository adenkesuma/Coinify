import "package:defi/data-provider.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class choosePinFaceId extends StatefulWidget {
  const choosePinFaceId({super.key});

  @override
  State<choosePinFaceId> createState() => _choosePinFaceIdState();
}

class _choosePinFaceIdState extends State<choosePinFaceId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Choose PIN/Face ID",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 18),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        child: Column(
          children: [
            CupertinoListTile(
              title: Text("Pin",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
              leading: CupertinoRadio(
                value: 1,
                groupValue: Provider.of<ProfileSecurityProvider>(context).pinOrFaceIdValue,
                onChanged: (int? value){
                  setState(() {
                    Provider.of<ProfileSecurityProvider>(context,listen: false).changePinOrFaceIdValue(value!);
                  });                },
              ),
            ),
            CupertinoListTile(
              title: Text("Face ID",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
              leading: CupertinoRadio(
                value: 2,
                groupValue: Provider.of<ProfileSecurityProvider>(context).pinOrFaceIdValue,
                onChanged: (int? value){
                  setState(() {
                    Provider.of<ProfileSecurityProvider>(context,listen: false).changePinOrFaceIdValue(value!);
                  });
                },
              ),
            )
          ],
        )
      ),
    );
  }
}