#! /bin/bash

# 压缩文件批处理
file=$(ls test) # `ls`

for filename in $file

do

# 利用ls获得所有的文件名的列表，
# 对于文件名为filename的文件，它的文件名的前缀为filename%.，它的后缀名为filename##.
# if [ ${filename##*.} = 'txt' ]; then

# tar -cf ${filename%.*}.tar ${filename%.*}.txt
tar -zcvf ${filename%.*}.tar.gz ./test/${filename}

# fi

done

# tar使用方法：
# tar [OPTION...] [FILE]...
# OPTION 如下
# -c：建立一个压缩文件的参数指令(create 的意思)；
# -x：解开一个压缩文件的参数指令！
# -t：查看 tarfile 里面的文件！
# -r：向压缩归档文件末尾追加文件
# -u：更新原压缩包中的文件
# -v：显示所有过程
# -z：有gzip属性的
# -Z：有compress属性的
# -j：有bz2属性的
# -O：将文件解开到标准输出
# 示例：
# 使用 gzip 算法压缩
# tar -zcvf /tmp/bin-backup.tar.gz /home/vivek/bin/
# https://wangchujiang.com/linux-command/c/tar.html
