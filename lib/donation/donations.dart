import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class Donations extends StatefulWidget {
  const Donations({super.key});

  @override
  State<Donations> createState() => _Donations();
}

class _Donations extends State<Donations> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              title: Row(
                children: [
                  Icon(Icons.monetization_on),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Donation Menu',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 30))
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(CupertinoIcons.cart)),
                IconButton(
                    onPressed: () {                    },
                    icon: const Icon(CupertinoIcons.arrow_right_to_line)),
              ],
            ),
            body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1 / 5),
              itemCount: 1,
              itemBuilder: (context, int i) {
                return Column(
                  children: [
                    Material(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewTema()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/temalogo.png'),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('BİLGİ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10)),
                                        )),
                                    SizedBox(width: 10),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade100,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('BAĞIŞ',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10)),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  "TEMA",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  'Help the forests in Turkiye!',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$10.00',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue[400],
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )),
                                  
                            ],
                          ),
                          
                        )),
                        const SizedBox(
                          height: 40,
                        ),
                        Material(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewWorld()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/Rainforest_Trust_logo.png'),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('BİLGİ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10)),
                                        )),
                                    SizedBox(width: 10),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade100,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('BAĞIŞ',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10)),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  "Rainforest Trust",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  'Help the animals in the world!',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$10.00',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue[400],
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )),
                                  
                            ],
                          ),
                          
                        )),
                  ],
                );
              },
            ),
            );
  }
}
  

  class WebViewTema extends StatefulWidget {
  @override
  _WebViewTemaState createState() => _WebViewTemaState();
}

class _WebViewTemaState extends State<WebViewTema> {
  final String initialUrl = 'https://www.tema.org.tr/bagislar';
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: initialUrl,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

  class WebViewWorld extends StatefulWidget {
  @override
  _WebViewWorldState createState() => _WebViewWorldState();
}

class _WebViewWorldState extends State<WebViewWorld> {
  final String initialUrl = 'https://www.rainforesttrust.org/about-us/our-team/?form=donation';
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: initialUrl,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}