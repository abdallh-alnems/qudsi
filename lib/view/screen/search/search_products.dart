import 'package:flutter/material.dart';
import '../../widget/ad/ad_banner_search.dart';
import '../../widget/arrow_back.dart';
import '../../widget/search/search_text_form_products.dart';

class SearchProducts extends StatelessWidget {
  const SearchProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SearchFormTextProducts(),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 6),
              child: ArrowBack(),
            )
          ],
        ),
      ),
       bottomNavigationBar: AdBannerSearch(),
    );
  }
}
