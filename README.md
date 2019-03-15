# JpegRenamebyExif
Rename JPEG filename by Exif date (YYYYMMDD_HHMMSS_originalname.jpg)

## 概要
処理対象となるJPEGファイルから撮影日時を取得してファイルをリネームする。
リネーム前：DSC00281-1.jpg
リネーム後：20180908_112910_DSC00281-1.jpg

## 使用方法
1. .ps1ファイルと.batファイルを同じフォルダに格納する
2. １のフォルダにsrcフォルダを作成し、処理対象となる画像ファイルを格納する（複数配置OK）
3. batファイルを実行。同じフォルダのdst フォルダに処理結果JPEGファイルを出力する

srcフォルダ内にファイルが複数ある場合にはまとめて処理します

## 注意事項
処理対象ファイルが破損しても責任は負いかねます。バックアップした上で使用してください。


## overview
This program rename jpeg file depend on exif data
before : DSC00281-1.jpg
after  : 20180908_112910_DSC00281-1.jpg (YYYYMMDD_HHMMSS_origialname)

## Install & Usage
1. Put .ps1 file and .bat file to same folder.
2. Create scr folder and put target JPEG files into it.
3. Execute .bat file. The Result JPEG file will appeare in dst folder.

## Warning!!
Please backup src JPEG files before execute !
