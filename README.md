# CodeBase卒業生によるハッカソン専用リポジトリ
1. サーバーの立ち上げは``bin/dev``コマンドを使用してください。
2. データベースはpostgresql@14を使用します。
3. Railsのバージョンはgemfileを参照してください。

# clone後に確認すること

1. `bin/dev` コマンドを実行し、ブラウザで `https://localhost:3000` へアクセス。  
   画面が表示されれば準備OKです。

2. もし `esbuild` に関連するビルドエラーが発生した場合は、以下の手順で対応してください。
   (yarnがない人はインストールから)
   ```bash
   brew install yarn
   ```
   ```bash
   yarn install
   ```
4. それでもエラーが解消しない場合は、npm がインストールされていない可能性があります。
   下記コマンドで npm をインストールし、再度手順2を実行してください。

   ```bash
   brew install npm
