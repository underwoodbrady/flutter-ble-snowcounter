import 'package:flutter/material.dart';

class UpdateForm extends StatelessWidget {
  const UpdateForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.wifi,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text("Wifi",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Name", style: TextStyle(color: Colors.white60)),
                TextFormField(
                  style: const TextStyle(fontSize: 14),
                  decoration: const InputDecoration(hintText: "Enter Name"),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text("Password", style: TextStyle(color: Colors.white60)),
                TextFormField(
                  style: const TextStyle(fontSize: 14),
                  decoration: const InputDecoration(hintText: "Enter Password"),
                ),
                const SizedBox(
                  height: 36,
                ),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.downhill_skiing,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text("Resort",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    style: const TextStyle(fontSize: 14),
                    decoration:
                        const InputDecoration(hintText: "Resort Dropdown"),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text("API Data",
                      style: TextStyle(color: Colors.white60)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
