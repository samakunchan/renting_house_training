import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';

class DetailDescription extends StatefulWidget {
  const DetailDescription({super.key});

  @override
  State<DetailDescription> createState() => _DetailDescriptionState();
}

class _DetailDescriptionState extends State<DetailDescription> {
  bool showMore = true;
  late final TextSpan span;

  @override
  void initState() {
    span = TextSpan(
      style: kBodyMedium,
      children: <InlineSpan>[
        const TextSpan(
          text: kLoremIpsum,
        ),
        TextSpan(
          text: ' Show more',
          style: const TextStyle(color: kPrimaryColor),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              setState(() {
                showMore = !showMore;
              });
            },
        ),
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Description
          Text('Description', style: kheadlineMedium),

          if (showMore)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: RichText(text: span),
            )
          else
            RichText(
              text: span,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          if (!showMore)
            GestureDetector(
              onTap: () {
                setState(() {
                  showMore = !showMore;
                });
              },
              child: RichText(
                text: TextSpan(
                  text: 'Show more',
                  style: kBodyMedium.copyWith(color: kPrimaryColor),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        showMore = !showMore;
                      });
                    },
                ),
              ),
            ),

          /// Info call
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Card(
                    shape: const CircleBorder(),
                    child: Image.network('https://i.pravatar.cc/205', fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gary Allen', style: kheadlineMedium),
                      const SizedBox(height: 8),
                      Text('Owner', style: kBodyMedium),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withValues(alpha: .5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(Icons.phone, color: kLightColor, size: 30),
                          onPressed: null,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withValues(alpha: .5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(Icons.message, color: kLightColor, size: 30),
                          onPressed: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
