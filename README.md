# 🧠 push_swap

Bu proje, sıralama algoritmaları ve veri yapıları hakkında derinlemesine anlayış geliştirmek amacıyla Ecole 42 müfredatı kapsamında geliştirilmiştir. Amaç, belirli kurallar çerçevesinde `int` tipindeki sayıları, mümkün olan en az işlemle sıralamaktır.

## 📦 Proje Hakkında

`push_swap` projesinde iki adet stack (yığın) kullanılır: `stack_a` ve `stack_b`. Program, `stack_a`'ya verilen karışık sayı listesini, sadece sınırlı sayıdaki operasyonları kullanarak artan sıraya sokmaya çalışır.

İzin verilen operasyonlar:

- `sa`, `sb`, `ss`: yığınların ilk iki elemanını takas et
- `pa`, `pb`: bir elemanı diğer yığına aktar
- `ra`, `rb`, `rr`: yığınları yukarı kaydır
- `rra`, `rrb`, `rrr`: yığınları aşağı kaydır

## 📂 Dosya Yapısı

```bash
.
├── includes/           # Header dosyaları (fonksiyon prototipleri, yapı tanımları)
├── libft/              # Yardımcı fonksiyonlar (libft kütüphanesi)
├── srcs/               # Ana kaynak kodları
│   ├── parsing/        # Argüman kontrol ve analiz fonksiyonları
│   ├── utils/          # Yardımcı fonksiyonlar (örneğin: stack işlemleri)
│   ├── sort/           # Sıralama algoritmaları
│   └── main.c          # Programın giriş noktası
├── Makefile            # Derleme talimatları
└── README.md           # Proje açıklaması
````

## 🚀 Kurulum ve Derleme

Projeyi klonlayın ve `make` komutunu çalıştırarak derleyin:

```bash
git clone https://github.com/egepaksoy/push_swap.git
cd push_swap
make
```

Derlemeden sonra çalıştırılabilir dosya oluşacaktır: `./push_swap`

## ⚙️ Kullanım

```bash
./push_swap [sayilar]
```

### Örnek:

```bash
./push_swap 3 2 1
```

Çıktı:

```
sa
rra
```

Bu çıktı, sıralama işlemini gerçekleştirmek için yapılması gereken işlemleri gösterir.

## 🧪 Test Etme

Sıralayıcıyı değerlendirmek için `checker` adında bir program da yazmanız beklenir (bu projede zorunlu değil, bonus kısmıdır). `push_swap` çıktısını bir dosyaya yönlendirip `checker` ile test edebilirsiniz.

```bash
ARG="3 2 1"
./push_swap $ARG | ./checker $ARG
```

Beklenen çıktı:

```
OK
```

## 📊 Performans Kriterleri

`push_swap`, aşağıdaki kurallara göre optimize edilmelidir:

* 3 sayı için: ≤ 3 hareket
* 5 sayı için: ≤ 12 hareket
* 100 sayı için: ≤ 700 hareket
* 500 sayı için: ≤ 5500 hareket

Kodun puanı, bu hareket sayılarına bağlı olarak artar veya azalır.

## 💡 Kullanılan Algoritmalar

* Küçük listeler için: Hard-coded sıralama
* Büyük listeler için: Radix sort (ikili bazda sıralama)

Algoritma seçimi, listenin uzunluğuna göre otomatik yapılır.

## ✅ Tamamlanan Özellikler

* [x] Argüman kontrolü (tekrar eden sayı, geçersiz karakter vs.)
* [x] Stack yapılarının oluşturulması
* [x] Sıralama algoritmalarının uygulanması
* [x] Gelişmiş hata yönetimi
* [x] Performans optimizasyonu

## 🧠 Öğrenilenler

* C dilinde veri yapıları kullanımı (linked list, stack)
* Algoritma optimizasyonu ve performans analizleri
* Makefile yapısı
* Kapsamlı hata yönetimi
* Terminal üzerinden argüman işleme

## 📜 Lisans

Bu proje Ecole 42'nin eğitsel amaçlı projesidir ve herhangi bir ticari kullanım amacı güdülmemektedir.

## 👤 Yazar

**Ege Paksoy**
[github.com/egepaksoy](https://github.com/egepaksoy)

---

✨ Bu proje, sıralama algoritmaları ile düşük seviyeli programlama becerilerini harmanlayarak, daha verimli algoritmalar tasarlama yolunda sağlam bir adımdır.
