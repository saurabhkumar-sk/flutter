import 'package:my_first_app/api_services/base_services.dart';
import 'package:my_first_app/utils/api_urls.dart';

class UserService extends BaseService {
  Future<void> getUsersApi() async {
    getHttp(ApiUrls.users);
  }
}
