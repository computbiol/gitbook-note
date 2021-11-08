# 20200815

mac下批量替换文件中的字符串

不备份替换

```
grep "DE_analysis_v2" * -R | awk -F: '{print $1}' | sort | uniq | xargs sed -i "" 's/DE_analysis_v2/DE_analysis_v3/g'
```

备份后替换

```
grep "DE_analysis_v2" * -R | awk -F: '{print $1}' | sort | uniq | xargs sed -i "bak" 's/DE_analysis_v2/DE_analysis_v3/g'20200815
```



# 20200719

Ubuntu Server如何开启热点
Ubuntu Server 18 Wifi Hotspot setup
https://raspberrypi.stackexchange.com/questions/109425/ubuntu-server-18-wifi-hotspot-setup
ubuntu18.04 配置桥接开启AP热点
https://www.jianshu.com/p/06ef3610c2f9
https://github.com/oblique/create_ap

# 20200525

excel转csv

```shell
brew install gnumeric
ssconvert myexcel.xlsx myexcel.csv
```

ubuntu安装pandoc相关的依赖
```
sudo apt-get install texlive-full
pandoc test.html -o test.pdf

```




# 20200416

mac安装cadaver

http://www.webdav.org/cadaver/

```
brew install cadaver
```



# 20200308

mac充电问题一般如何解决
>参考：
>如何重置 Mac 的 SMC
>https://support.apple.com/zh-cn/HT201295

# 20200306

清空file文件

```
cat /dev/null > file
```

Google搜索技巧

https://www.jianshu.com/p/badee8f043e5



# 20200226

Sublime Text3如何配置Python交互式命令行？

https://blog.csdn.net/didi_ya/article/details/104165280

jupyter由于无法import新包的解决方案

https://blog.csdn.net/u012491646/article/details/79688979

# 20200222

工具使用原则：

能用系统级的就不要另外下载安装。

追求极致的自由的稳定。



Jupyter NoteBook 的快捷键使用指南

https://opus.konghy.cn/ipynb/jupyter-notebook-keyboard-shortcut.html



# 20200221

静态博客Gridea

https://cclog.net/post/recommend-gridea/

静态站点Docsite

https://docsite.js.org/en-us/docs/installation.html

> 不过还是不够自由，也不够成熟，暂时不玩，以后再说吧。



日历

方式一：通过邮箱自动订阅推送

首先注册一个outlook邮箱

mac或ios的日历打开需要共享的日历

然后在outlook邮箱里订阅mac或ios的日历

> 这个过程可能很慢。
>
> 此更新可能需要超过 24 小时才能完成，但大约每 3 个小时进行一次更新。
>
> [https://support.office.com/zh-cn/article/%E5%9C%A8-outlook-com-%E4%B8%AD%E5%AF%BC%E5%85%A5%E6%88%96%E8%AE%A2%E9%98%85%E6%97%A5%E5%8E%86-cff1429c-5af6-41ec-a5b4-74f2c278e98c](https://support.office.com/zh-cn/article/在-outlook-com-中导入或订阅日历-cff1429c-5af6-41ec-a5b4-74f2c278e98c)

安卓手机端选择Exchange登陆outlook邮箱

outlook日历自动推送到手机日历

> 这个过程很快，几乎实时。

以小米手机为例



方式二：手动导入

安卓iCal Import/Export工具

> 不推荐手动导入，除非是一次性的，否则后面对日历编辑后不能自动同步更新。



小技巧：

如何管理和删除MIUI系统里的日历账户？

使用iCal Import/Export应用的编辑日历功能。

mac上的日历如何同步到outlook？

同步工具**SyncMate**（这个工具功能强大）。



参考：

iCal 课表使用指引

[https://i.scnu.edu.cn/ical/doc#macOS_%E4%B8%8B%E7%9A%84%E5%AF%BC%E5%85%A5](https://i.scnu.edu.cn/ical/doc#macOS_下的导入)

How to sync Outlook Calendar with Mac

https://www.sync-mac.com/sync-outlook-calendar-mac.html





# Wed Feb 12 22:36:57 CST 2020

静态开源站点搭建工具 Docsite

https://docsite.js.org/en-us/docs/installation.html

VIM编辑代码时的一些技巧——格式化与注释

https://blog.csdn.net/mzlogin/article/details/5413878

【R语言数据导出txt】 write.table 函数用法

https://blog.csdn.net/u013421629/article/details/72771241

# Tue Feb 11 22:44:46 CST 2020

Multiple SequenceServer instances

https://medium.com/coding-design/setting-up-sequenceserver-edf9d992998c



# Mon Feb 10 15:14:07 CST 2020

```
date | pbcopy
```

Pubmed Parser: A Python Parser for PubMed Open-Access XML Subset and MEDLINE XML Dataset

https://titipata.github.io/pubmed_parser/index.html

https://github.com/titipata/pubmed_parser



Python + 生物信息 04 ：批量下载基因与文献

https://zhuanlan.zhihu.com/p/54611852



微信搜索

生信菜鸟团

我的Python笔记·BioPython（一）

我的Python笔记·BioPython（二）



科研汪逆袭技能必备！用Python批量下载文献摘要并生成“高逼格”词云



R语言 | PubMed可以这样玩



批量获取 PubMed 文献信息



# 2020.02.04

创建软链接

ln  -s  [源文件或目录]  [目标文件或目录]

例如：

当前路径创建test 引向/var/www/test 文件夹 

ln –s  /var/www/test  test

删除软链接

和删除普通的文件是一眼的，删除都是使用rm来进行操作

 rm –rf 软链接名称（**请注意不要在后面加”/”，rm –rf 后面加不加”/” 有区别，如果加"/"则会将原文件夹一并删掉**）

例如：

只删除软链接test

rm –rf test

软链接和指向的原文件夹一并被删除

rm –rf test/

# 2020.02.03

### mac内网穿透

https://ngrok.com/





# 2020.02.02

### virtualenv创建一套“隔离”的Python运行环境

virtualenv的介绍及基本使用（所有命令解释）

https://blog.csdn.net/u012206617/article/details/90294421

virtualenv

https://www.liaoxuefeng.com/wiki/1016959663602400/1019273143120480



### 远程连接自己阿里云MySQL

```
mysql -u root -p  -h 139.196.95.208 -P 3306
```



# 2020.01.01

指定应用打开文件

```
sudo open -a /Applications/IINA.app /Users/zhangsf/Movies/favorite.mp4
```



# 2020.01.12

## 解决从google drive下载大文件不能断点续传问

利用MultCloud下载



## UBuntu国内镜像地址下载

http://www.oschina.net/p/ubuntu

http://releases.ubuntu.com/

http://mirrors.163.com/ubuntu-releases/14.04/

## Universal USB Installer制作启动U盘

https://universal-usb-installer.en.softonic.com/



sudo curl ipinfo.io

sudo curl ifconfig.me



利用ssh反向代理和autossh实现从外网连接内网服务器

https://blog.csdn.net/u012843189/article/details/79522738



Linux系统扩展硬盘空间

https://www.jianshu.com/p/ba7090b1ef38

吸取教训：新的硬盘空间一定不能挂载在/home/moonswing，否则导致无法登陆图形界面

timeout in locking authority file /home/pi/.xauthority



# 2019.12.05

## Git配置用户名和邮箱

### 全局设置（对所有git工程都有效）

> 设置用户名：git config --global user.name 用户名
> 设置邮箱： git config --global user.email 邮箱

### 对特定工程设置（要在命令行中切换到特定工程目录下执行）

> 设置用户名：git config user.name 用户名
>
> 设置邮箱： git config user.email 邮箱

# 2019.12.01

## 今日诗词

https://www.jinrishici.com/

## 命令行下载工具wget/curl/axel/aria2c

```
$ time axel -n 50 ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz
real	6m10.823s
user	0m3.224s
sys	0m8.276s
```



```
$ wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz
real	0m59.839s
user	0m0.521s
sys	0m2.396s
```



```
$ time aria2c ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz
real	1m16.054s
user	0m0.959s
sys	0m1.590s
```

youtube-dl下载YouTube视频

```
youtube-dl -f best https://www.youtube.com/watch?v=cVe2hJI-K8k
```

you-get
```
you-get -o ~/Desktop/ -O Introduction_to_BioCyc 'https://www.youtube.com/watch?v=b5hVf8bBSe4&feature=emb_logo'
```



# 2019.11.29

## split分割文件

```shell
split -l 193 gwas_downloads.sh -d -a 4 gwas_downloads_ && ls | grep 'gwas_downloads_' | xargs -n1 -i{} mv {} {}.sh
```

https://blog.csdn.net/pzasdq/article/details/52830098

https://blog.csdn.net/mxgsgtc/article/details/12048919

## shell中执行sudo命令

```shell
echo "passwd"|sudo -S command
```



# 2019.10.24

能够提前做的事情为什么不准备好呢？？？



# 2019.10.08

## python安装cplex

> cplex目前只支持python3.6

```
conda activate operations-research
```

operations-research环境里安装了python3.6





# 2019.10.05

> 程序员怎样记账 
>
> https://zhuanlan.zhihu.com/p/71639319
>
> ledger
>
> https://www.ledger-cli.org/
>
> hledger 
>
> https://hledger.org/
>
> 使用emcas+ledger记账
>
> [https://flysands.github.io/blog/2017-12-27-%E4%BD%BF%E7%94%A8emacs%E5%92%8Cledger%E8%AE%B0%E8%B4%A6.html](https://flysands.github.io/blog/2017-12-27-使用emacs和ledger记账.html)
>
> Ledger CLI
>
> https://tengl.net/blog/2019/5/23/double-entry-accounting-with-ledger-cli
>
> 钱都到哪儿去了 - 使用 BEANCOUNT 自动记账
>
>  https://lyric.im/beancount

# 2019.10.02
## ffmpeg命令

用于音视频的转码，加水印，去水印，视频剪切，提取音频，提取视频，码率控制等等功能。
例如：提取视频的音频

```shell
ffmpeg -i bb.flv bb.mp3
```
# 2019.09.08

wget下载时自动修改成真实的文件名

```shell
wget --content-disposition
```

wget指定下载目录

```
wget 网址 -P/--directory 目录
```



# 2019.09.05

##如何理解递归

> https://blog.csdn.net/weixin_43405546/article/details/83045725
> 


# 2019.09.03

## 矩阵

理解矩阵（一）

https://blog.csdn.net/myan/article/details/647511

理解矩阵（二）

https://blog.csdn.net/myan/article/details/649018

理解矩阵（三）

https://blog.csdn.net/myan/article/details/1865397

# 2019.08.16

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
$ git init --bare note.git
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



# 2019.08.15

[sno-lncRNA的研究历程](https://zhuanlan.zhihu.com/p/27066364)

------



# 2019.08.14

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



# 2019.08.13

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



# 2019.08.12

- #### npm

  - [npm 是干什么的？（非教程）](https://zhuanlan.zhihu.com/p/24357770)
  - [mac上安装npm](https://www.jianshu.com/p/39b4339a9b60)
  - [Node.js之rollbackFailedOptional错误处理](https://www.jianshu.com/p/37b9322d6ceb)
  - [npm 安装的时候出现rollbackFailedOptional](https://www.jianshu.com/p/4a0c514d2c05)

# 2019.08.11

- GitHub Pages搭建网站: https://gitbeijing.com/pages.html
- 《搬进 GitHub》：https://gitbeijing.com/
- 免费数学神器Mathpix：https://mathpix.com/

------



# 2019.08.10

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



# 2019.08.07

- #### [提问的智慧](http://doc.zengrong.net/smart-questions/cn.html)

- #### 高通量数据量的计算

  一般国内的测序公司计算数据量时使用两套标准：碱基数（base，通常以**G**为单位）和序列数（reads，通常以**M**为单位）。换算也很简单，序列数×序列读长=碱基数（举个例子，我做了20M reads的转录组测序，序列读长是双端150bp，那么碱基数就约等于2×150×20M=6G）。

------



# 2019.08.06

- #### [Nucleic Acids Research Database Summary](http://www.oxfordjournals.org/our_journals/nar/database/c/)

------



# 2019.08.02

- #### xargs命令

  ```
  ls *.csv | xargs ls -l
  ```

# 2019.08.01

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



# 2019.07.31

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



# 2019.07.28

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



# 2019.07.27

- #### 学习[R Markdown](https://rmarkdown.rstudio.com/)的使用

------



# 2019.07.26

- #### Sublime Text进入插件管理快捷键

  ```
  shift+command+P
  ```
  
  

------



# 2019.07.26之前

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

