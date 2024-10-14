// KPC Calender for the sem/year
//

// KPC CONSTITUTION PDF VIEWER

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import

class CalendarViewer extends StatefulWidget {
  const CalendarViewer({super.key});

  @override
  State<CalendarViewer> createState() => _CalendarViewerState();
}

class _CalendarViewerState extends State<CalendarViewer> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(CupertinoIcons.chevron_back)),
          title: const Text("KPC Constitution"),
          actions: [
            IconButton(icon: const Icon(Icons.download), onPressed: () {}),
          ]),

      // body for pdf view
      body: SfPdfViewer.network(
        "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
        canShowPageLoadingIndicator: true,
        canShowScrollStatus: true,
        enableDoubleTapZooming: true,
        enableTextSelection: true,
        canShowPaginationDialog: true,
        scrollDirection: PdfScrollDirection.vertical,
      ),
    );
  }
}
