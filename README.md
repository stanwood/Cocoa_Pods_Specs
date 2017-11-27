

## Create a pod lib

### Create a new CocoaPods project
`$ pod lib create PROJECT_NAME`


Update podspec files

### Validate podspec
`$ pod lib lint PROJECT_NAME.podspec --private --allow-warnings`

### Push project
```ruby
git add .
git commit -m “Initial Commit"
git remote add origin https://github.com/stanwood/PROJECT_NAME.git
git push -u origin master --force
```

### Push new update

> Note: Bump version in PROJECT_NAME.podsec

```ruby
git tag RELEASE_VERSION
git push origin RELEASE_VERSION

pod lib lint PROJECT_NAME.podspec --private --allow-warnings
pod repo push Cocoa_Pods_Specs PROJECT_NAME.podspec --private --allow-warnings
```


### Installation

Adding Specs source to pod file:

```ruby
source 'https://github.com/stanwood/Cocoa_Pods_Specs.git'
use_frameworks!

target 'STWProject' do
    pod 'STWKit'
end
```

### `pod lib`

- `pod lib lint` will validate that everything is okay with your pod and that it’s ready to use by CocoaPods.
- `pod lib create` will actually help give you a jump start by providing a standard directory structure with a bunch of boilerplate files necessary for a high quality pod. pod lib create isn't the only way to create your pod, but it is the easiest.

