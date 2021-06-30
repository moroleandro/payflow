import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widtgets/label_button/label_button.dart';
import 'package:payflow/shared/widtgets/divider_vertical/divider_vertical_widget.dart';

class BarcodeScannerPage  extends StatefulWidget {
  const BarcodeScannerPage({ Key? key }) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Escaneie o código de barras do boleto",
          style: TextStyles.buttonBackground,  
        ),
        leading: BackButton(color: AppColors.background),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(color: Colors.transparent)
          ),
          Expanded(
            child: Container(color: Colors.black)
          ),
        ],
      ),
      bottomNavigationBar: 
        Row(children: [
          Expanded(
            child: LabelButton(
              label: "Inserir código do boleto",
              onPressed: (){}
            ),
          ),
          DividerVerticalWidget(height: 56),
          Expanded(
            child: LabelButton(
              label: "Adicionar da galeria",
              onPressed: (){}
            ),
          ),
        ],
      )
    );
  }
}