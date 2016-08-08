//
//  fnv.swift
//  FNV
//
//  Created by Cédric Ponchy on 29/07/16.
//  Copyright © 2016 Cédric Ponchy. All rights reserved.
//

import Foundation

// FNV_offset_basis is the 64-bit FNV offset basis value: 14695981039346656037 (in hex, 0xcbf29ce484222325).
// It is an unsigned 64-bit value.
let FNV_64_offset_basis : UInt = 0xcbf29ce484222325

// The FNV_prime is the 64-bit FNV prime value: 1099511628211 (in hex, 0x100000001b3).
// It is an unsigned 64-bit value.
let FNV_64_prime : UInt = 0x100000001b3

func FNV_64_hash( buffer : [UInt8], seed : UInt = FNV_64_offset_basis ) -> UInt {
    // By design, the starting hval is set to FNV_64_offset_basis
    var hval : UInt = seed
    
    for bp : UInt8 in buffer {
        hval = hval &* FNV_64_prime    // Notice Swift's overflow operator.
        hval = hval ^ UInt(bp)
    }
    
    return hval
}

func FNV_64_hash( buffer : String, seed : UInt = FNV_64_offset_basis ) -> UInt {
    // By design, the starting hval is set to FNV_64_offset_basis
    var hval : UInt = seed
    
    for bp : UInt8 in buffer.utf8 {
        hval = hval &* FNV_64_prime    // Notice Swift's overflow operator.
        hval = hval ^ UInt(bp)
    }
    
    return hval
}

func FNVa_64_hash( buffer : [UInt8], seed : UInt = FNV_64_offset_basis ) -> UInt {
    // By design, the starting hval is set to FNV_64_offset_basis
    var hval : UInt = seed
    
    for bp : UInt8 in buffer {
        hval = hval ^ UInt(bp)
        hval = hval &* FNV_64_prime    // Notice Swift's overflow operator.
    }
    
    return hval
}

func FNVa_64_hash( buffer : String, seed : UInt = FNV_64_offset_basis ) -> UInt {
    // By design, the starting hval is set to FNV_64_offset_basis
    var hval : UInt = seed
    
    for bp : UInt8 in buffer.utf8 {
        hval = hval ^ UInt(bp)
        hval = hval &* FNV_64_prime    // Notice Swift's overflow operator.
    }
    
    return hval
}
