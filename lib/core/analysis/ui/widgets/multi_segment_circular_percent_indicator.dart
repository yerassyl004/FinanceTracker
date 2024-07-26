import 'dart:async';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:finance_app/core/models/segment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MultiSegmentCircularPercentIndicator extends StatefulWidget {
  final List<Segment> segments;

  const MultiSegmentCircularPercentIndicator({super.key, required this.segments});

  @override
  _MultiSegmentCircularPercentIndicatorState createState() => _MultiSegmentCircularPercentIndicatorState();
}

class _MultiSegmentCircularPercentIndicatorState extends State<MultiSegmentCircularPercentIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation with a delay
    Future.delayed(const Duration(milliseconds: 10), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<List<ui.Image>> _loadImages() async {
    List<ui.Image> images = [];
    for (var segment in widget.segments) {
      print(segment.color);
      try {
        final image = await _loadImage('assets/images/${segment.icon}.png');
        images.add(image);
      } catch (e) {
        print('Error loading image for segment ${segment.icon}: $e');
      }
    }
    return images;
  }

  Future<ui.Image> _loadImage(String path) async {
    try {
      final ByteData data = await rootBundle.load(path);
      final List<int> bytes = data.buffer.asUint8List();
      final Completer<ui.Image> completer = Completer();
      ui.decodeImageFromList(Uint8List.fromList(bytes), (ui.Image img) {
        completer.complete(img);
      });
      return completer.future;
    } catch (e) {
      print('Error loading image from path $path: $e');
      throw e;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Segment> segmentsToRender = widget.segments;

    
      if (widget.segments.isEmpty) {
        segmentsToRender = [
          Segment(
            percent: 100,
            color: Colors.grey,
            icon: '', // No icon needed for 'no transactions' text
          ),
        ];
      }
    

    return FutureBuilder<List<ui.Image>>(
      future: _loadImages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox();
        } else if (snapshot.hasError) {
          return const Text('Error loading images');
        } else {
          return AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return ClipOval(
                clipper: CircleRevealClipper(_animation.value),
                child: CustomPaint(
                  size: const Size(200, 200),
                  painter: _CircularSegmentPainter(segmentsToRender, snapshot.data ?? []),
                ),
              );
            },
          );
        }
      },
    );
  }
}

class CircleRevealClipper extends CustomClipper<Rect> {
  final double revealPercent;

  CircleRevealClipper(this.revealPercent);

  @override
  Rect getClip(Size size) {
    final epicenter = Offset(size.width / 2, size.height / 2);
    final radius = size.width * revealPercent;
    return Rect.fromCircle(center: epicenter, radius: radius);
  }

  @override
  bool shouldReclip(CircleRevealClipper oldClipper) {
    return oldClipper.revealPercent != revealPercent;
  }
}

class _CircularSegmentPainter extends CustomPainter {
  final List<Segment> segments;
  final List<ui.Image> images;

  _CircularSegmentPainter(this.segments, this.images);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    double startAngle = -90.0;
    final radius = size.width / 2;

    if (segments.length == 1 && segments[0].color == Colors.grey) {
      // Draw grey segment with 'no transactions' text
      final paint = Paint()
        ..color = Colors.grey
        ..style = PaintingStyle.stroke
        ..strokeWidth = 20;

      canvas.drawArc(rect, radians(startAngle), radians(360), false, paint);
    
      final textPainter = TextPainter(
        text: const TextSpan(
          text: 'No records',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        maxLines: 2,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      final offset = Offset(
        (size.width - textPainter.width) / 2,
        (size.height - textPainter.height) / 2,
      );
      textPainter.layout();
      textPainter.paint(canvas, offset);
    } else {
      for (int i = 0; i < segments.length; i++) {
        final segment = segments[i];
        final paint = Paint()
          ..color = segment.color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 20;

        final sweepAngle = segment.percent * 360 / 100;
        canvas.drawArc(rect, radians(startAngle), radians(sweepAngle), false, paint);

        // Calculate the position for the image
        final angle = radians(startAngle + sweepAngle / 2);
        final x = radius + radius * 0.7 * cos(angle);
        final y = radius + radius * 0.7 * sin(angle);

        // Draw the image
        if (i < images.length) {
          final image = images[i];
          final imageSize = 30.0;
          final imageRect = Rect.fromCenter(center: Offset(x, y), width: imageSize, height: imageSize);
          canvas.drawImageRect(image, Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()), imageRect, Paint());
        }

        startAngle += sweepAngle;
      }
    }
  }

  double radians(double degrees) {
    return degrees * 3.141592653589793 / 180;
  }

  @override
  bool shouldRepaint(_CircularSegmentPainter oldDelegate) {
    return oldDelegate.segments != segments || oldDelegate.images != images;
  }
}
