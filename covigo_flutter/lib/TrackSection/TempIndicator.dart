import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
class TempIndicator extends StatelessWidget {
TempIndicator(@required this.value);
 final double value;
  @override
  Widget build(BuildContext context) {
    return  SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          ticksPosition: ElementsPosition.outside,
          labelsPosition: ElementsPosition.outside,
          minorTicksPerInterval: 5,
          axisLineStyle: AxisLineStyle(
            thicknessUnit: GaugeSizeUnit.factor,
            thickness: 0.1,
          ),
          axisLabelStyle: GaugeTextStyle(

              fontWeight: FontWeight.bold,
              fontSize: 16),
          radiusFactor: 0.97,
          majorTickStyle: MajorTickStyle(
              length: 0.1,
              thickness: 2,

              lengthUnit: GaugeSizeUnit.factor),
          minorTickStyle: MinorTickStyle(
              length: 0.05,
              thickness: 1.5,

              lengthUnit: GaugeSizeUnit.factor),
          minimum: 90,
          maximum: 110,
          interval: 2,
          startAngle: 115,
          endAngle: 65,
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: -60,
                endValue: 120,
                startWidth: 0.1,
                sizeUnit: GaugeSizeUnit.factor,
                endWidth: 0.1,
                gradient: SweepGradient(stops: <double>[
                  0.2,
                  0.4,
                  0.6,
                ], colors: <Color>[
                  Colors.green,
                  Colors.yellow,
                  Colors.red
                ]))
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
                value: value, needleColor: Colors.black,
                tailStyle: TailStyle(length: 0.18, width: 8,
                    color: Colors.black,
                    lengthUnit: GaugeSizeUnit.factor),
                needleLength: 0.68,
                needleStartWidth: 1,
                needleEndWidth: 8,
                knobStyle: KnobStyle(knobRadius: 0.07,
                    color: Colors.white, borderWidth: 0.05,
                    borderColor: Colors.black),
                lengthUnit: GaugeSizeUnit.factor)
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Text(
                  '°F',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                positionFactor: 0.8,
                angle: 90)
          ],
        ),
      ],
    );
  }
}
