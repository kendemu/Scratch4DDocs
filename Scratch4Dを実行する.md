# Scratch4Dの使い方  
## Windows  
1. Scratch4Dをダウンロードして、実行ファイルをクリックして起動します。  
https://drive.google.com/file/d/0By3Sz9jl9bM3Z1l6eE1UbkhrdTQ/view?usp=sharing  

2. Scratch4Dを解凍して、フォルダ内のScratch4D.exeをダブルクリックして実行してください。  

3. Scratch Editorで.sb2プロジェクトファイルをHTTP Extensionsからロードしてください。  
Scratchのドローンブロックが使用できるようになります。  
Scratch Editorのランプが緑色になっていたらドローンへの接続に成功しています。  
https://github.com/kendemu/Scratch4D/raw/master/project.sb2  

##Mac  
1. Scratch4Dのgithubのレポジトリをクローンしてください。  
```bash  
git clone https://github.com/kendemu/Scratch4D
```  
2. NVMをインストールしてください。  
```bash  
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
```
3. NVMでNode.jsのバージョンをv6.9.0 LTSにしてください。  
```bash  
nvm use v6.9.0
```
4. 動画エンコーディングライブラリffmpegをインストールしてください。  
```bash  
brew install ffmpeg
```  
5. Scratch4Dのディレクトリ下でelectronプロジェクトをビルドしてください。  
```bash  
npm -g i asar   
npm run build  
```
6. Scratch4Dのディレクトリ下でelectronプロジェクトをMacプラットフォーム用にデプロイしてください。  
```bash  
npm -g i electron-packager
npm run deploy:mac
```
7. Scratch4D-(プラットフォーム名)-(CPUアーキテクチャ名)という名前のディレクトリが生成されます。  
そのディレクトリ下でプログラムを実行してください。  

8. Scratch Editorで.sb2プロジェクトファイルをHTTP Extensionsからロードしてください。  
Scratchのドローンブロックが使用できるようになります。  
Scratch Editorのランプが緑色になっていたらドローンへの接続に成功しています。  
https://github.com/kendemu/Scratch4D/raw/master/project.sb2  



##Linux  
1. Scratch4Dのgithubのレポジトリをクローンしてください。  
```bash  
git clone https://github.com/kendemu/Scratch4D
```  
2. NVMをインストールしてください。  
```bash  
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
```
3. NVMでNode.jsのバージョンをv6.9.0 LTSにしてください。  
```bash  
nvm use v6.9.0
```  
4. 動画エンコーディングライブラリffmpegをインストールしてください。  
```bash  
sudo apt-get install ffmpeg
```  
5. Scratch4Dのディレクトリ下でelectronプロジェクトをビルドしてください。  
```bash  
npm -g i asar   
npm run build  
```
6. Scratch4Dのディレクトリ下でelectronプロジェクトをLinuxプラットフォーム用にデプロイしてください。  
```bash  
npm -g i electron-packager
npm run deploy:linux
```
7. Scratch4D-(プラットフォーム名)-(CPUアーキテクチャ名)という名前のディレクトリが生成されます。  
そのディレクトリ下でプログラムを実行してください。  

8. Scratch Editorで.sb2プロジェクトファイルをHTTP Extensionsからロードしてください。  
Scratchのドローンブロックが使用できるようになります。  
Scratch Editorのランプが緑色になっていたらドローンへの接続に成功しています。  
https://github.com/kendemu/Scratch4D/raw/master/project.sb2  


##ARM Linux  
1. Scratch4Dのgithubのレポジトリをクローンしてください。  
2. NVMをインストールしてください。  
```bash  
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
```
3. NVMでNode.jsのバージョンをv6.9.0 LTSにしてください。  
```bash  
nvm use v6.9.0
```  
4. ffmpegをインストールしてください。ARM Linux用パッケージがaptレポジトリにないのでソースインストールしてください。  
http://www.jeffreythompson.org/blog/2014/11/13/installing-ffmpeg-for-raspberry-pi/  

5. Scratch4Dのディレクトリ下でelectronプロジェクトをビルドしてください。  
```bash  
npm -g i asar   
npm run build  
```
6. Scratch4Dのディレクトリ下でelectronプロジェクトをARM Linuxプラットフォーム用にデプロイしてください。  
```bash  
npm -g i electron-packager
npm run deploy:arm
```
7. Scratch4D-(プラットフォーム名)-(CPUアーキテクチャ名)という名前のディレクトリが生成されます。  
そのディレクトリ下でプログラムを実行してください。  

8. Scratch Editorで.sb2プロジェクトファイルをHTTP Extensionsからロードしてください。  
Scratchのドローンブロックが使用できるようになります。  
Scratch Editorのランプが緑色になっていたらドローンへの接続に成功しています。  
https://github.com/kendemu/Scratch4D/raw/master/project.sb2  
