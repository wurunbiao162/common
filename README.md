# fg2fa 使用方法，输入文件不能是压缩文件，得是.fq结尾
# sample.1.fq sample.2.fq 为两个测序文件，sample.fa为输出文件
$ fq2fa --merge sample.1.fq sample.2.fq sample.fa

# fq2fa.pl 使用方法
# Result files: clean_data.1.fa, clean_data.2.fa
$ perl /bin/fq2fa.pl clean_data.1.fq clean_data.1
$ perl /bin/fq2fa.pl clean_data.2.fq clean_data.2


