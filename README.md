# FaviconDownloader
Webpage Favicon download For Swift

How to use it ? just like this !
```
FaviconDownloader.download(url: "https://term.ptt.cc/") { (data , error) in
         if let imageData : Data = data {
                let image = UIImage(data: imageData)
                imageView.image = image
         }
}
```
