import 'package:sqflite/sqflite.dart';

import '../../../presentations/pesanan/models/order_model.dart';
import '../../../presentations/home/models/product_quantity.dart';
import '../../models/response/product/product_response_models.dart';

class ProductLocalDatasource {
  ProductLocalDatasource._init();

  static final ProductLocalDatasource instance = ProductLocalDatasource._init();

  final String tableProduct = 'products';
  final String tableOrder = 'orders';
  final String tableOrderItem = 'order_items';

  static Database? _database;

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
            CREATE TABLE $tableProduct (
            id INTEGER PRIMARY KEY,
            productId INTEGER,
            name TEXT,
            categoryId INTEGER,
            categoryName TEXT,
            description TEXT,
            image TEXT,
            price TEXT,
            stock INTEGER,
            status INTEGER,
            isFavorite INTEGER,
            createdAt TEXT,
            updatedAt TEXT
            )
            ''');

    await db.execute('''
              CREATE TABLE $tableOrder(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            payment_amount INTEGER,
            sub_total INTEGER,
            tax INTEGER,
            discount INTEGER,
            service_charge INTEGER,
            total INTEGER,
            payment_method TEXT,
            total_item INTEGER,
            id_kasir INTEGER,
            nama_kasir TEXT,
            transaction_time TEXT,
            is_sync INTEGER DEFAULT 0

              )
              ''');

    await db.execute('''
            CREATE TABLE $tableOrderItem(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            id_order INTEGER,
            id_product INTEGER,
            quantity INTEGER,
            price INTEGER
            )
            ''');
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = dbPath + filePath;
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('dbresto.db');
    return _database!;
  }

  // save order
  Future<void> saveOrder(OrderModel order) async {
    final db = await instance.database;
    int id = await db.insert(
      tableOrder,
      order.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    for (var item in order.orderItems) {
      await db.insert(
        tableOrderItem,
        item.toLocalMap(id),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  // get data order
  Future<List<OrderModel>> getOrderItemByIsNotSync() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableOrder,
      where: 'is_sync = ?',
      whereArgs: [0],
    );

    return List.generate(maps.length, (i) {
      return OrderModel.fromMap(maps[i]);
    });
  }

  // get order item by id
  Future<List<ProductQuantity>> getOrderItemByOrderId(int orderId) async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableOrderItem,
      where: 'id_order = ?',
      whereArgs: [orderId],
    );

    return List.generate(maps.length, (i) {
      return ProductQuantity.fromLocalMap(maps[i]);
    });
  }

  // update order is sync
  Future<void> updateOrderIsSync(int orderId) async {
    final db = await instance.database;
    await db.update(
      tableOrder,
      {'is_sync': 1},
      where: 'id = ?',
      whereArgs: [orderId],
    );
  }

  // insert
  Future<void> insertProduct(Product product) async {
    final db = await instance.database;
    await db.insert(
      tableProduct,
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // insert list
  Future<void> insertProductList(List<Product> products) async {
    final db = await instance.database;
    for (var product in products) {
      await db.insert(
        tableProduct,
        product.toLocalMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      // print('Insert Success ${product.name}');
    }
  }

  // get all
  Future<List<Product>> getProducts() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(tableProduct);
    // print(maps);
    return List.generate(maps.length, (i) {
      return Product.fromLocalMap(maps[i]);
    });
  }

  // delete all
  Future<void> deleteAllProduct() async {
    final db = await instance.database;
    await db.delete(tableProduct);
    // print('Delete Success');
  }
}
