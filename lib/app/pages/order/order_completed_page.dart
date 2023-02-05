import 'package:dw9_delivery/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery/app/core/ui/styles/text_styles.dart';
import 'package:dw9_delivery/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class OrderCompletedPage extends StatelessWidget {
  const OrderCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: context.percentHeight(.2)),
              Image.asset('assets/images/logo_rounded.png'),
              const SizedBox(height: 20),
              Text(
                'Pedido realizado com sucesso, embreve você receberá a seu pedido',
                textAlign: TextAlign.center,
                style: context.textStyles.textExtraBold.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 40),
              DeliveryButton(
                whidth: context.percentWidth(.8),
                height: 45,
                label: 'FECHAR',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
