

# Potential Stanwood SDK's

We listed below a few SDK's we can manage with **CocoaPods**, and can be reused across all `iOS` projects

## STWFeaturesKit

This SDK should include features we can reuse. For example, some of the features we have on **7NXT**, are:

* Custom Sidebar/Drawer
* NoNetwork Handler [:thanks: @szab ;)]
* SplashScreen [:thanks_again: @szab]
* Social Feed Interaction
* Custom UIViewDrawings

[comment]: <> (This is my test comment @talzion)

## STWExtensionsKit

As the name suggest ;) , this is where we will keep all of our extensions which can be reused. For example: 

* [UIImage+Gradient](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/UIImage%2BGradient.swift)
* [String+NSAttributedString](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/String%2BNSAttributedString.swift)
* [Double](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/Double.swift)
* [CollectionType](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CollectionType.swift)
* [NSMutableData](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/NSMutableData.swift)
* [UISearchBar](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/UISearchBar.swift)
* [UIView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/UIViewExtension.swift)
* [UICollectionView + UITableView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/UICollectionView%20%2B%20UITableView.swift)
* [UIViewController](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/UIViewController.swift)

## STWInspectableKit

This is where we will have all our `@IBDesignable && @IBInspectable`. For example:

* [HorizontalGradientUIView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/HorizontalGradientUIView.swift)
* [TwoColorHorizontalGradientUIView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/TwoColorHorizontalGradientUIView.swift)
* [VerticalGradientUIView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/VerticalGradientUIView.swift)
* [CustomUICollectionViewCell](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomUICollectionViewCell.swift)
* [CustomUICollectionView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomUICollectionView.swift)
* [CustomUITableViewCell](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomUITableViewCell.swift)
* [CustomUIView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomUIView.swift)
* [CustomUIImageView](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomUIImageView.swift)
* [CustomUIButton](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomUIButton.swift)
* [LocalizedUIButton](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/LocalizedUIButton.swift)
* [CustomUILabel](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomUILabel.swift)

## STWProtocolKit

The Protocol Kit, will store some useful protocols to set a standard in **Stanwood**, `[CollectionDataSource, CollectionDelegate, DataType, etc'..]`, for example:

* [CollectionSourceType](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CollectionDataSource.swift)
* [CollectionDelegateType](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CollectionDelegate.swift)
* [TableSourceType](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/TableDataSource.swift)
* [TableDelegateType](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/TableDelegate.swift)
* [DataType/Type](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/DataType.swift)
* [CustomTableViewDatasource - :thanks: @szab](https://github.com/stanwood/Mach_Dich_Krass_Swift/blob/9f844ffe63207bc81a21478e03532fa83f0f6e5a/Mach_Dich_Krass/CustomTableViewDatasource.swift)

# Cocoa_Pods_Specs


## Installation

Adding Specs source to pod file:

```ruby
source 'https://github.com/stanwood/Cocoa_Pods_Specs.git'
use_frameworks!

target 'STWProject' do
    pod 'STWKit'
end
```
## Stanwood CocoaPods SDK List



```ruby
pod 'STWSocialKit'

#pod STWProtocolKit
#pod STWInspectableKit
#pod STWExtensionsKit
#pod STWFeaturesKit
```

### Updating SDK's

Adding/Updating a private Pod

1) Tag SDK
2) Push .podspec

```ruby
$ pod repo push Cocoa_Pods_Specs STWLibraryKit.podspec --private --allow-warnings
```

