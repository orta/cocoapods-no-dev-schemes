# CocoaPods No-Dev-Schemes

Is it annoying that `pod install`ing with development pods changes your target? Well now they won't be created for you anymore. There are good reasons for [doing it](https://github.com/CocoaPods/CocoaPods/pull/3600), but not when working with an app.

Use a Gemfile. [Here's a guide](http://guides.cocoapods.org/using/a-gemfile.html)

Gemfile:
```
gem "cocoapods"
gem "cocoapods-no-dev-schemes"
```

Podfile:
```
plugin "cocoapods-no-dev-schemes"
[...]
```
