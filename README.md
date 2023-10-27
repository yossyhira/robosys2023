# robosys2023

## 動作環境
### 動作テスト済み　

ubuntu 22.04.2 LTS

python 3.10.12

## インストール方法
下記のコードをホームディレクトリでクローンしてください
```
git clone git@github.com:yossyhira/robosys2023.git
```

## 使い方

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
