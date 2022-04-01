//
//  JSONEngine.swift
//  JSONEngine Swift implementation
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

import Foundation // Import Foundation for `RandomAccessCollections`

// MARK: - Implementation
/// JSONEngine's `JavaScript Object Notation` Implementation
@dynamicMemberLookup
public struct JEJSON: RandomAccessCollection {
    /// JSON Value
    public var value: Any?
    
    /// JSON Start Index
    public var startIndex: Int { array.startIndex }
    
    /// JSON Date Index
    public var endIndex: Int { array.endIndex }
    
    /// String Initializer Parser
    /// - Parameter string: Input String
    /// - Throws: If JSON can't be serialized.
    public init(_ string: String) throws {
        let data = Data(string.utf8)
        value = try JSONSerialization.jsonObject(with: data)
    }
    
    /// Any Initializer
    /// - Parameter value: Input Value
    public init(_ value: Any?) {
        self.value = value
    }
}
