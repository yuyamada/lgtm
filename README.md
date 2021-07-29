# lgtm
Commands for generating LGTM image.
This work is greatly inspired by [lgtmoon](https://github.com/yoshikyoto/lgtmoon).

![](sample/cat.png)
![](sample/cat-lgtm.png)

## setup
1. install impbcopy (http://www.alecjacobson.com/weblog/?p=3816)
```
curl https://gist.githubusercontent.com/beng/806b8420cc16bcf8a07a/raw/2e4e02c30d157a9908001ad8029cbdd3385f5851/impbcopy.m
gcc -Wall -g -O3 -ObjC -framework Foundation -framework AppKit -o impbcopy impbcopy.m
cp impbcopy /usr/local/bin/  # or other path in PATH
```
2. install pngpaste
```
brew install pngpaste
```
3. install fonts
```
wget https://dotcolon.net/download/fonts/aileron_0102.zip
unzip aileron_0102.zip -d fonts
cp fonts/Aileron-{Black,Regular}.otf /Library/Fonts/
```
4. install lgtm
```
git clone git@github.com:yuyamada/lgtm.git ~/.lgtm
source ~/.lgtm/lgtm.sh  # recommend to append this to rcfile
```

## usage
1. first, copy the input image to the clipboard.
2. then, run this command, lgtm image is copied to the clipboard.
```
lgtm
```
other usages
```
# from stdin
curl http://example.com/image.png | lgtm-convert | imc

# from file
lgtm-convert /path/to/image.png | imc
```

## reference
- https://github.com/yoshikyoto/lgtmoon
- https://dotcolon.net/font/aileron/
- http://www.alecjacobson.com/weblog/?p=3816
- https://gist.github.com/beng/806b8420cc16bcf8a07a
