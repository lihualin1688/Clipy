//
//  MenuType.swift
//
//  Clipy
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
//
//  Created by Econa77 on 2016/06/26.
//
//  Copyright © 2015-2018 Clipy Project.
//

import Foundation

enum MenuType: String {
    case history    = "HistoryMenu"
    case snippet    = "SnippetMenu"

    var userDefaultsKey: String {
        switch self {
        case .history:
            return Constants.HotKey.historyKeyCombo
        case .snippet:
            return Constants.HotKey.snippetKeyCombo
        }
    }

    var hotKeySelector: Selector {
        switch self {
        case .history:
            return #selector(HotKeyService.popupHistoryMenu)
        case .snippet:
            return #selector(HotKeyService.popUpSnippetMenu)
        }
    }

}
