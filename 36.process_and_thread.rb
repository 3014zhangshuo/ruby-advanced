pid = Process.fork {}
puts pid
# 进程会独立占用 cpu 内存
# 线程由进程分发出来的，会共享进程中的变量
Thread.new {}
# GIL: Global Interpreter Lock
