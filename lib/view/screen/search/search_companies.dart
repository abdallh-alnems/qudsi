import 'package:flutter/material.dart';
import '../../widget/ad/ad_banner_search.dart';
import '../../widget/arrow_back.dart';
import '../../widget/search/search_text_form_companies.dart';

class SearchCompanies extends StatelessWidget {
  const SearchCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
              SearchFormTextCompanies(),
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
