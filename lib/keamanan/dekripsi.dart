import 'dart:convert';
import 'package:encrypt/encrypt.dart';

String decryptAES(String ciphertext, String keyString) {
  final key = Key.fromUtf8(keyString.substring(0, 16));
  final iv = IV.fromLength(16);
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
  final decrypted =
      encrypter.decrypt(Encrypted(base64.decode(ciphertext)), iv: iv);
  return decrypted;
}
