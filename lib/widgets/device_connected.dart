import 'package:flutter/material.dart';

class DeviceConnected extends StatelessWidget {
  const DeviceConnected({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            Icons.landscape,
            color: Colors.lightBlue,
            size: 28,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Device Connected",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 8,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "SnowCounterBLE",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.circle,
                  size: 4,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "ab1c2d3efg45h",
                  style: TextStyle(color: Colors.white38, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
