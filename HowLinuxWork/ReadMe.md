# ［試して理解］Linuxのしくみ ～実験と図解で学ぶOSとハードウェアの基礎知識 Kindle版 
## 2章 ユーザーモードで実現する機能

###  sar (System Admin Reporter)

<pre>$ sar -P ALL 1
Linux 4.15.0-30-generic (hiura-desktop) 	2018年08月12日 	_x86_64_	(12 CPU)

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

