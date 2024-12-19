import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:relaxpide/user_service.dart';
import 'package:relaxpide/user_model.dart';

class AuthServiceUser {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserService _userService = UserService();

  // Ev sahibinin uygulamaya kaydolmasını sağlar
  Future<String?> signUpUser({
    required String namesurname,
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    try {
      // email, username ve password değerlerini boş olup olmadıklarını kontrol et
      if (namesurname.isEmpty) {
        Fluttertoast.showToast(
            msg: "Lütfen adsoyadınızı giriniz!",
            toastLength: Toast.LENGTH_LONG);
        return null;
      }

      if (email.isEmpty) {
        Fluttertoast.showToast(
            msg: "Lütfen e-mail adresinizi giriniz!",
            toastLength: Toast.LENGTH_LONG);
        return null;
      }

      if (phoneNumber.isEmpty) {
        Fluttertoast.showToast(
            msg: "Lütfen telefon numaranızı giriniz!",
            toastLength: Toast.LENGTH_LONG);
        return null;
      }

      if (password.isEmpty) {
        Fluttertoast.showToast(
            msg: "Lütfen şifrenizi giriniz!", toastLength: Toast.LENGTH_LONG);
        return null;
      }

      // Ev sahibini Firebase Auth ile kaydet
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Oluşturulan Ev sahibini veritabanına kaydet
      Users user = Users(
        userID: userCredential.user!.uid,
        namesurname: namesurname,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
      );
      await _userService.createUser(user);

      // Başarılı mesajı göster
      Fluttertoast.showToast(
        msg: "Kayıt işlemi başarılı",
      );

      return userCredential.user!.uid;
    } on FirebaseAuthException catch (e) {
      // Hata mesajını CustomErrorMessage sınıfından al
      Fluttertoast.showToast(msg: "Uyarı: $e", toastLength: Toast.LENGTH_LONG);
    }
    return null;
  }

  // Ev sahibinin uygulamaya giriş yapmasını sağlar
  Future<String?> signInUser(
      {required String email, required String password}) async {
    try {
      if (email.isEmpty) {
        Fluttertoast.showToast(
            msg: "Lütfen email adresinizi giriniz!",
            toastLength: Toast.LENGTH_LONG);
        return null;
      }

      if (password.isEmpty) {
        Fluttertoast.showToast(
            msg: "Lütfen şifrenizi giriniz!", toastLength: Toast.LENGTH_LONG);
        return null;
      }

      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Fluttertoast.showToast(
        msg: "Giriş işlemi başarılı",
        toastLength: Toast.LENGTH_SHORT,
      );

      return userCredential.user!.uid;
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: "Uyarı: $e", toastLength: Toast.LENGTH_LONG);
    }
    return null;
  }

  // Ev sahibinin uygulamadan çıkış yapmasını sağlar
  Future<void> signOutUser() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  // Ev sahibinin şifresini sıfırlama isteği gönderir
  Future<void> resetPassword(BuildContext context, String email) async {
    final navigator = Navigator.of(context);
    try {
      if (email.isEmpty) {
        Fluttertoast.showToast(
            msg: "Lütfen e-posta adresinizi giriniz!",
            toastLength: Toast.LENGTH_LONG);
        return;
      }
      await _auth.sendPasswordResetEmail(email: email);
      Fluttertoast.showToast(
        msg: "E-posta adresinize bir şifre sıfırlama isteği gönderildi",
        toastLength: Toast.LENGTH_LONG,
      );
      navigator.pop();
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: "Uyarı: $e", toastLength: Toast.LENGTH_LONG);
    }
  }

  Future<void> deleteUser() async {
    try {
      String uid = _auth.currentUser!.uid;

      // Firebase Authentication'dan kullanıcıyı sil
      await _auth.currentUser!.delete();

      // Kullanıcıyı Firestore'dan sil
      await _userService.deleteUser(uid);

      // Başarılı mesajı göster
      Fluttertoast.showToast(
        msg: "Kullanıcı hesabı başarıyla silindi.",
        toastLength: Toast.LENGTH_LONG,
      );

      // Çıkış yap ve profil sayfasından yönlendir
      await signOutUser();
    } catch (e) {
      print("HATA: ${e.toString()}");
      // Hata mesajını göster
      Fluttertoast.showToast(
        msg: "Kullanıcı hesabını silerken bir hata oluştu.",
        toastLength: Toast.LENGTH_LONG,
      );

      return;
    }
  }

  Future<void> updateUserInformation({
    required String newNameSurname,
    required String newEmail,
    required String newPhoneNumber,
    required String newPassword,
  }) async {
    try {
      User? currentUser = _auth.currentUser;

      if (currentUser != null) {
        // Kullanıcının Firebase Authentication e-posta ve şifresini güncelle
        await currentUser.updateEmail(newEmail);
        await currentUser.updatePassword(newPassword);
        await currentUser
            .updatePhoneNumber(newPhoneNumber as PhoneAuthCredential);

        // Firestore'dan kullanıcının mevcut bilgilerini al
        Users? user = await _userService.getUser();

        if (user != null) {
          // Kullanıcının Firestore Database bilgilerini güncelle
          user.namesurname = newNameSurname;
          user.email = newEmail;
          user.phoneNumber = newPhoneNumber;
          user.password = newPassword;
        }
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: "Uyarı: $e", toastLength: Toast.LENGTH_LONG);
    }
  }
}
