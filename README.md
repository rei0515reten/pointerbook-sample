# pointerbook-sample
このリポジトリは技術書典14の新刊「C言語のポインタをアセンブリで理解しよう！～RISC-V編～」の実行環境とサンプルコードです。

## 環境構築
### dockerhubからimageをpull
```
docker pull reten/riscv_exe:latest
```

### Dockerfileをbuildしてimageを作成
tagとversionは任意
```
docker build -t <tag>:<version> .
```
