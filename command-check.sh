#Author: Evren Korkmaz
#Bu Script yazılan komutun çalışıp çalışmadığını test etmektedir.
#Bu işlem için önce kullanıcıdan bir komut alınıyor ve bu komut çalıştırılıyor.
#Ardından $? ile son girilen komut hakkında bilgi alıyoruz.
# "$?" "0" dödürüyorsa komut çalışıyor demektir.


#! /bin/bash

echo Bu Script yazlına komutun doğru çalışıp çalışmadığının bilgisini veriyor.
echo Kontrol etmek istedğiniz komutu giriniz: #kullanıcıyı bildilendirme

read comment # Girilen komut

$comment # kontrol için önce komutu çalıştırmamız lazım
if [ "$?" = "0" ]; then # $? ile son çalışan komut ile ilgili bilgi aloyoruz. Değeri$
        clear
        echo Komut Başarılı!!! # $? değeri 0 ise komut doğru çalışıyor
else
        echo !!! Bir Hata Var !!! # $? değeri 0 değilse doğru çalışmıyordur.
fi

