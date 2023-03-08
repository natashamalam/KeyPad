//
//  Configuration.swift
//  KeyPad
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/07.
//

import Foundation


class Configuration {
    
    var labelTitle: String {
        #if RELEASE_STG
            return "This is release staging mode"
        #elseif RELEASE_PROD
            return "This is release production mode"
        #elseif DEBUG_STG
            return "This Debug Staging mode"
        #elseif DEBUG_PROD
            return "This Debug Production mode"
        #elseif RELEASE
            return "This is release mode"
        #elseif DEBUG
            return "This Debug mode"
        #else
            return "I have no idea"
        #endif
    }
}
