//
//  FaviconDownloader.swift
//  FaviconDownloader
//
//  Created by 邱彥銘 on 2017/10/20.
//  Copyright © 2017年 ym. All rights reserved.
//

import Foundation

enum FavErro : Error {
    case invalidURLString
}
class FaviconDownloader : NSObject {
    private static var baseURL : String = "https://www.google.com/s2/favicons?domain="
    
    class func download(url : String , response : @escaping ((Data?,Error?) -> ()) ) {
        let iconURL : String = FaviconDownloader.baseURL + url
        guard let link = URL(string: iconURL) else {
            response(nil,FavErro.invalidURLString)
            return
        }
        do {
            let imageData = try Data(contentsOf: link)
            response(imageData,nil)
        } catch {
            response(nil,error)
        }
    }

}
