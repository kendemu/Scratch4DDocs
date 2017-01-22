#ElectronでHelper Appを実装する  
今回はElectronでHelper Appを実装します。  

## Electronとは  
Electronはデスクトップアプリを開発するためのフレームワークです。  
SlackのデスクトップアプリやMicrosoft Visual Studio CodeがElectronを使って作られています。  
![slack](slackapp.png)
![vscode](vscode.png)

## Electronの仕組み  
ElectronはchromiumブラウザとNode.jsを合体させたフレームワークです。  
GUIはWEB技術のHTML5で設計でき、他のプログラムはNode.jsで作ります。  
![electron](electron.png)

## Node.jsとは  
Node.jsはサーバーサイドでJavaScriptを実行できるようにした実行環境です。
本来JavaScriptはWEBブラウザ上でしか動きませんでしたが、  
Node.jsを使うとJavaScriptでPythonやJavaと同じように汎用的なプログラムが作れます。  
コーディングされたJavaScriptがシングルスレッドで非同期に実行されることが特徴です。  
少ないコンピューター資源でサーバーが作れることで有名です。  
C++でコーディングされたJIT VMのGoogle V8 Engineを使用しているため、  
高速でJavaScriptを実行することができます。  
最近は組み込み機器とNode.jsを組み合わせてIoTにも使われています。  
主にWEBサーバー開発やWEBフロントエンド開発に使用されます。  

## サンプル：Node.jsでHTTPサーバーを作る  
```javascript  
const http = require('http');
http.createServer(function (req, res) {
res.writeHead(200, {'Content-Type': 'text/plain'});
	res.end('Hello World\n');
}).listen(8080);
console.log('Server running at http://127.0.0.1:8080/');
```

## Node.jsの仕組み  
Node.jsには3つの仕組みがあります。  
1. 簡単に軽量なサーバープログラムが作れる  
2. NPMパッケージマネージャーを使って豊富なライブラリをすぐに使用することができる  
3. npm scriptで開発工程が自動化・効率化できる  


