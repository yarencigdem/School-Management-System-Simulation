import 'package:flutter/material.dart';
import 'dart:io';

void main() {
   sekreter sek = sekreter("A101");
   hoca hoca1 = hoca("Dr. Ahmet", 45, "Matematik", 20);
   ogrenci ogrenci1 = ogrenci("Ali", 20, 12345, "3. Sınıf");
   sek.hocaEkle(hoca1);
   sek.ogrenciEkle(ogrenci1);
   sek.bilgiler();

   hoca1.dersCalis();
   hoca1.sinavYap();

   ogrenci1.dersCalis();
   ogrenci1.sinavOl();
}
abstract class insan{
   String isim;
   int yas;
   insan(this.isim, this.yas);


   void dersCalis();

}
class hoca extends insan {

   String brans;
   int kidem;

   hoca(String isim, int yas, this.brans, this.kidem) : super(isim, yas);

   @override
   void dersCalis(){
      print("$isim ($brans hocası) ders anlatmak için çalışıyor.");

   }
   void sinavYap() {
      print("$isim sınav yapıyor.");
   }
}
class ogrenci extends insan{
   int ogrenciNo;
   String sinif;

   ogrenci (isim , yas,this.ogrenciNo, this.sinif ): super(isim, yas);
   @override
   void dersCalis() {
      print("$isim ($sinif) ders çalışıyor.");
   }
   void sinavOl(){

      print(" $isim sınav oluyor  ");

   }
}
class sekreter {

   String buro;
   List<hoca> hocalar = [];
   List<ogrenci> ogrenciler = [];

   sekreter(this.buro);
   void hocaEkle( hoca hoca){
      hocalar.add(hoca);
      print("${hoca.isim} hocası ($hoca.brans) eklendi.");

   }

   void ogrenciEkle(ogrenci ogrenci ){
      ogrenciler.add(ogrenci);
      print("${ogrenci.isim} öğrencisi (${ogrenci.sinif}) eklendi.");
   }

   void bilgiler() {
      print("Sekreter büro: $buro");
   }

}