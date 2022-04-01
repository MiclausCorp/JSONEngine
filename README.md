# JSONEngine

A resilient and easy to use JSON Parser that supports Dynamic Member Lookup.

[![Get on SPM](https://img.shields.io/badge/Available%20on-Swift%20Package%20Manager-orange?logo=swift)](#installation)

## Installation
#### Swift Package Manager

You can use [Swift Package Manager](https://swift.org/package-manager/) and specify dependency in `Package.swift` by adding this:
```swift
.package(url: "https://github.com/MiclausCorp/JSONEngine.git", branch: "master")
```

## Example Usage
#### Get every title key in JSON
```swift
let object = try JEJSON(input)
for item in object {
    print(item["title"].string)
}
```

#### Get items in a deep hierarchy
```swift
let object = try JEJSON(input)
for item in object {
    print(item["address"]["city"].string)
}
```

#### Find items using Dynamic Member Lookup
```swift
let object = try JEJSON(input)
for item in object {
    if let latitude = item.address.gps.lat.optionalDouble {
        print(latitude)
    }
}
```

## License
[Miclaus General Public Software License](https://miclausindustries.github.io/license/mgpsl/LATEST.txt)