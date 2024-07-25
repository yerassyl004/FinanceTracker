import 'dart:async';
import 'dart:math';

import 'package:finance_app/core/models/segment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class MultiSegmentCircularPercentIndicator extends StatelessWidget {
  final List<Segment> segments;

  const MultiSegmentCircularPercentIndicator({super.key, required this.segments});

  Future<List<ui.Image>> _loadImages() async {
    List<ui.Image> images = [];
    for (var segment in segments) {
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
    return FutureBuilder<List<ui.Image>>(
      future: _loadImages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox();
        } else if (snapshot.hasError) {
          return const Text('Error loading images');
        } else {
          return CustomPaint(
            size: const Size(200, 200),
            painter: _CircularSegmentPainter(segments, snapshot.data!),
          );
        }
      },
    );
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
      final image = images[i];
      final imageSize = 30.0;
      final imageRect = Rect.fromCenter(center: Offset(x, y), width: imageSize, height: imageSize);
      canvas.drawImageRect(image, Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()), imageRect, Paint());

      startAngle += sweepAngle;
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
