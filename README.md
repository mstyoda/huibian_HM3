# huibian_HM3

*学号：2015011340 姓名：骆轩源

#我的算法优化了两个地方：
1.向系统调用brk的操作数目为O(log(n))，其中n为最终堆占用的内存空间总长度。 由于n <= 内存总大小，假设内存为8G，那么调用次数不超过23。
2.合并了相邻的空白块。

#实现方法：
1.优化系统调用的方法是，记录最近一次向系统申请增加的堆的长度的大小，记为current_size，假设遇到了一个新的allocate请求空间为asked_size,并且
  当前没有空白块可以放下，那么就将堆的长度扩大max(current_size * 2,asked_size)，可以证明，第i次申请的大小至少为2^i。故证明了系统调用次数为
  O(log n)级别。 

2.空白区域的合并，是每一次释放操作时，从头到尾扫描合并。

#实验准备：
1.实验代码：alloc.s, newalloc.s, alloc_with_clear.s
	其中alloc.s是ppt上的代码，每一次扩展是直接扩展所需空间，也不做合并相邻空白块的优化。
	   newalloc.s是加上了按2的幂扩展的优化，减少了系统调用。
	   alloc_with_clear.s是同时加上了空白块合并优化，以及2的幂优化。
	   
2.测试代码：mkdata.py,test.s

其中mkdata.py用来生成测试代码，测试代码中，首先输出当前break位置，然后运行n条指令，n条指令为随机生成的alloc和dealloc指令，为了在dealloc操作时
知道需要释放的位置，需要用一个很大的栈记录每一次alloc后返回的eax，我是按照对应编号存的，第i个alloc指令的返回结果，被存到了栈的4*i(%ebp)。

设置好mkdata.py，运行`python mkdata.py`，就会生成test.s，这时只需要分别运行：

*`bash run.sh`  //该指令测试alloc.s中实现的代码
*`bash run2.sh` //该指令测试alloc_with_clear.s中实现的代码
*`bash run3.sh` //该指令测试newalloc.s中实现的代码

#实验1（系统调用优化）：

本实验中，mkdata.py只生成500000条 alloc指令，返回地址也不存储到栈，参与对比的代码是alloc.s和newalloc.s

使用方法为，将test1.s重命名为test.s之后，执行run.sh和run2.sh即可

对于alloc.s的返回结果为：
	root@f42aaf989e67:/home/huibian_HM3# time ./test
	brk(0):164945920
	brk(0):169445920

	real	5m17.765s
	user	5m17.468s
	sys	0m0.244s
对于newalloc.s的返回结果为：
	root@f42aaf989e67:/home/huibian_HM3# time ./test3
	brk(0):145268736
	brk(0):153657527

	real	5m1.659s
	user	5m1.632s
	sys	0m0.032s
可以看到减少系统调用之后，时间确实有减少。

#实验2（合并空白优化：）

本实验中，mkdata.py
