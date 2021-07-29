# lgtm
commands for converting image to LGTM image.

![](sample/cat.png)
![](sample/cat-lgtm.png)

## setup
```
# install impbcopy (http://www.alecjacobson.com/weblog/?p=3816)
curl https://gist.githubusercontent.com/beng/806b8420cc16bcf8a07a/raw/2e4e02c30d157a9908001ad8029cbdd3385f5851/impbcopy.m
gcc -Wall -g -O3 -ObjC -framework Foundation -framework AppKit -o impbcopy impbcopy.m
cp impbcopy /usr/local/bin/  # or other path in PATH

# install pngpaste
brew install pngpaste

# install lgtm
git clone git@github.com:yuyamada/lgtm.git ~/.lgtm
source ~/.lgtm/lgtm.sh  # recommend to append this to rcfile
```

## usage
```
# first, copy the input image to the clipboard
lgtm  # now, the converted image is copied to the clipboard

# from stdin
curl http://example.com/image.png | lgtm-convert | imc

# from file
lgtm-convert /path/to/image.png | imc
```

## reference
https://github.com/yoshikyoto/lgtmoon
