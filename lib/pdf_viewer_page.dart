import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfViewerPage extends StatefulWidget {
  const PdfViewerPage({super.key});

  @override
  State<PdfViewerPage> createState() => _PdfViewerPageState();
}

enum DocShown { sample, tutorial, hello, password }

class _PdfViewerPageState extends State<PdfViewerPage> {
  static const int _initialPage = 1;
  DocShown _showing = DocShown.sample;
  late PdfControllerPinch _pdfControllerPinch;

  @override
  void initState() {
    // // From file (Android, Ios, MacOs)
    // final document = await PdfDocument.openFile('path/to/file/on/device')

    // // From data (Android, Ios, MacOs, Web)
    // final document = await PdfDocument.openData((FutureOr<Uint8List>) data)

    _pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/pdf_folder/Brochure.pdf'),

      initialPage: _initialPage,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfControllerPinch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Pdfx example'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            onPressed: () {
              _pdfControllerPinch.previousPage(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 100),
              );
            },
          ),
          PdfPageNumber(
            controller: _pdfControllerPinch,
            builder:
                (_, loadingState, page, pagesCount) => Container(
                  alignment: Alignment.center,
                  child: Text(
                    '$page/${pagesCount ?? 0}',
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () {
              _pdfControllerPinch.nextPage(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 100),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              switch (_showing) {
                case DocShown.sample:
                case DocShown.tutorial:
                  _pdfControllerPinch.loadDocument(
                    PdfDocument.openAsset('assets/pdf_folder/Brochure.pdf'),
                  );
                  _showing = DocShown.hello;
                  break;
                case DocShown.hello:
                  _pdfControllerPinch.loadDocument(
                    PdfDocument.openAsset('assets/pdf_folder/Brochure.pdf'),
                  );
                  // _showing = kIsWeb ? DocShown.password : DocShown.tutorial;
                  break;

                case DocShown.password:
                  _pdfControllerPinch.loadDocument(
                    PdfDocument.openAsset(
                      'assets/pdf_folder/Brochure.pdf',
                      password: 'MyPassword',
                    ),
                  );
                  _showing = DocShown.tutorial;
                  break;
              }
            },
          ),
        ],
      ),
      body: PdfViewPinch(
        builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
          options: const DefaultBuilderOptions(),
          documentLoaderBuilder:
              (_) => const Center(child: CircularProgressIndicator()),
          pageLoaderBuilder:
              (_) => const Center(child: CircularProgressIndicator()),
          errorBuilder: (_, error) => Center(child: Text(error.toString())),
        ),
        controller: _pdfControllerPinch,
      ),
    );
  }
}
