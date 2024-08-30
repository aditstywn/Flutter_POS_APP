import 'package:flutter_pos_app/data/models/response/product/add_product_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../../core/constants/variables.dart';
import '../../models/request/product/add_product_request_model.dart';
import '../../models/request/product/update_product_request_model.dart';
import '../../models/response/product/product_response_models.dart';
import '../../models/response/product/update_product_response_model.dart';
import '../auth/auth_local_datasource.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductsResponseModel>> getAllProduct() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http
        .get(Uri.parse('${Variables.baseUrl}/api/products'), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.accessToken}'
    });

    if (response.statusCode == 200) {
      return Right(ProductsResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, AddProductResponseModel>> addProduct(
      AddProductRequest addProductRequest) async {
    final authData = await AuthLocalDatasource().getAuthData();

    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData.accessToken}',
    };
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('${Variables.baseUrl}/api/products'),
    );

    request.fields.addAll(addProductRequest.toMap());

    request.files.add(await http.MultipartFile.fromPath(
        'image', addProductRequest.image.path));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    final String body = await response.stream.bytesToString();

    if (response.statusCode == 201) {
      return Right(AddProductResponseModel.fromJson(body));
    } else {
      // return const Left('Add Product Gagal');
      print(body);
      return Left(body);
    }
  }

  // Future<Either<String, String>> delete(int id) async {
  //   final authData = await AuthLocalDatasource().getAuthData();
  //   final response = await http
  //       .delete(Uri.parse('${Variables.baseUrl}/api/products/$id'), headers: {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer ${authData.token}'
  //   });

  //   if (response.statusCode == 200) {
  //     return const Right('Delete Success');
  //   } else {
  //     return Left(response.body);
  //   }
  // }

  Future<Either<String, UpdateProductResponseModel>> update(
      UpdateProductRequestModel updateProductsRequestModel, int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/products/$id'),
      body: updateProductsRequestModel.toJson(),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      return Right(UpdateProductResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}
