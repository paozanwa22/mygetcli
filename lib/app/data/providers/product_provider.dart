import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  String url =
      "https://get-cli-projec-default-rtdb.asia-southeast1.firebasedatabase.app/";

  Future<void> editProduct(String id, String name, String createdAt) async {
    await put(
      '$url' + 'products/$id.json',
      {
        'name': name,
        'createdAt': createdAt,
      },
    );
  }

  Future<dynamic> postProduct(String name, String date) async {
    final response = await post(
      '$url' + 'products.json',
      {
        'name': name,
        'createdAt': date,
      },
    );
    return response.body;
  }

  Future<void> deleteProduct(String id) async => await delete(
        '$url' + 'products/$id.json',
      );
}
