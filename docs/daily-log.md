### 2019.08.16

#### 搭建私有Git服务器实现web站点自动化部署

参考：

https://www.liaoxuefeng.com/wiki/896043488029600/899998870925664

https://blog.csdn.net/u012763794/article/details/51007961

------

#### 远程服务器操作

##### 搭建私有Git服务器并实现证书登录

......

##### 创建测试仓库

```shell
$ cd ~
$ mkdir computbiol && cd computbiol	
$ git init test.git	
$ git clone git@computbiol.com:computbiol/test.git
```



##### 在私有远程服务器上创建裸仓库

###### 裸仓库没有工作区，因为服务器上的Git仓库纯粹是为了共享，所以不让用户直接登录到服务器上去改工作区，并且服务器上的Git仓库通常都以.git结尾

```shell
$	git init --bare note.git
$ sudo chown -R git:git note.git
```



##### 设置同步更新网站文件

```shell
$ cd /var/www/html/ && mkdir note
$ sudo chown -R git:git note/
$ cd note.git/hooks/
$ vim post-receive
```


post-receive中添加如下内容：

```shell
# !/bin/sh
GIT_WORK_TREE=/var/www/html/note/  git checkout -f
```

##### 增加文件执行权限

```shell
$ sudo chmod +x post-receive
```



#### 本地服务器操作

##### 克隆裸仓库至本地实现自动化部署

```shell
$ git clone git@computbiol.com:computbiol/note.git
$ ./deploy_private.sh
```



###### git init和git init --bare的区别

用git init初始化的版本库,其保存的都是原文件,但某些用户的push操作可能导致冲突.而git init –bare创建的是裸仓库,它不保存原文件而只保存git历史提交的版本信息,并不允许用户直接在上面进行git操作

------



#### Git本地项目添加多个远程仓库

参考：https://blog.csdn.net/mengzuchao/article/details/80489864

具体实施

```shell
$ git remote set-url --add origin git@computbiol.com:/var/www/html/note
$ git remote -v
origin	git@github.com:computbiol/gitbook-note.git (fetch)
origin	git@github.com:computbiol/gitbook-note.git (push)
origin	git@computbiol.com:/var/www/html/note (push)
$ git remote set-url --delete origin git@computbiol.com:/var/www/html/note
$ git remote -v
origin	git@github.com:computbiol/gitbook-note.git (fetch)
origin	git@github.com:computbiol/gitbook-note.git (push)
```



### 2019.08.15

[sno-lncRNA的研究历程](https://zhuanlan.zhihu.com/p/27066364)

------



### 2019.08.14

#### 生物信息学和计算生物学学习资源：

1. [COMBINE](https://combine.org.au/)
2. https://github.com/COMBINE-Australia
3. [RNAseq analysis in R](https://combine-australia.github.io/RNAseq-R/)

意外收获：http://www.bio-info-trainee.com/tmp/tutorial/video_list.html

- [R语言基础笔记](https://api.rpubs.com/libaier/R_basic)
- [ggplot2–绘制分布图](https://blog.csdn.net/tanzuozhev/article/details/51106291)
- [R语言作图——density plot](https://zhuanlan.zhihu.com/p/50490855)
- [生信人的20个R语言习题及其答案-土豆学习笔记](https://www.jianshu.com/p/dd4e285665e1)
- [basic visualization for expression matrix](http://bio-info-trainee.com/tmp/basic_visualization_for_expression_matrix.html)
- R语言中数组、矩阵和数据框有什么区别

> http://f.dataguru.cn/thread-728632-1-1.html
>
> http://f.dataguru.cn/thread-4433-1-1.html
>
> 向量是一维数组，矩阵是二维数组。
> 数据框通常是矩阵形式的数据，但矩阵各列可以是不同类型的。
> 但是，数据框有更一般的定义。它是一种特殊的列表对象，有一个值为“data.frame”的class 属性，各列表成员必须是向量（数值型、字符型、逻辑型）、因子、数值型矩阵、列表，或其它数据框。向量、因子成员为数据框提供一个变量，如果向量非数值型则会被强制转换为 因子。作为数据框变量的向量、因子或矩阵必须具有相同的长度（行数）。
> 尽管如此，我们一般还是可以把数据框看作是一种推广了的矩阵，它可以用矩阵形式显示 ，可以用对矩阵的下标引用方法来引用其元素或子集。

------



### 2019.08.13

- #### Git

  - [Git入门](https://pointstoneteam.github.io/PointStone388/First-To-Read/Git.html)

  - [git 从远程服务器更新本地项目](https://blog.csdn.net/hanqingsong412/article/details/50466622)

  - [Git远程仓库地址变更本地如何修改](https://blog.csdn.net/asdfsfsdgdfgh/article/details/54981823)

  - 常用命令 

    ```
    git status
    git add [file] 
    git commit -m "Update"
    git push origin master
    ```

    

- #### Gitbook

  - [如何优雅地使用Gitbook](https://www.jianshu.com/p/09128dd66b19)

------



### 2019.08.12

- #### npm

  - [npm 是干什么的？（非教程）](https://zhuanlan.zhihu.com/p/24357770)
  - [mac上安装npm](https://www.jianshu.com/p/39b4339a9b60)
  - [Node.js之rollbackFailedOptional错误处理](https://www.jianshu.com/p/37b9322d6ceb)
  - [npm 安装的时候出现rollbackFailedOptional](https://www.jianshu.com/p/4a0c514d2c05)

### 2019.08.11

- GitHub Pages搭建网站: https://gitbeijing.com/pages.html
- 《搬进 GitHub》：https://gitbeijing.com/
- 免费数学神器Mathpix：https://mathpix.com/

------



### 2019.08.10

- [MultiQC](https://multiqc.info/)
- [软件安装](http://www.biotrainee.com/thread-856-1-1.html)
  - 第一就是二进制可执行程序，直接下载软件包解压后就可以全路径调用啦！
  - 第二就是所有的语言代码啦，比如perl,R,python,java,matlab,ruby,C等等
    其中C源码就是./configure,make,make install，也有的就是make，取决于readme，这个也是报错最多的，一般就是没有权限，缺库，很头疼。
    然后perl和python软件呢，主要就是模块依赖的问题。
    R，java,软件非常简单了。
    matlab软件，你要是在windows界面用到还好，想去linux用，也折腾好几个星期。
    ruby其它我没有用过啦。
  - 最后就是系统或者语言自带的各种软件中心安装器啦，apt-get，yum，bioconda，cpan，cran，pip等等

------



### 2019.08.07

- #### [提问的智慧](http://doc.zengrong.net/smart-questions/cn.html)

- #### 高通量数据量的计算

  一般国内的测序公司计算数据量时使用两套标准：碱基数（base，通常以**G**为单位）和序列数（reads，通常以**M**为单位）。换算也很简单，序列数×序列读长=碱基数（举个例子，我做了20M reads的转录组测序，序列读长是双端150bp，那么碱基数就约等于2×150×20M=6G）。

------



### 2019.08.06

- #### [Nucleic Acids Research Database Summary](http://www.oxfordjournals.org/our_journals/nar/database/c/)

------



### 2019.08.02

- #### xargs命令

  ```
  ls *.csv | xargs ls -l
  ```

### 2019.08.01

- #### 在shell脚本里用conda激活环境报错

  CommandNotFoundError: Your shell has not been properly configured to use 'conda activate'.

  To initialize your shell, run

  ​    $ conda init <SHELL_NAME>

  Currently supported shells are:
    \- bash
    \- fish
    \- tcsh
    \- xonsh
    \- zsh
    \- powershell

  See 'conda init --help' for more information and options.

  IMPORTANT: You may need to close and restart your shell after running 'conda init'.

  **解决方法：在shell脚本中添加如下代码**

  \# >>> conda initialize >>>

  \# !! Contents within this block are managed by 'conda init' !!

  __conda_setup="$('/Users/moonswing/Programs/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"

  if [ $? -eq 0 ]; then

  ​    eval "$__conda_setup"

  else

  ​    if [ -f "/Users/moonswing/Programs/miniconda3/etc/profile.d/conda.sh" ]; then

  ​        . "/Users/moonswing/Programs/miniconda3/etc/profile.d/conda.sh"

  ​    else

  ​        export PATH="/Users/moonswing/Programs/miniconda3/bin:$PATH"

  ​    fi

  fi

  unset __conda_setup

  \# <<< conda initialize <<<

- #### watch命令

  ```
  watch -n 1 'ls -l | wc -l'
  ```

- #### conda环境使用基本命令

  ```
  conda -h 
  conda install -h
  conda update -n base conda        #update最新版本的conda
  conda create -n xxxx python=3.5   #创建python3.5的xxxx虚拟环境
  conda activate xxxx               #开启xxxx环境
  conda deactivate                  #关闭环境
  conda env list                    #显示所有的虚拟环境
  conda info --envs                 #显示所有的虚拟环境
  ```

- ### shell命令行下获取去除后缀的文件名

  ```
  #获得不包含后缀的文件名列表
  ls *.sra | while read i;do basename $i .sra;done
  ```

  ```
  ls *.sra | while read i;do basename $i .sra;done | perl -ne 'chomp;print "$_\t";' > SRR_Tab.txt
  ```

  

- #### Shell中的${}、##和%%使用范例

  file=/dir1/dir2/dir3/my.file.txt

  ${file%%.*}：删掉第一个 . 及其右边的字符串：/dir1/dir2/dir3/my

------



### 2019.07.31

- #### **合并表达矩阵**

  HTSeq-count输出结果是一个个独立的文件，后续分析需要把多个文件合并成一个行为基因名，列为样本名，中间为count的行列式文件。

  ```
  paste *.txt | awk '{printf $1 "\t";for(i=2;i<=NF;i+=2) printf $i"\t";printf $i"\n"}' | less -S
  ```

- #### ascp on mac

  [Downloading data from NCBI via the command line using Aspera](https://www-01.ibm.com/support/docview.wss?uid=ibm10746935)

- #### linux命令

  ```
  jobs -l
  ```

------



### 2019.07.28

- ### mac安装conda后去掉前面的(base)

  mac安装了conda后，前面会有一个(base)，很烦人，终于找到最佳解决方案了：

  ```
  $ conda config --set auto_activate_base false
  ```

  原因：

  安装conda后，每次启动终端，都会自动启动conda的base环境，conda的环境可以用 `conda env list` 查看

  只要设置conda不要自动启动base环境就可以了。

  作者：水木青枫 
  来源：CSDN 
  原文：https://blog.csdn.net/u010666669/article/details/90085125 
  版权声明：本文为博主原创文章，转载请附上博文链接！

------



### 2019.07.27

- #### 学习[R Markdown](https://rmarkdown.rstudio.com/)的使用

------



### 2019.07.26

- #### Sublime Text进入插件管理快捷键

  ```
  shift+command+P
  ```
  
  

------



### 2019.07.26之前

- #### vim临时设置

  ```
  set nu/set number
  set nonu
  set hlsearch
  set nohl
  set ts=4
  ```

- #### mac移动文件夹

  【cmmand+c】，然后在要移动到目标目录点击一下，然后按【option+cmmand+v】即可移动文件。

- #### mac查看文件编码

  vim命令行下：set

- #### nohup提交后台任务

  **覆盖到output**

  ```
  nohup ./start-dishi.sh >output 2>&1 &
  ```

  **追加到output**

  ```
  nohup ./start-dishi.sh >>output 2>&1 &
  ```

  

- #### 删除PcircRNA_finder不重要的文件

  ```
  shopt -s extglob
  rm -rf !(*.sh|nohup.out|results)   #除了括号内的都删除
  shopt -u extglob
  ```

  

  ```
  rm -rf `ls | grep -v results`
  rm -rf `ls | grep  '_'
  ```

  

  ```
  cut -f 1,2,4 01471-2229-12-146-S2.fasta | perl -ne 'chomp;@info=split/\s+/,$_;print ">$info[0]-$info[2]\n$info[1]\n";' > 1471-2229-12-146-S2.fasta
  ```

  

- #### ps的简单应用

  ```
  ps -lu why
  ps -f pxxxxx
  ps -f -w -w pxxxx
  
  pmap -d 2889
  pstree
  pstree -p
  
  kill -9 pid
  ```

  

- #### 查看当前文件夹存储使用情况

  ```
  du -sh
  ```

  

- #### NCBI ftp站点

  http://www.ncbi.nlm.nih.gov/projects/faspftp/

  https://ftp-trace.ncbi.nlm.nih.gov/

- #### 提取SRR accession

  ```
  ls *.sra | perl -ne 'chomp;if(/\.sra/){print "$` ";}'
  实例：vim中读取shell命令行下的输出
  :read ! ls ./input/ | perl -ne 'chomp;if(/\.sra/){print "$` ";}'
  ```

  

- #### 删除文档的第一行

  ```
  sed -i '1d' <file>
  ```

- #### 删除第一行到第n行

  ```
  sed -i '1,nd' filename
  ```

- #### shell给一个文件中的每一行结尾插入字符的方法

  ```
  awk '{print $0"X"}' fileName
  ```

  ```
  awk '{print $0"\tleaves"}' test | less
  cat test | awk '{print $0"\tleaves"}' | less
  ```

  

- #### linux把文件中某几列相同的行输出：

  **1、2、3相同**

  ```
  awk 'pass==1 { count[$1,$2,$3]++ } pass==2 { if(count[$1,$2,$3]>1) print }'  pass=1 test.txt  pass=2 test.txt
  ```

  **3、4、5列相同**

  ```
  awk 'pass==1 { count[$3,$4,$5]++ } pass==2 { if(count[$3,$4,$5]>1) print }'  pass=1 test.txt  pass=2 test.txt
  ```





无法解决的问题
实验室的ip被屏蔽了
ssh_exchange_identification: read: Connection reset by peer
ssh_exchange_identification: Connection closed by remote host

定时命令
crontab

