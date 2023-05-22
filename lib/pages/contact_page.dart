import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/media_button.dart';
import 'package:portfolio/sections/page_structure.dart';
import 'package:portfolio/text-components/post_title.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/contact_card.dart';
import '../text-components/sub_title.dart';
import '../text-components/title.dart';
import 'notifier.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        Provider.of<Notifier>(context, listen: false).selectedLanguage;
    return PageStructure(
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubTitle(text: selectedLanguage == "eng" ? "Contact" : "Kontakt"),
          TitleText(
              title:
                  selectedLanguage == "eng" ? "Get In Touch" : "Kontakta mig"),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
            child: Align(
              alignment: Alignment.center,
              child: Wrap(
                runSpacing: 15,
                spacing: 10,
                children: [
                  ContactCard(
                    leadingIcon: FontAwesomeIcons.envelope,
                    title: "Email Me",
                    content: InkWell(
                      onTap: () {
                        String textToCopy = "jakobodman1997@gmail.com";
                        FlutterClipboard.copy(textToCopy).then((value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Copied to clipboard')),
                          );
                        });
                      },
                      child: const Tooltip(
                        richMessage: TextSpan(
                          text: "Copy To Clipboard",
                          style: TextStyle(color: Colors.white),
                        ),
                        child: PostTitle(
                          text: "jakobodman1997@gmail.com",
                          fontSize: 12,
                          bold: false,
                        ),
                      ),
                    ),
                  ),
                  ContactCard(
                    leadingIcon: FontAwesomeIcons.phone,
                    title: "Call Me",
                    content: InkWell(
                      onTap: () {
                        String textToCopy = "0763085859";
                        FlutterClipboard.copy(textToCopy).then((value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Copied to clipboard')),
                          );
                        });
                      },
                      child: const Tooltip(
                        richMessage: TextSpan(
                          text: "Copy To Clipboard",
                          style: TextStyle(color: Colors.white),
                        ),
                        child: PostTitle(
                          text: "0763085859",
                          fontSize: 12,
                          bold: false,
                        ),
                      ),
                    ),
                  ),
                  ContactCard(
                    leadingIcon: FontAwesomeIcons.shareNodes,
                    title: "Socials",
                    content: Row(
                      children: [
                        MediaButton(
                            icon: FontAwesomeIcons.linkedin,
                            onPressed: () {
                              launchUrl(Uri.parse(
                                  "https://www.linkedin.com/in/jakobodmanlindecrantz"));
                            }),
                        MediaButton(
                            icon: FontAwesomeIcons.github,
                            onPressed: () {
                              launchUrl(Uri.parse(
                                  "https://github.com/jakobodman123"));
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
