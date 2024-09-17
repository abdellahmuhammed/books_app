import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatefulWidget {
  final double size; // حجم الـ CircularProgressIndicator
  final Color color; // لون الـ CircularProgressIndicator

  const CustomCircularIndicator({
    super.key,
    this.size = 60.0,
    this.color = Colors.blue,
  });

  @override
  _CustomCircularIndicatorState createState() => _CustomCircularIndicatorState();
}

class _CustomCircularIndicatorState extends State<CustomCircularIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // إعداد AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // مدة الأنيميشن
      vsync: this,
    );

    // إعداد CurvedAnimation للحصول على حركة أكثر سلاسة
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    )..addListener(() {
      setState(() {}); // تحديث واجهة المستخدم أثناء الأنيميشن
    });

    _controller.repeat(reverse: false); // تكرار الأنيميشن ذهابًا وإيابًا
  }

  @override
  void dispose() {
    _controller.dispose(); // تنظيف الموارد عند تدمير الودجت
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: _animation.value, // ربط الأنيميشن مع التقدم
              strokeWidth: 6.0, // سمك الـ CircularProgressIndicator
              backgroundColor: Colors.grey.shade200, // لون الخلفية
              valueColor: AlwaysStoppedAnimation<Color>(widget.color), // لون المؤشر
            ),
            Center(
              child: Text(
                '${(_animation.value * 100).toInt()}%', // عرض النسبة المئوية للتقدم
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}