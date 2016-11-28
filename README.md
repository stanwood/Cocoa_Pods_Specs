# Cocoa_Pods_Specs

## Setup

Adding a private Pod

```ruby
pod repo push Cocoa_Pods_Specs STWLibraryKit.podspec --private --allow-warnings
```
Adding Specs source to pod file:

```ruby
source 'https://github.com/stanwood/Cocoa_Pods_Specs.git'
use_frameworks!

target 'STWProject' do
    pod 'STWKit'
end
```
## Stanwood CocoaPods Kit List

* STWSocialKit
### Instalation:
```ruby
pod 'STWSocialKit'
```
