import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/info_pin.dart';
import '../pages/notifier.dart';

class InfoPins extends StatelessWidget {
  const InfoPins({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        Provider.of<Notifier>(context, listen: false).selectedLanguage;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoPin(
                  leading: selectedLanguage == "eng" ? "Location" : "Plats",
                  trailing: selectedLanguage == "eng"
                      ? "Stockholm, Sweden"
                      : "Stockholm, Sverige"),
              InfoPin(
                leading: selectedLanguage == "eng" ? "Phone" : "Telefon",
                trailing: "0763085859",
                copyable: true,
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoPin(
                leading: "Gmail",
                trailing: "jakobodman1997@gmail.com",
                copyable: true,
              ),
              InfoPin(
                  leading: selectedLanguage == "eng" ? "Degree" : "Kandidat",
                  trailing: "B.S Computer Science"),
            ],
          )
        ],
      ),
    );
  }
}
