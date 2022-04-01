//
//  ValueAccessors.swift
//  JSON Value Accessors
//
//  Trademark and Copyright (c) 2022 Miclaus Industries Corporation B.V. Advanced Software Technologies Research Group.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

// JSONEngine Extension for JSON Value Accessors
public extension JEJSON {
    // MARK: - Non Optionals
    /// JSON Boolean
    var bool: Bool {
        optionalBool ?? false
    }
    
    /// JSON `Double`
    var double: Double {
        optionalDouble ?? 0
    }
    
    /// JSON Integer
    var int: Int {
        optionalInt ?? 0
    }
    
    /// JSON `String`
    var string: String {
        optionalString ?? ""
    }
    
    /// JSON `Array`
    var array: [JEJSON] {
        optionalArray ?? []
    }
    
    /// JSON Dictionary
    var dictionary: [String: JEJSON] {
        optionalDictionary ?? [:]
    }
    
    // MARK: - Optionals
    /// JSON Optional Boolean
    var optionalBool: Bool? {
        value as? Bool
    }
    
    /// JSON Optional `Double`
    var optionalDouble: Double? {
        value as? Double
    }
    
    /// JSON Optional Integer
    var optionalInt: Int? {
        value as? Int
    }
    
    /// JSON Optional `String`
    var optionalString: String? {
        value as? String
    }
    
    /// JSON Optional `Array`
    var optionalArray: [JEJSON]? {
        let converted = value as? [Any]
        return converted?.map { JEJSON($0) }
    }
    
    /// JSON Optional Dictionary
    var optionalDictionary: [String: JEJSON]? {
        let converted = value as? [String: Any]
        return converted?.mapValues { JEJSON($0) }
    }
}
