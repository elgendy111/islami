import 'package:flutter/material.dart';
import 'package:islami/widgets/icon_button.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        SizedBox(
          height: 30,
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomIconButton(
                icon: Icon(
                  Icons.skip_previous,
                  size: 35,
                ),
                onPressed: () {}),
            CustomIconButton(
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 55,
                ),
                onPressed: () {}),
            CustomIconButton(
                icon: Icon(
                  Icons.skip_next,
                  size: 35,
                ),
                onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
