# FaviconDownloader
Webpage Favicon download For Swift

How to use it ? just like this !
```
FaviconDownloader.download(url: "https://term.ptt.cc/") { (Data) in
         let image = UIImage(data: Data)
         imageView.image = image
}
```
