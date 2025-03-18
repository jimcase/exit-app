# capacitor-exit-app

This package has the ability to shut down the app in the capacitor environment.

## Install

```bash
npm install @jimcase/capacitor-exit-app
npx cap sync
```

### Typescript API

<docgen-index>

* [`exitApp()`](#exitapp)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### exitApp()

```typescript
exitApp() => Promise<void>
```

##### It will execute the following native code:
#### iOS
```swift
@objc func exitApp(_ call: CAPPluginCall) {
    DispatchQueue.main.async {
        exit(0)
    }
    call.resolve()
}
```

#### Android
```java
public void exitApp(PluginCall call) {
        unsetAppListeners();
        call.resolve();
        System.exit(0);
}
```

</docgen-api>
