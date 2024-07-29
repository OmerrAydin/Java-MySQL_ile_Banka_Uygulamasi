Öncelikle veri tabanını MySQL e import ediniz.
Veri tabanı kullanıcı adınızı, veri tabanı şifrenizı ve port adresinizi bulunuz.
BankApplication_JAVA zipinde mysql için java connectoru bulunmaktadır. Kullandığınız ide'ye göre bunu idenizin kütüphanesine import etmeniz gerekmektedir.
BankApplication_JAVA zipinden çıkardığınız kodların içinde DbHelper adında  bir Class bulunmaktadır. 
Aldığınız Database bilgilerinizi oradan güncelleyebilirsiniz. 
Sonrasında bir java idesi ile otomasyonu çalıştırabilirsiniz.
--------------------------------------------------------------------------------------------------------
Otomasyonda bir banka uygulaması prototipi tasarlanmıştır.
Otomasyonun zamanı otomasyon bir prototip olduğundan işlemleri rahat test etmek amaçlı kullanıcının isteğine göre değiştirilebilmektedir. Uygulamayı çalıştırdığınızda bu çok basit yapılabilmektedir.
Veri Tabanı kodları sonunda DAL bulunan classlarda yazılmıştır.
Ekranda görünecek sistemlerin arka planda çalışacak kodlarının tasarımı I'**'DAL şeklinde tanımlanmış classlarda yapılmıştır.
Kullanıcıya görünecek kısım ise frm ile başlayan form application'larda tasarlanmıştır.
___________________________________________________________________________
Bu projede basit bir şekilde MVC mimari deseni kullanılmaya çalışılmıştır.
___________________________________________________________________________
Projede kullanıcı, banka memuru, bankada çalışan yazılımcı ve Admin diye adlandırılan yetkisi yüksek müdür sınıfı bulunmaktadır.
-Admin: memur ve yazılımcı yönetimini yapmaktadır. Yani çalışanları yönetmektedir. Silme, güncelleme, ekleme gibi işlemleri yapabilmektedir.
-Memur: Kullanıcı yönetimini yapmaktadır. Kullanıcı kaydı silebilir, kullanıcı memnuniyetini düzenleyebilir, kredi başvurusu onaylayıp reddedebilir, ödenmemiş krediler için gerekli işlemleri başlatabilir.
-Yazılımcı: Sadece kişisel bilgilerini görüntüleyebilir. Maaş gibi...
-Kullanıcı: Kişisel bilgilerini diğer bütün sınıflar gibi güncelleyebilir. Bankadaki parasını, işlem geçmişini, kredi başvurularını görüntüleyebilir. Kredi başvurusu yapabilir. 
  Onaylanan kredisini zamanında ödeyebilir. Kredisinin yaklaşan son ödeme tarihini görüntüleyebilir. Aynı zamanda atm den para çekip para yatırabilir. İstediği başka bir kullanıcıya o kişinin Tc'si ve adı soyadı
  ile hesabından para gönderebilmektedir.
