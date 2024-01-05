import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppLink{

//==================================host========================================

 static String linkServer = dotenv.get("API_HOST");

//==================================image=======================================

static String imageProducts = '$linkServer/upload/photoProducts';

static String imageCompanies = '$linkServer/upload/photoCompanies';

//==================================core========================================

static String linkProducts = '$linkServer/view/viewProducts.php';

static String linkCompany = '$linkServer/view/viewCompanies.php';

static String linkCompanyProducts = '$linkServer/view/viewCompanyProducts.php';

static String linkCategoryProducts = '$linkServer/view/viewCategoryProducts.php';


//==================================search======================================

static String linkSearchProducts = '$linkServer/view/search/searchProducts.php';

static String linkSearchCompanies = '$linkServer/view/search/searchCompany.php';





}