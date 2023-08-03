import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:shimmerflutter/const/api_const.dart';

class InAppWebViewPage extends StatefulWidget {
  const InAppWebViewPage({Key? key}) : super(key: key);

  @override
  State<InAppWebViewPage> createState() => _InAppWebViewPageState();
}

class _InAppWebViewPageState extends State<InAppWebViewPage> {
  double _progress = 0;
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    var stringUtfEncode = utf8.encode(jsonEncode({
      "amount": aParamAmount,"phone":aParamPhone,"email":aParamEmail,"pickup_datetime":aParamPickUpDateTime,
      "dropoff_datetime": aParamDropOffDateTime,"name": aParamName,"invoice_no": aParamInvoiceNum
    }));
    var encodeData = base64.encode(stringUtfEncode);
    print(encodeData);


    return WillPopScope(
      onWillPop: () async{
        var isLastPage = await inAppWebViewController.canGoBack();
        if(isLastPage){
          inAppWebViewController.goBack();
          return false;
        }
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              InAppWebView(
                initialUrlRequest:
                    URLRequest(url: Uri.parse("https://ulay.app/data=$encodeData")),
                onWebViewCreated: (InAppWebViewController controller) {
                  inAppWebViewController = controller;
                },
                onProgressChanged:
                    (InAppWebViewController controller, int progress) {
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),
              _progress < 1 ? LinearProgressIndicator(
                value: _progress,
                color: Colors.green,
              ) : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
