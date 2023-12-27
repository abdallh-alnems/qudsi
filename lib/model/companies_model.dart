
class CompaniesModel {
  int? companyId;
  String? company;
  String? specialty;
  String? image;

  CompaniesModel({this.companyId, this.company, this.specialty, this.image});

  CompaniesModel.fromJson(Map<String, dynamic> json) {
    companyId = json['company_id'];
    company = json['company'];
    specialty = json['specialty'];
    image = json['image'];
  }


}