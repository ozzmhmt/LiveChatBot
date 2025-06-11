# LiveChatBot

LiveChatBot, SwiftUI kullanılarak geliştirilmiş, VIPER mimarisi ile tasarlanmış modern bir canlı destek uygulamasıdır. WebSocket teknolojisi kullanarak gerçek zamanlı iletişim sağlar ve dinamik bir kullanıcı arayüzü sunar.

## 🚀 Özellikler

- **Gerçek Zamanlı İletişim**: WebSocket teknolojisi ile anlık mesajlaşma
- **Dinamik UI**: JSON tabanlı akış ile dinamik kullanıcı arayüzü
- **Modern Mimari**: VIPER (View, Interactor, Presenter, Entity, Router) mimarisi
- **Modüler Yapı**: Kolay genişletilebilir ve bakımı yapılabilir kod yapısı
- **SwiftUI**: Modern ve deklaratif UI geliştirme
- **SOLID Prensipleri**: Temiz ve sürdürülebilir kod yapısı

## 📋 Gereksinimler

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+
- macOS 12.0+ (geliştirme için)

## 🛠 Kurulum

1. Projeyi klonlayın:
```bash
git clone https://github.com/ozzmhmt/LiveChatBot.git
```

2. Proje dizinine gidin:
```bash
cd LiveChatBot
```

3. Xcode ile `LiveChatBot.xcodeproj` dosyasını açın

4. Gerekli bağımlılıkları yükleyin (eğer varsa)

5. Projeyi derleyin ve çalıştırın

## 📁 Proje Yapısı

```
LiveChatBot/
├── App/
│   ├── LiveChatBotApp.swift
│   └── ContentView.swift
├── Core/
│   └── Protocols/
│       ├── ViewProtocol.swift
│       ├── PresenterProtocol.swift
│       ├── InteractorProtocol.swift
│       ├── RouterProtocol.swift
│       └── EntityProtocol.swift
├── Modules/
│   └── LiveSupport/
│       ├── LiveSupportView.swift
│       ├── LiveSupportPresenter.swift
│       ├── LiveSupportInteractor.swift
│       ├── LiveSupportRouter.swift
│       └── Entities/
│           └── LiveSupportStep.swift
└── Services/
    └── WebSocketService.swift
```

## 🏗 Mimari

Proje VIPER mimarisi kullanılarak geliştirilmiştir:

- **View**: Kullanıcı arayüzü bileşenleri
- **Interactor**: İş mantığı ve veri işleme
- **Presenter**: View ve Interactor arasındaki iletişimi yönetir
- **Entity**: Veri modelleri
- **Router**: Sayfa geçişleri ve modül oluşturma

## 🔄 WebSocket Akışı

1. Uygulama başlatıldığında WebSocket bağlantısı kurulur
2. JSON formatında adımlar yüklenir
3. Her adım için dinamik UI bileşenleri oluşturulur
4. Kullanıcı etkileşimleri WebSocket üzerinden sunucuya iletilir
5. Sunucudan gelen yanıtlar UI'da gösterilir

## 📝 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakın.


## 📞 İletişim

Proje Sahibi - [@ozzmhmt](https://github.com/ozzmhmt)

Proje Linki: [https://github.com/ozzmhmt/LiveChatBot](https://github.com/ozzmhmt/LiveChatBot) 