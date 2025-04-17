# CryptoCrazyRxMVVM
RxSwift ve MVVM yapısını kullanarak crypto uygulması yapıldı.
MVVM (Model-View-ViewModel), Swift programlama dilinde iOS uygulamaları geliştirirken kullanılan bir mimari desendir. Uygulamanın katmanlarını daha düzenli, okunabilir ve test edilebilir hale getirir. iOS’ta özellikle UIKit veya SwiftUI ile çalışırken MVVM oldukça yaygındır.
MVVM Katmanları:
Model:
Uygulamanın veri yapısını ve iş mantığını temsil eder.
Genellikle struct veya class ile tanımlanır.
API çağrıları, veri doğrulama, depolama gibi işlemler burada yapılır.

View:
Kullanıcı arayüzünü temsil eder.
UIKit’te UIViewController veya SwiftUI’de View yapıları kullanılır.
Kullanıcıdan gelen etkileşimleri alır ama veri işlemez.

ViewModel:
Model ile View arasında bir köprüdür.
Veriyi hazırlar, biçimlendirir ve View’a sunar.
İş mantığının bir kısmı burada olur ama doğrudan veri erişimi genelde modele delegedir.

MVVM Kullanmanın Avantajları
Kodun test edilmesini kolaylaştırır
UI kodunu iş mantığından ayırır
Daha modüler ve sürdürülebilir projeler sunar
SwiftUI ile doğal bir şekilde çalışır (çünkü veri bağlama kolaydır)

//////***********///////////

RxSwift, ReactiveX (Reactive Extensions) kütüphanesinin Swift diline özel bir versiyonudur. RxSwift, reaktif programlama paradigmalarını Swift dilinde kullanmanıza olanak tanır. Reaktif programlama, veri akışları ve değişiklikleriyle asenkron olayları yönetmeye odaklanır. Bu, veri değişimlerini kolayca takip etmeyi ve tepki vermeyi sağlar.

RxSwift'in temel özellikleri şunlardır:

Observables (Gözlemlenebilirler): RxSwift, veri akışlarını "observables" (gözlemlenebilirler) olarak modelleyerek, bu verilere abone olmayı (subscribe) ve veri akışları üzerinde işlem yapmayı sağlar.
Operators (Operatörler): Verileri dönüştürmek, filtrelemek, birleştirmek gibi işlemleri yapabilen bir dizi operatör sunar. Örneğin, map, filter, merge, combineLatest gibi operatörler veriyi çeşitli şekillerde işleyebilir.
Subjects: Gözlemlenebilir verileri dışarıya yayınlamak için kullanılır. Bu, bir tür veri kaynağını veya "yayıncıyı" temsil eder. Örneğin, BehaviorSubject, PublishSubject, ve ReplaySubject gibi türler vardır.
Asenkronluk ve Threading: RxSwift, bir dizi asenkron işlem üzerinde kolayca çalışabilmenizi sağlar. Ayrıca, farklı iş parçacıklarında veri akışlarını yönetmek için thread kontrolü sağlar (örneğin, UI thread'e dönme).
RxSwift'in avantajları:

Kodun daha az ve daha anlaşılır olması: Reaktif programlama, çoğu zaman geri çağırma (callback) tabanlı yaklaşımlardan daha basit ve daha az karmaşık kod yazmanıza olanak tanır.
Veri akışlarını yönetme: UI güncellemeleri, ağ çağrıları ve diğer asenkron işlemleri yönetmek çok daha kolay hale gelir.
Test edilebilirlik: Reaktif yaklaşımlar, veri akışlarının daha belirgin olduğu ve yan etkilerin minimize edildiği bir yapı sunar, bu da test etmeyi kolaylaştırır.

RxSwift'in öğrenilmesi biraz zaman alabilir, ancak reaktif programlama paradigmaları, özellikle karmaşık kullanıcı arabirimlerinde ve asenkron işlemlerde büyük kolaylık sağlar.
 
