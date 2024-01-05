import 'package:flutter/material.dart';
import '../../constant/theme/app_colors.dart';
import '../../model/companies_model.dart';
import '../../view/widget/build_card_items/card_items_companies.dart';


class CompaniesBuilder extends StatelessWidget {
  final Future<List<CompaniesModel>>? future;
  const CompaniesBuilder({super.key, required this.future});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CompaniesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<CompaniesModel> companies = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.only(top: 45),
              physics: const BouncingScrollPhysics(),
              itemCount: companies.length,
              itemBuilder: (context, index) {

                return buildCardItemsCompanies(
                  context,
                  image: companies[index].image!,
                  nameCompanies: companies[index].company!,
                  specialty: companies[index].specialty!,
                 companyId: companies[index].companyId!,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Image.asset('assets/images/Error.png'));
          }
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.iconAndBarColor,
          ));
        });
  }
}
