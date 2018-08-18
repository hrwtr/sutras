# ［試して理解］Linuxのしくみ ～実験と図解で学ぶOSとハードウェアの基礎知識 Kindle版 
## 2章 ユーザーモードで実現する機能

###  sar (System Admin Reporter)

<pre>$ sar -P ALL 1
Linux 4.15.0-30-generic (user-desktop) 	2018年08月12日 	_x86_64_	(12 CPU)

14時45分13秒     CPU     %user     %nice   %system   %iowait    %steal     %idle
14時45分14秒<font color="#4E9A06">     all</font><font color="#729FCF"><b>      1.17      6.76      0.58</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     91.49</b></font>
14時45分14秒<font color="#4E9A06">       0</font><font color="#729FCF"><b>      3.96</b></font><font color="#3465A4">      0.00</font><font color="#729FCF"><b>      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     95.05</b></font>
14時45分14秒<font color="#4E9A06">       1</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
14時45分14秒<font color="#4E9A06">       2</font><font color="#729FCF"><b>      0.99     48.51      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#729FCF"><b>     49.50</b></font>
14時45分14秒<font color="#4E9A06">       3</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
14時45分14秒<font color="#4E9A06">       4</font><font color="#3465A4">      0.00      0.00</font><font color="#729FCF"><b>      1.00</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     99.00</b></font>
14時45分14秒<font color="#4E9A06">       5</font><font color="#3465A4">      0.00      0.00</font><font color="#729FCF"><b>      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     99.01</b></font>
14時45分14秒<font color="#4E9A06">       6</font><font color="#729FCF"><b>      0.99      3.96      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     94.06</b></font>
14時45分14秒<font color="#4E9A06">       7</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
14時45分14秒<font color="#4E9A06">       8</font><font color="#729FCF"><b>      8.00     27.00      1.00</b></font><font color="#3465A4">      0.00      0.00</font><font color="#AD7FA8"><b>     64.00</b></font>
14時45分14秒<font color="#4E9A06">       9</font><font color="#729FCF"><b>      1.01</b></font><font color="#3465A4">      0.00</font><font color="#729FCF"><b>      1.01</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     97.98</b></font>
14時45分14秒<font color="#4E9A06">      10</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
14時45分14秒<font color="#4E9A06">      11</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
^C

平均値:      CPU     %user     %nice   %system   %iowait    %steal     %idle
平均値: <font color="#4E9A06">     all</font><font color="#729FCF"><b>      1.17      6.76      0.58</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     91.49</b></font>
平均値: <font color="#4E9A06">       0</font><font color="#729FCF"><b>      3.96</b></font><font color="#3465A4">      0.00</font><font color="#729FCF"><b>      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     95.05</b></font>
平均値: <font color="#4E9A06">       1</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
平均値: <font color="#4E9A06">       2</font><font color="#729FCF"><b>      0.99     48.51      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#729FCF"><b>     49.50</b></font>
平均値: <font color="#4E9A06">       3</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
平均値: <font color="#4E9A06">       4</font><font color="#3465A4">      0.00      0.00</font><font color="#729FCF"><b>      1.00</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     99.00</b></font>
平均値: <font color="#4E9A06">       5</font><font color="#3465A4">      0.00      0.00</font><font color="#729FCF"><b>      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     99.01</b></font>
平均値: <font color="#4E9A06">       6</font><font color="#729FCF"><b>      0.99      3.96      0.99</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     94.06</b></font>
平均値: <font color="#4E9A06">       7</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
平均値: <font color="#4E9A06">       8</font><font color="#729FCF"><b>      8.00     27.00      1.00</b></font><font color="#3465A4">      0.00      0.00</font><font color="#AD7FA8"><b>     64.00</b></font>
平均値: <font color="#4E9A06">       9</font><font color="#729FCF"><b>      1.01</b></font><font color="#3465A4">      0.00</font><font color="#729FCF"><b>      1.01</b></font><font color="#3465A4">      0.00      0.00</font><font color="#EF2929"><b>     97.98</b></font>
平均値: <font color="#4E9A06">      10</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
平均値: <font color="#4E9A06">      11</font><font color="#3465A4">      0.00      0.00      0.00      0.00      0.00</font><font color="#EF2929"><b>    100.00</b></font>
</pre>


```
ユーザーモードでプロセスを実行している時間の割合は%userと%niceの合計によって得られる
CPUコアがカーネルモードでシステムコールなどの処理を実行している時間の割合は「%system」
```

### lld 
プログラムがなんのライブラリをリンクしているかを確認する

```
$ ldd /bin/echo
	linux-vdso.so.1 (0x00007ffde5b6c000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f85df30b000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f85df905000)
$ ldd ppidloop
	linux-vdso.so.1 (0x00007ffcc47e2000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fcc63e67000)
	/lib64/ld-linux-x86-64.so.2 (0x00007fcc64258000)
$ ldd /usr/bin/python3
	linux-vdso.so.1 (0x00007ffeb65df000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007fc2d4b51000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fc2d494d000)
	libutil.so.1 => /lib/x86_64-linux-gnu/libutil.so.1 (0x00007fc2d474a000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007fc2d4518000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007fc2d42fb000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007fc2d3f5d000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fc2d3b6c000)
	/lib64/ld-linux-x86-64.so.2 (0x00007fc2d4d70000)
```
例えば上記の結果からは３つともが`libc`をリンクしている（実行時に利用している）ことがわかる  
`libc`はGNUプロジェクトが提供する標準Cライブラリ

## 3章 プロセス管理

* 「同じプログラムの処理を複数のプロセスに分けて処理」するときには`fork関数`のみを用いる  


* ELF(Executable Linkable Format)の各種情報は`readelf`で得られる

```
$ readelf -h /bin/sleep 
ELF ヘッダ:
  マジック:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
  クラス:                            ELF64
  データ:                            2 の補数、リトルエンディアン
  バージョン:                        1 (current)
  OS/ABI:                            UNIX - System V
  ABI バージョン:                    0
  型:                                DYN (共有オブジェクトファイル)
  マシン:                            Advanced Micro Devices X86-64
  バージョン:                        0x1
  エントリポイントアドレス:               0x1b70
  プログラムの開始ヘッダ:          64 (バイト)
  セクションヘッダ始点:          33208 (バイト)
  フラグ:                            0x0
  このヘッダのサイズ:                64 (バイト)
  プログラムヘッダサイズ:            56 (バイト)
  プログラムヘッダ数:                9
  セクションヘッダ:                  64 (バイト)
  セクションヘッダサイズ:            28
  セクションヘッダ文字列表索引:      27

```
開始アドレスを得るには`-h`オプション
```
(略)
エントリポイントアドレス:               0x1b70
(略)
```




* プログラム実行時に作成されたプロセスのメモリマップは`proc/${pid}/maps`ファイルに出力される

```
$ sleep 10000 &
[1] 3431

$ cat /proc/3431/maps
5629d7144000-5629d714b000 r-xp 00000000 08:02 5243033                    /bin/sleep
5629d734b000-5629d734c000 r--p 00007000 08:02 5243033                    /bin/sleep
5629d734c000-5629d734d000 rw-p 00008000 08:02 5243033                    /bin/sleep
5629d871d000-5629d873e000 rw-p 00000000 00:00 0                          [heap]
7ff793e2d000-7ff7948fc000 r--p 00000000 08:02 21240507                   /usr/lib/locale/locale-archive
7ff7948fc000-7ff794ae3000 r-xp 00000000 08:02 25170492                   /lib/x86_64-linux-gnu/libc-2.27.so
7ff794ae3000-7ff794ce3000 ---p 001e7000 08:02 25170492                   /lib/x86_64-linux-gnu/libc-2.27.so
7ff794ce3000-7ff794ce7000 r--p 001e7000 08:02 25170492                   /lib/x86_64-linux-gnu/libc-2.27.so
7ff794ce7000-7ff794ce9000 rw-p 001eb000 08:02 25170492                   /lib/x86_64-linux-gnu/libc-2.27.so
7ff794ce9000-7ff794ced000 rw-p 00000000 00:00 0 
7ff794ced000-7ff794d14000 r-xp 00000000 08:02 25170464                   /lib/x86_64-linux-gnu/ld-2.27.so
7ff794efd000-7ff794eff000 rw-p 00000000 00:00 0 
7ff794f14000-7ff794f15000 r--p 00027000 08:02 25170464                   /lib/x86_64-linux-gnu/ld-2.27.so
7ff794f15000-7ff794f16000 rw-p 00028000 08:02 25170464                   /lib/x86_64-linux-gnu/ld-2.27.so
7ff794f16000-7ff794f17000 rw-p 00000000 00:00 0 
7ffc3bff8000-7ffc3c019000 rw-p 00000000 00:00 0                          [stack]
7ffc3c13c000-7ffc3c13f000 r--p 00000000 00:00 0                          [vvar]
7ffc3c13f000-7ffc3c141000 r-xp 00000000 00:00 0                          [vdso]
ffffffffff600000-ffffffffff601000 r-xp 00000000 00:00 0                  [vsyscall]
```


## 4章 プロセススケジューラ
### スケジューラ
* 1つのCPU上で同時に処理するプロセスは１つだけ
* 複数プロセスが実行可能な場合、個々のプロセスを適当な長さの時間（タイムスライス）ごとにCPU上で順番に処理する
* 論理CPU上で動作するプロセスが切り替わることを「コンテキストスイッチ」と呼ぶ
* 各プロセスの状態は`ps ax`の第3フィールドである`STAT`を見る  

    | STATフィールドの1文字目 | 状態 |
    | :--: | :--: |
    |R|実行|
    |S or D|スリープ|
    |Z|ゾンビ|