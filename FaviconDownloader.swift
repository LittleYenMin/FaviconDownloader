//
//  FaviconDownloader.swift
//  FaviconDownloader
//
//  Created by 邱彥銘 on 2017/10/20.
//  Copyright © 2017年 ym. All rights reserved.
//

import Foundation

class FaviconDownloader : NSObject {
    private static var baseURL : String = "https://www.google.com/s2/favicons?domain="
    
    class func download(url : String , response : @escaping ((Data) -> ()) ) {
        let iconURL : String = FaviconDownloader.baseURL + url
        guard let link = URL(string: iconURL) else {
            return
        }
        do {
            let imageData = try Data(contentsOf: link)
            response(imageData)
        } catch {
            print(error.localizedDescription)
        }
    }

}
