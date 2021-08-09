import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imageAssetUrl;
  Avatar(this.imageAssetUrl);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 200.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Align(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(
                imageAssetUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 50.0,
            right: 50.0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                "Abebe",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
