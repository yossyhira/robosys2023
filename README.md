# robosys2023
[![test](https://github.com/yossyhira/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/yossyhira/robosys2023/actions/workflows/test.yml)
千葉工業大学未来ロボティクス学科 2023年度 ロボットシステム学で使用するリポジトリ

## 動作環境
### 必要なソフトウェア　

* python 
  * テスト済み：3.7 ~ 3.10

###テスト環境
* ubuntu 22.04.2 LTS

## インストール方法
下記のコードをホームディレクトリでクローンしてください
```
git clone git@github.com:yossyhira/robosys2023.git
```
## plusコードで出来ること
標準出力から読み込んだ数値を足す

## 使用方法

```bash
$ seq 10 > nums
$ ./plus < nums
55
```

```bash
$ seq 10 | ./plus
55
```

## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
  
  * このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
      * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
  * © 2023 Yoshitaka Hirata
