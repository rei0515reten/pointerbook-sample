# pointerbook-sample
このリポジトリは技術書典14に販売予定である本のDockerfileとサンプルコードです。（タイトル未定）

## 環境構築
### dockerhubからimageをpull
```
docker pull reten/riscv_exe
```

### Dockerfileをbuildしてimageを作成
tagとversionは任意
```
docker build -t <tag>:<version> .
```
