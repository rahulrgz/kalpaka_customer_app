import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kalpaka_customer_app/core/constants/firebaseConstants.dart';
import 'package:kalpaka_customer_app/core/failure.dart';
import 'package:kalpaka_customer_app/core/type_def.dart';
import 'package:riverpod/riverpod.dart';
import '../../../model/orderModel.dart';

final firestoreProvider=Provider((ref) => FirebaseFirestore.instance);
final authRepositoryProvider=Provider((ref) => AuthRepository(firestore: ref.read(firestoreProvider)));

class AuthRepository{
  final FirebaseFirestore _firestore;

   AuthRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  CollectionReference get _users=>_firestore.collection(FirebaseConstants.orderCollection);

  FutureEither<OrderModel?>loginUser({required String number})async {
    try {
      OrderModel? orderModel;
      final user = await _firestore.collection(
          FirebaseConstants.orderCollection)
          .where('number', isEqualTo: number)
          .get();

      if (user.docs.isEmpty) {
        print("failed==================================");
        print("failed==================================");
        print("failed==================================");
       return right(null);
      }else{
        print("number matchedd==================================");
        print("number matchedd==================================");
        print("number matchedd==================================");
        orderModel = OrderModel.fromMap(user.docs.first.data());
        return right(orderModel);
      }
    }
    catch (e) {
      return left(Failure(e.toString()));
    }
  }
}