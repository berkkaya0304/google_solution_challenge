import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Specs extends StatefulWidget {
  const Specs({super.key});

  @override
  State<Specs> createState() => _Specs();
}

class _Specs extends State<Specs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              title: Row(
                children: [
                  Image.asset('2.png', scale: 16),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('SPECIES',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 30))
                ],
              ),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/ankarakecisi.jpeg'),
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  children: [
                                    
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  "Ankara Keçisi",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  'The Angora or Ankara is a Turkish breed of domesticated goat. It produces the lustrous fibre known as mohair. It is widespread in many countries of the world. Many breeds derive from it, among them the Indian Mohair, the Soviet Mohair, the Angora-Don of the Russian Federation and the Pygora in the United States.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        )),
                        const SizedBox(
                          height: 50,
                        ),
                        Material(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/vankedi.jpeg'),
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  children: [
                                    
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  "Van Cat",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  'The Van cat (Turkish: Van kedisi; Western Armenian: Վանայ կատու, romanized: Vana gadu; Eastern Armenian: Վանա կատու, romanized: Vana katu; Kurdish: pisîka Wanê) is a distinctive landrace (or "natural breed") of the domestic cat found around Lake Van in the Eastern Anatolia Region of Turkey.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        )),
                        const SizedBox(height: 20),
                        Material(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/vaşak.jpg'),
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  children: [
                                    
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  "Vaşak",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  'A lynx (/lɪŋks/; pl.: lynx or lynxes) is any of the four extant species (the Canada lynx, Iberian lynx, Eurasian lynx and the bobcat) within the medium-sized wild cat genus Lynx. The name originated in Middle English via Latin from the Greek word lynx (λύγξ),derived from the Indo-European root leuk- ("light", "brightness"),in reference to the luminescence of its reflective eyes.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        )),
      
                  ],
                );
              },
            ));
  }
}
