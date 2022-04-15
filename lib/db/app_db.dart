import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:postgres/postgres.dart';

class AppDb {
  PostgreSQLConnection connection = PostgreSQLConnection(
      dotenv.get('POSTGRES_URL'),
      int.parse(dotenv.get('POSTGRES_PORT')),
      dotenv.get('POSTGRES_DB'),
      username: dotenv.get('POSTGRES_USER'),
      password: dotenv.get('POSTGRES_PASSWORD'));
  PostgreSQLResult? customerResult;
  
//run only ssr
  Future<PostgreSQLConnection?> getConnection() async {
    if (connection == null || connection.isClosed) {
      connection = PostgreSQLConnection(dotenv.get('POSTGRES_URL'),
          int.parse(dotenv.get('POSTGRES_PORT')), dotenv.get('POSTGRES_DB'),
          username: dotenv.get('POSTGRES_USER'),
          password: dotenv.get('POSTGRES_PASSWORD'));
      await connection.open();

      print("conn is open");
    }
    print("conn already open");
    // await connection.open();
    return connection;
  }

  Future<String> getCustomerName(int id) async {
    String name = "";
    await getConnection().then((conn) async {
      print("object");
      await conn!
          .query(
              'SELECT * FROM "SaleManager"."Customers" WHERE "Customers"."CustomerID" = $id')
          .then((result) {
        // customerResult = result;
        for (final row in result) {
          print(row.last);
          name = row.last;
        }
      });
    });

    return name;
  }
}
