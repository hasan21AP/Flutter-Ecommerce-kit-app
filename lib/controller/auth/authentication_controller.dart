// import 'package:ecorommece_app_kit/core/services/services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';


// class GetAuthentication extends GetxController{

//   FirebaseAuth? _auth;
//   User? _user;
//   String? errorMessage;
//   GoogleSignIn? _googleSignIn;
//   GoogleSignInAccount? _googleUser;
//   late MyServices myServices;
//   String? providerId;

//   GetAuthentication(){
//     myServices = Get.find();
//     _auth = FirebaseAuth.instance;
//     _googleSignIn = GoogleSignIn();
//     providerId = _auth?.currentUser?.providerData.elementAt(0).providerId;
//     print('User is: ${_auth?.currentUser?.email}');
//     print('Provider Id is: $providerId');
//     _auth?.authStateChanges().listen((User? user) {
//       if (user == null){
//         // print('User is: $user');
//         myServices.sharedPreferences.setString("Is Signed", "no");
//       }else {
//         // print('User is: $user');
//         _user = user;
//         myServices.sharedPreferences.setString("Is Signed", "yes");
//         }
//       }
//     );
//     update();
//   }
  
//   User? get user => _user;
//   GoogleSignInAccount? get googelUser => _googleUser;


//   Future signUpWithEmailAndPassword(String username, String email, String password) async{
//     try {
//         // ignore: unused_local_variable
//         final credential = await _auth?.createUserWithEmailAndPassword(
//         email: email,
//         password: password
//         );
//         credential?.user;
//         _auth?.currentUser?.updateDisplayName(username);
//     }on FirebaseAuthException catch (e) {
//       if (e.code == 'invalid-email'){
//           print('Error Message is: ${e.message}');
//           errorMessage = 'The Email is Invalid';
//       }
//       else if (e.code == 'user-not-found'){
//         print('Error Message is: ${e.message}');
//         errorMessage = 'User not Found';
//         return false;
//       }
//       else if (e.code == 'wrong-password'){
//         print('Error Message is: ${e.message}');
//         errorMessage = 'Wrong Password';
//         return false;
//       } else {
//         errorMessage = "Unkown Error";
//         print('Error is: $e');
//         return false;
//       }
//       update();
//     }
//     update();
//     return true;
//   }

//   Future loginWithEmailAndPassword(String email, String password) async{
//     try {
//         final credential = await _auth?.signInWithEmailAndPassword(
//         email: email,
//         password: password);
//         return credential?.user;
//     } catch (e) {
//   if (e is FirebaseAuthException) {
//     // Handle FirebaseAuthException
//     print('FirebaseAuthException - ${e.code}: ${e.message}');
//     switch (e.code) {
//       case 'user-not-found':
//         print('User not found');
//         break;
//       case 'wrong-password':
//         print('Wrong Password');
//         break;
//       // Handle other FirebaseAuthException cases as needed
//       default:
//         //print('Something wrong');
//         break;
//     }
//   } else {
//     // Handle other types of exceptions
//     print('Other Exception - $e');
//   }
//       update();
//     }
//     update();
//     return true;
//   }
  

//   Future signInWithGoolge() async{
//     try{
//     final GoogleSignInAccount? googleUser = await _googleSignIn?.signIn();
//     if (googleUser == null) return false;

//     _googleUser = googleUser;
//   // Obtain the auth details from the request
//     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

//   // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//   // Once signed in, return the UserCredential
//     final authResult = await _auth?.signInWithCredential(credential);
//     _user = authResult?.user;
//     assert(!user!.isAnonymous);
//     assert(await user?.getIdToken() != null);
//     final User? currentUser = _auth?.currentUser;
//     assert(user?.uid == currentUser?.uid);
//     return true;

//     }on Exception catch (e) {
//       print(e);
//     }

//   }

//   Future logout() async{
//     if (providerId == 'google.com'){
//       await _auth?.signOut();
//       await _googleSignIn?.disconnect();
//     }else {
//       await _auth?.signOut();
//     }
//     myServices.sharedPreferences.clear();
//     update();
//   }
 

// }