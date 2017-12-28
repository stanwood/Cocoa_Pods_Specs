

# Stanwood master cocoapods spec


## First step

#### Adding our master repo spec

Stanwood pods are currently added to our own private repo. 
You have to add this repo to your local install of cocoapods. 

Use the command `$ ls ~/.cocoapods/repos` to list the known repos.

If `Cocoa_Pods_Specs` is not listed, then run the command: 

`$ pod repo add Cocoa_Pods_Specs https://github.com/stanwood/Cocoa_Pods_Specs master`

and then verify that it has been added correctly.

## Creating a new framework

#### Create a new CocoaPods project

`$ pod lib create PROJECT_NAME`

Update podspec files

#### Validate podspec

`$ pod lib lint PROJECT_NAME.podspec --private --allow-warnings`

#### Push project

```ruby
git init
git add .
git commit -m “Initial Commit"
git remote add origin https://github.com/stanwood/PROJECT_NAME.git
git push -u origin master --force
```
## Releasing

#### Push new update

> Note: Bump version in PROJECT_NAME.podsec

```ruby
git tag RELEASE_VERSION
git push origin RELEASE_VERSION

pod lib lint PROJECT_NAME.podspec --private --allow-warnings
pod repo push Cocoa_Pods_Specs PROJECT_NAME.podspec --private --allow-warnings
```


## Installation

#### Adding source

First, we need to add the source Specs to `podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/stanwood/Cocoa_Pods_Specs.git'
```

#### Add pod framework to podfile

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/stanwood/Cocoa_Pods_Specs.git'

use_frameworks!

target 'STWProject' do
    pod 'STWKit'
end
```

## `pod lib` overview

- `pod lib lint` will validate that everything is okay with your pod and that it’s ready to use by CocoaPods.
- `pod lib create` will actually help give you a jump start by providing a standard directory structure with a bunch of boilerplate files necessary for a high quality pod. pod lib create isn't the only way to create your pod, but it is the easiest.

