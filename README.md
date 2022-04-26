# sample conan leptonica in manylinux not working

## To reproduce: 
```shell
docker build .
```

## My results:
```shell

 > [5/5] RUN ./tesseract --version > /tmp/results.txt &&   cat /tmp/results.txt &&   if grep -q libopenjp2 /tmp/results.txt; then echo "found it"; else >&2 echo "Tesseract was not built with openjpeg "; exit 1; fi:
#8 0.234 tesseract 4.1.1
#8 0.234  leptonica-1.82.0
#8 0.234   libgif 5.2.1 : libjpeg 9d : libpng 1.6.37 : libtiff 4.3.0 : zlib 1.2.12
#8 0.234  Found libarchive 3.5.2 zlib/1.2.12
#8 0.236 Tesseract was not built with openjpeg 

```