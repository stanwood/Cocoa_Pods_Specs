

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

1. Run the following command and follow the steps:

    `$ pod lib create PROJECT_NAME`

2. Update podspec files:
    - Summery
    - Description
    - Homepage
    - License (MIT => private)
    - Source
    
    This is important to pass the validation.

3. Update the Licence file:

   `Copyright (c) 2017 Stanwood GmbH`
   
4. Add `.swift-version` file to the main directory. Cocoapods uses **3.0** by default.

#### Validate podspec

To make sure our podspec passes the validation, run the following command: 

`$ pod lib lint PROJECT_NAME.podspec --private --allow-warnings`

>Note: Fix errors in case they are listed and run the validation process again.

#### Push project

Add the new project to github.

```ruby
git init
git add .
git commit -m “Initial Commit"
git remote add origin https://github.com/stanwood/PROJECT_NAME.git
git push -u origin master --force
```
>Note: Make sure the repository has only `.gitignore`. README file is added by default when creating a new pod.

## Releasing

>Release on `master` to avoid any validation issues.

#### Push a new update

1. Version bump in PROJECT_NAME.podsec, i'e. *0.0.1*

2. Tag

```ruby
git tag 0.0.1
git push origin 0.0.1
```

3. Validate

`pod lib lint PROJECT_NAME.podspec --private --allow-warnings`

4. Release

`pod repo push Cocoa_Pods_Specs PROJECT_NAME.podspec --private --allow-warnings`

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

