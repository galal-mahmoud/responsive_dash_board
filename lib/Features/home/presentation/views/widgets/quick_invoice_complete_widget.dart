import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/customer_info_form.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/quick_Invoice_buttoms.dart';
import 'package:responsive_dash_board/Features/home/presentation/views/widgets/quick_Invoice_header.dart';
import 'latest_transaction.dart';

class QuickInvoiceCompleteWidget extends StatelessWidget {
  const QuickInvoiceCompleteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, bottom: 16.0),
      padding: const EdgeInsetsDirectional.all(20.0),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12.0)
      ),
      child:  const Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          CustomerInfoForm(),
          QuickInvoiceButtoms(),
        ],
      ),
    );
  }
}


