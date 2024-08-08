import 'package:flutter/material.dart';

class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});
}

class FAQList extends StatelessWidget {
  final List<FAQ> faqs;

  const FAQList({Key? key, required this.faqs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: faqs.length,
      itemBuilder: (context, index) {
        return FAQItem(faq: faqs[index]);
      },
    );
  }
}

class FAQItem extends StatelessWidget {
  final FAQ faq;

  const FAQItem({Key? key, required this.faq}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(faq.question),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(faq.answer),
        ),
      ],
    );
  }
}
