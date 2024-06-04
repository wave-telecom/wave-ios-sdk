# WaveSDK

## SDK instalation

There are a Package provided that can be found clicking [here](https://github.com/NomoTechnology/wave-ios-sdk)

Add the `wave-ios-sdk` into your project and then follow the initialization step.

Disclamer: SDK only supports Swift Package Manager.

## Initialization

First, import the following frameworks to your `AppDelagte` file.

```Swift
import WaveFoundation
import WaveUI
```

And then, add the following code inside `didFinishLaunchingWithOptions`'s AppDelegate

```Swift
let oAuth = OAuth(
    clientId: "yourCliendId",
    secretKey: "yourSecreKey",
    audience: "yourAudience"
)
Wave.shared.setup(environment: .production, oAuth: oAuth, delegate: self)
```

The code above is used to initialize the WaveSDK, you must pass the `clientId`, `secretKey` and `audience`provided by Wave. You also need to conform AppDelegate with the `WaveDelegate` and `TokenManagement`protocols, but won't need to to do anything, just add the following code:

```Swift
extension AppDelegate: WaveDelegate {
    var tokenManagement: TokenManagement { self }
    func logout() {}
    func openHelp(with message: String?) {}
}

extension AppDelegate: TokenManagement {
    func forcingRefresh(completion: @escaping (Result<String, Error>) -> Void) {}
}
```

## Customizations

Thera are actually two types of custmizations, `colors` and `typography`.

```Swift
Wave.shared.theming(colorSet:typography:)
```

### Colors

To customize colors, it's necessary add the fallowing code just bellow the `Wave.shared.setup(environment:oAuth:delegate:)` statement

```Swift
Wave.shared.theming(colorSet: colorSet)
```

Now you need to instantiate the `ColorSet` struct, initilize both `main` and `base` parameters with the desired colors, like the following example:

```Swift
let colorSet = ColorSet(
    main: .init(
        brand01: .init(red: 6/255, green: 46/255, blue: 254/255),
        brand02: .init(red: 48/255, green: 103/255, blue: 255/255),
        brand03: .init(red: 87/255, green: 145/255, blue: 255/255),
        brand04: .init(red: 179/255, green: 216/255, blue: 255/255),
        brand05: .init(red: 232/255, green: 244/255, blue: 255/255)
    ),
    base: .init(
        base01: .init(red: 124/255, green: 124/255, blue: 124/255),
        base02: .init(red: 152/255, green: 152/255, blue: 152/255),
        base03: .init(red: 189/255, green: 189/255, blue: 189/255),
        base04: .init(red: 220/255, green: 220/255, blue: 220/255),
        base05: .init(red: 243/255, green: 244/255, blue: 246/255)
    )
)
```

### Typography

To customize the fonts, you need to create a new `struct` and conform with the `CompositeTypography` protocol and then inject the `struct` into the `Wave.shared.theming(typography:)` previously instantiated.

Example:

```Swift
public struct MyCustomTypography: CompositeTypography {}

public extension MyCustomTypography {

    func headlineLarge() -> Font {
        .system(size: 48.0, weight: .medium)
    }

    func headlineMedium() -> Font {
        .system(size: 42.0, weight: .medium)
    }

    func headlineSmall() -> Font {
        .system(size: 34.0, weight: .medium)
    }

    func titleLarge() -> Font {
        .system(size: 28.0, weight: .medium)
    }

    func titleSmall() -> Font {
        .system(size: 22.0, weight: .medium)
    }

    func subtitleLarge() -> Font {
        .system(size: 20.0, weight: .medium)
    }

    func subtitleSmallMedium() -> Font {
        .system(size: 18.0, weight: .medium)
    }

    func subtitleSmallRegular() -> Font {
        .system(size: 18.0, weight: .regular)
    }

    func buttonText() -> Font {
        .system(size: 16.0, weight: .medium)
    }

    func bodyLargeMedium() -> Font {
        .system(size: 16.0, weight: .medium)
    }

    func bodyLargeRegular() -> Font {
        .system(size: 16.0, weight: .regular)
    }

    func bodySmallMedium() -> Font {
        .system(size: 14.0, weight: .medium)
    }

    func bodySmallRegular() -> Font {
        .system(size: 14.0, weight: .regular)
    }

    func bodySmallRegularUIKit() -> UIFont {
        .system(size: 14.0, weight: .regular)
    }

    func chipTextMedium() -> Font {
        .system(size: 14.0, weight: .medium)
    }

    func chipTextRegular() -> Font {
        .system(size: 12.0, weight: .regular)
    }
}
```

## Activation

You can start the activation by adding the following code:

```Swift
let activation = Wave.shared
    .addExternalCode("yourExternalCode")
    .start(
        .activation(
            activatedSuccessfully: { navigationController, userLine in
                // Add here the action you choose after the activation was successfully, like a custom success screen.
            },
            help: { _ in 
                // Add here the action when the customer taps at Help like a custom screen or chat.
            }
        )
    )
```

The `start` method will return a `UINavigationController`, so you can present from anywhere.

Don't fonget to call the  `.addExternalCode()` that is uswd to identify each customer, so it must be different from customer to customer.

`activatedSuccessfully`method has two parameters:
- NomoNavigationController: the current navigation controller that can be used to push another screen like success.
- UserLine: the object with the user line properties that you can use to display some data to the screen or save some information to use later.