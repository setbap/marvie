import 'package:flutter/material.dart';
import 'dart:math' as math;

const Color myGreen = const Color(0xFF3ED598);
const Color myGreenDarker = const Color(0XFFADEDD3);

const Color myYellow = const Color(0xFFFFBC25);
const Color myRed = const Color(0xFFFF565E);
const Color myGray = const Color(0xFF30444E);
const Color myLightBlack = const Color(0xFF96A7AF);

class DataCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: myGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      margin: EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        height: 180,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: myGreenDarker.withOpacity(0.5),
                        ),
                        child: MaterialButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          splashColor: Colors.orange,
                          child: Icon(
                            Icons.star_border,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        width: 44,
                        height: 44,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Weekly \nProgress",
                          textAlign: TextAlign.left,
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "It looks like you are on track. Please continue to follow your daily plan",
                    textAlign: TextAlign.start,
                    style: dataTextTheme,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withAlpha(110),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: MaterialButton(
                      height: 60,
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      splashColor: Colors.orange,
                      child: Text(
                        "ok",
                        style: TextStyle(color: myGreen),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextStyle dataTextTheme = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      height: 1.5);
}

class GiftCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: myYellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      margin: EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        height: 180,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.card_giftcard,
              color: Colors.white,
            ),
            Text(
              "Weekly Progress",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Container(
              width: 250,
              child: Text(
                "It looks like you are on track. Please continue to follow your daily plan",
                textAlign: TextAlign.center,
                style: dataTextTheme,
              ),
            )
          ],
        ),
      ),
    );
  }

  final TextStyle dataTextTheme = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      height: 1.5);
}

class UploadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: myRed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      margin: EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Weekly Progress",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "It looks like you are on track. Please continue to follow your daily plan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  letterSpacing: 0.9,
                  height: 1.4,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              height: 160,
              child: CustomPaint(
                painter: DashRectPainter(
                    color: Colors.white, gap: 6, strokeWidth: 2),
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withAlpha(110),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: MaterialButton(
                          height: 60,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          splashColor: Colors.orange,
                          child: Icon(
                            Icons.cloud_upload,
                            color: myRed,
                          )),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final TextStyle dataTextTheme = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      height: 1.5);
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: myGray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      margin: EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage('assets/images/1.jpeg'),
                    fit: BoxFit.cover),
              ),
              width: double.infinity,
              height: 160,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Weekly Progress",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          textBaseline: TextBaseline.alphabetic
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Weekly progress on dieting",
                        style: TextStyle(
                            color: myLightBlack,
                            fontSize: 14,
                            letterSpacing: 0.9,
                            height: 1.4,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter,
                        child: FlatButton.icon(
                          padding: EdgeInsets.only(left: 8, top: 0, right: 8),
                          textColor: myLightBlack,
                          onPressed: () {
                            print("help");
                          },
                          icon: Icon(Icons.help),
                          label: FittedBox(child: Text("42 liked")),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  final TextStyle dataTextTheme = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      height: 1.5);
}

class DashRectPainter extends CustomPainter {
  double strokeWidth;
  Color color;
  double gap;

  DashRectPainter(
      {this.strokeWidth = 5.0, this.color = Colors.red, this.gap = 5.0});

  @override
  void paint(Canvas canvas, Size size) {
    Paint dashedPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double x = size.width;
    double y = size.height;

    Path _topPath = getDashedPath(
      a: math.Point(0, 0),
      b: math.Point(x, 0),
      gap: gap,
    );

    Path _rightPath = getDashedPath(
      a: math.Point(x, 0),
      b: math.Point(x, y),
      gap: gap,
    );

    Path _bottomPath = getDashedPath(
      a: math.Point(0, y),
      b: math.Point(x, y),
      gap: gap,
    );

    Path _leftPath = getDashedPath(
      a: math.Point(0, 0),
      b: math.Point(0.001, y),
      gap: gap,
    );

    canvas.drawPath(_topPath, dashedPaint);
    canvas.drawPath(_rightPath, dashedPaint);
    canvas.drawPath(_bottomPath, dashedPaint);
    canvas.drawPath(_leftPath, dashedPaint);
  }

  Path getDashedPath({
    @required math.Point<double> a,
    @required math.Point<double> b,
    @required gap,
  }) {
    Size size = Size(b.x - a.x, b.y - a.y);
    Path path = Path();
    path.moveTo(a.x, a.y);
    bool shouldDraw = true;
    math.Point currentPoint = math.Point(a.x, a.y);

    num radians = math.atan(size.height / size.width);

    num dx = math.cos(radians) * gap < 0
        ? math.cos(radians) * gap * -1
        : math.cos(radians) * gap;

    num dy = math.sin(radians) * gap < 0
        ? math.sin(radians) * gap * -1
        : math.sin(radians) * gap;

    while (currentPoint.x <= b.x && currentPoint.y <= b.y) {
      shouldDraw
          ? path.lineTo(currentPoint.x, currentPoint.y)
          : path.moveTo(currentPoint.x, currentPoint.y);
      shouldDraw = !shouldDraw;
      currentPoint = math.Point(
        currentPoint.x + dx,
        currentPoint.y + dy,
      );
    }
    return path;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
