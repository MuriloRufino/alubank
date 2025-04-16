import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text('Pontos da Conta',
                  style: Theme.of(context).textTheme.titleMedium)),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pontos totais:', style: TextStyle()),
                      _AccountPointsContent(points: '3000')
                    ])),
            ContentDivision(),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
                  child: Text('Objetivos:',
                      style: Theme.of(context).textTheme.titleMedium)),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, bottom: 12.0, right: 4.0),
                    child: ColorDot(color: ThemeColors.objectives['free'])),
                Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Entrega Grátis: 15000pts',
                        style: Theme.of(context).textTheme.bodyMedium))
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, bottom: 12.0, right: 4.0),
                    child:
                        ColorDot(color: ThemeColors.objectives['streaming'])),
                Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Text('1 mês de streaming: 30000pts',
                        style: Theme.of(context).textTheme.bodyMedium))
              ])
            ])
          ])
        ]));
  }
}

class _AccountPointsContent extends StatelessWidget {
  final String points;

  const _AccountPointsContent({required this.points, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(points, style: Theme.of(context).textTheme.bodyLarge));
  }
}
