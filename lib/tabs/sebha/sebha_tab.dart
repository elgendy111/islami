import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>
    with SingleTickerProviderStateMixin {
  int count = 0;
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 0.0625 * 3.14).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.37,
          child: Stack(
            children: [
              Positioned(
                top: 28,
                right: 130,
                child: Image.asset(
                  'assets/images/head_sebha_logo.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                  alignment: Alignment.topRight,
                ),
              ),
              Positioned(
                  top: 90,
                  right: 0,
                  left: 0,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: AnimatedBuilder(
                      animation: _rotationAnimation,
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: _rotationAnimation.value,
                          child: Image.asset(
                            'assets/images/body_sebha_logo.png',
                            height: MediaQuery.of(context).size.height * 0.22,
                            alignment: Alignment.bottomLeft,
                          ),
                        );
                      },
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 81,
          width: 69,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppTheme.lightPrimary.withOpacity(.5),
          ),
          child: Center(
            child: Text(
              '$count',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 51,
          width: 137,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppTheme.lightPrimary,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                backgroundColor: AppTheme.lightPrimary),
            onPressed: addDigit,
            child: Center(
              child: Text(
                'سبحان الله',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void addDigit() {
    count += 1;
    setState(() {});
    _animationController.forward().then((_) {
      _animationController.reset();
    });
  }
}
