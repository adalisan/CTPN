all:
	cython src/utils/cpu_nms.pyx
	gcc -shared -pthread -fPIC -fwrapv -O2 -Wall -fno-strict-aliasing \
		-I/usr/lib64/python2.7/site-packages/numpy/core/include -I/usr/include/python2.7 -o src/utils/cpu_nms.so src/utils/cpu_nms.c
#	rm -rf src/utils/cpu_nms.c
