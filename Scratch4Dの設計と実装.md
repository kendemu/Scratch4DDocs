# Scratch4Dの設計と実装
##システム図  
このシステム図には6つの役割が存在します。  

![scratch4d](scratch4d.png)  

1. Scratch Editorクライアント  
2. Electron起動プロセス  
3. Electron BrowserWindow(chromiumブラウザ)  
4. ドローン動画ストリーミングサーバー  
5. ドローンHTTP API制御サーバー  
6. ドローン  


##起動プロセス  
ElectronメインプロセスがUI, ストリーミングサーバーとHTTP APIサーバーを同時に起動します。   

##Scratch Editor  
Scratch Editorが拡張ブロックを実行するたびにScratch4Dに対してHTTPリクエストを送信します。  

##Scratch4D UIの処理  
HTML5を使用します。  
ドローン動画ストリーミングサーバーの動画をiframeで読み込み、CSSなどで装飾して表示します。  
離陸・着陸ボタンがクリックされた場合、AjaxでScratch Editorと同じようにHTTPリクエストを送信します。  
![UI](UI.png)

##Scratch4D 動画ストリーミングサーバーの処理  
ドローンの動画ストリームを受信したときに画像を保存します。  
ストリーミングサーバーへのHTTPリクエストを受信すると、HTTPレスポンスとして画像を送信します。  
動画のエンコーディング・デコーディングはffmpegを使っています。  
A.R. DroneのH.264動画ストリームをPNGフォーマットに変えてストリーミングしています。  
![stream](streamserver.png)

##Scratch4D HTTP APIサーバーの処理  
Ajaxを使ったHTTPリクエストをサーバーサイドで処理するAPIのことをHTTP APIと呼びます。  
今回はScratchのドローンブロック用のHTTP APIを実装しました。  
ドローンのセンサ値をサーバーからクライアントに送信するために, HTTP Pollingを使用しました。  
![droneAPI](DroneAPIServer.png)

##ドローンの操縦  
TCP/UDPでA.R. Droneは操作できます。  
A.R. DroneはPCMDパケットと呼ばれるパケットのデータグラムをTCP/UDPパケットに格納すれば操縦できます。  
今回はNode.jsのar-droneモジュールを使って、コード上ではdrone.land()というAPIで  
パケット作成＆パケット送信を実現しました。  
![dronecontrol](dronecontrol.png)
