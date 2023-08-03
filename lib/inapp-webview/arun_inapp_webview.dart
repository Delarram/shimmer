//
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:get/get.dart';
// import 'package:hi_internet_mobile/app/utils/constants/environment.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../../view_model/di/splash_screen_service.dart';
//
// class InvoicePaymentScreenV2 extends StatefulWidget {
//   const InvoicePaymentScreenV2({Key? key}) : super(key: key);
//
//   @override
//   State<InvoicePaymentScreenV2> createState() => _InvoicePaymentScreenV2State();
// }
//
// class _InvoicePaymentScreenV2State extends State<InvoicePaymentScreenV2> {
//   final GlobalKey webViewKey = GlobalKey();
//   InAppWebViewController? webViewController;
//   InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
//       crossPlatform: InAppWebViewOptions(
//         useShouldOverrideUrlLoading: true,
//         mediaPlaybackRequiresUserGesture: false,
//       ),
//       android: AndroidInAppWebViewOptions(
//         useHybridComposition: true,
//       ),
//       ios: IOSInAppWebViewOptions(
//         allowsInlineMediaPlayback: true,
//       ));
//
//   late PullToRefreshController pullToRefreshController;
//   String url = "";
//   double progress = 0;
//   late var encodeData;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     var args = Get.arguments;
//     late String invoiceNumber;
//     if (args != null) {
//       invoiceNumber = args[0].toString();
//     }
//
//     String xAccessToken = Get.find<SplashScreenService>().accessToken;
//
//     var stringUtfEncode = utf8.encode(jsonEncode(
//         {"invoice_number": invoiceNumber, "x_access_token": xAccessToken}));
//
//     encodeData = base64.encode(stringUtfEncode);
//
//     debugPrint(encodeData);
//
//     pullToRefreshController = PullToRefreshController(
//       options: PullToRefreshOptions(
//         color: Colors.blue,
//       ),
//       onRefresh: () async {
//         if (Platform.isAndroid) {
//           webViewController?.reload();
//         } else if (Platform.isIOS) {
//           webViewController?.loadUrl(
//               urlRequest: URLRequest(url: await webViewController?.getUrl()));
//         }
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('HI INTERNET PAY'),
//         ),
//         body: SafeArea(
//             child: Column(children: <Widget>[
//               Expanded(
//                 child: Stack(
//                   children: [
//                     InAppWebView(
//                       key: webViewKey,
//                       initialUrlRequest: URLRequest(
//                           url: Uri.parse(
//                               Environment.reactUrl + "/home?data=$encodeData")),
//                       initialOptions: options,
//                       pullToRefreshController: pullToRefreshController,
//                       onWebViewCreated: (controller) {
//                         webViewController = controller;
//                       },
//                       onLoadStart: (controller, url) {
//                         setState(() {
//                           this.url = url.toString();
//                           //urlController.text = this.url;
//                         });
//                       },
//                       androidOnPermissionRequest:
//                           (controller, origin, resources) async {
//                         return PermissionRequestResponse(
//                             resources: resources,
//                             action: PermissionRequestResponseAction.GRANT);
//                       },
//                       shouldOverrideUrlLoading:
//                           (controller, navigationAction) async {
//                         var uri = navigationAction.request.url!;
//                         print(uri);
//                         await launch(url);
//
// // if (![ "http", "https", "file", "chrome",
//                         //   "data", "javascript", "about"].contains(uri.scheme)) {
//                         //   if (await canLaunch(url)) {
//                         //     // Launch the App
//                         //     await launch(
//                         //       url,
//                         //     );
//                         //     // and cancel the request
//                         //     return NavigationActionPolicy.CANCEL;
//                         //   }
//                         // }
//
//                         return NavigationActionPolicy.ALLOW;
//                       },
//                       onLoadStop: (controller, url) async {
//                         pullToRefreshController.endRefreshing();
//                         setState(() {
//                           this.url = url.toString();
//                           //urlController.text = this.url;
//                         });
//                       },
//                       onLoadError: (controller, url, code, message) {
//                         pullToRefreshController.endRefreshing();
//                       },
//                       onProgressChanged: (controller, progress) {
//                         if (progress == 100) {
//                           pullToRefreshController.endRefreshing();
//                         }
//                         setState(() {
//                           this.progress = progress / 100;
//                           //urlController.text = this.url;
//                         });
//                       },
//                       onUpdateVisitedHistory: (controller, url, androidIsReload) {
//                         setState(() {
//                           this.url = url.toString();
//                           //urlController.text = this.url;
//                         });
//                       },
//                       onConsoleMessage: (controller, consoleMessage) {
//                         print(consoleMessage);
//                       },
//                     ),
//                     progress < 1.0
//                         ? LinearProgressIndicator(value: progress)
//                         : Container(),
//                   ],
//                 ),
//               ),
//             ])));
//   }
// }