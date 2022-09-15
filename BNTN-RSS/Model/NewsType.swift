//
//  NewsType.swift
//  BNTN-RSS
//
//  Created by Takumi Aoki on 2022/9/4.
//

import Foundation

/// ニュースの種別
enum NewsType: CaseIterable {
    case main
    case biz
    case tech
    case web
    case digital
    case mac
    case hobby
    case pc
    
    
    /// RSS取得用url
    /// - note: RSSはXMLでデータを返しますが、より汎用的に使えるJSONで記事を取得したいのでJSON変換するAPIを通しています。
    ///         https://rss2json.com/#rss_url=https%3A%2F%2Fwww.theguardian.com%2Finternational%2Frss
    var urlStr: String {
        switch self {
        case .main:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Frss.xml"
        case .biz:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Fbiz%2Frss.xml"
        case .tech:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Ftech%2Frss.xml"
        case .web:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Fweb%2Frss.xml"
        case .digital:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Fdigital%2Frss.xml"
        case .mac:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Fmac%2Frss.xml"
        case .hobby:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Fhobby%2Frss.xml"
        case .pc:
        return "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fascii.jp%2Fpc%2Frss.xml"
        }}
    
    /// ページメニュータイトル用文字列
    var itemInfo: String {
        switch self {
        case .main: return "ASCII.jp"
        case .biz: return "ビジネス"
        case .tech: return "TECH"
        case .web : return "Web"
        case .digital: return "デジタル"
        case .mac : return "iOS"
        case .hobby: return "アキバ"
        case .pc: return "自作PC"
        }
    }
    
}
