安装依赖的软件包
----------------

*   automake TFS基于automake工具构建 
    *   [下载源码安装][1] 
    *   apt-get install automake
    *   yum install automake.noarch
*   libtool automake需要使用libtool 
    *   [下载源码安装][2]
    *   apt-get install libtool
    *   yum install libtool.x86_64
*   realine 用于命令行编辑的库 
    *   [下载源码安装][3]
    *   apt-get install libreadline-dev
    *   yum install readline-devel.x86_64
*   libz-devel 用于数据压缩/解压缩 
    *   [下载源码安装][4]
    *   apt-get install zlib1g-dev
    *   yum install zlib-devel.x86_64
*   uuid-devel 用于生成全局唯一ID 
    *   [下载源码安装][5]
    *   apt-get install uuid-dev
    *   yum install libuuid-devel
*   tcmalloc google的内存管理库 
    *   [下载源码安装][6]
    *   apt-get install libgoogle-perftools-dev
    *   yum install gperftools.x86_64
*   zlib
    *   yum install zlib-devel

安装TFS
-------

tb-common-utils has been integrated.

TFS开源用户大都只使用TFS的基本功能，所以这个版本我们默认只编译TFS的nameserver，dataserver，client和tool，以去除对mysql的依赖，需要使用到rcserver（全局资源管理服务），metaserver(TFS自定义文件名服务）的用户请自行编译安装这两个服务。

下载源码

    # git clone https://github.com/yage99/tfs.git
    

编译安装

    # cd tfs
    # sh build.sh init
    # ./configure --prefix=path_to_tfs --with-release
    # make
    # make install
    

*   --prefix 指定tfs安装路径，默认会被安装到~/tfs_bin目录
*   --with-release 指定按release版本的参数进行编译，如果不指定这个参数，则会按开发版本比较严格的参数编译，包含-Werror参数，所有的警告都会被当错误，在高版本gcc下会导致项目编译不过，很多开源用户反馈的编译问题都跟这个有关，因为gcc高版本对代码的检查越来越严格，~~淘宝内部使用的gcc版本是gcc-4.1.2~~ My version has been tested in gcc-4.9.x/gcc-5.3.x。

至此，TFS已经安装成功了，你可以开始[部署TFS服务][7]。

编译FAQ
-------

    Q: 使用TFS一定需要64bit Liunx？
    A: 是的，否则整个项目不能正常编译通过。
    
    Q: 编译过程中出现类似警告：格式 ‘%lu’ 需要类型 ‘long unsigned int’，但实参 3 的类型为 ‘size_t’ ？
    A: 你的机器使用的应该是32bit OS，如果你坚持要编译，可以自行修改代码或者直接忽略这些警告。
    
    Q: 执行./configure时，提示configure: error: readline header files not found, --disable-readline or install gnu readline library?
    A: 你需要安装readline库，或在configure时加上--disable-readline参数，不使用readline库。
    
    Q: 执行./configure时，提示configure: error: tcmalloc link failed (--without-tcmalloc to disable)？
    A: 你需要安装tcmalloc库, 或在configure时加上--without-tcmalloc参数，不使用tcmalloc库。
    
    Q: 编译过程中出现大量的错误信息，类似于warnings being treated as error？
    A: 请确认在./configure的时候是否加了--with-release参数。
    
    Q: 编译过程中提示类似client_request_server.cpp:722:38: error: no matching function for call to ‘atomic_inc(volatile uint64_t*)’的错误信息？
    A: 你的系统时32位的，请在64bit Linux编译安装TFS；因为32bit系统不支持对64bit整数的原子操作。
    
    Q: 编译时遇到session_util.cpp:2:23: fatal error: uuid/uuid.h: No such file or directory？
    A: 你需要先安装uuid库, 用于生成全局唯一ID, uuid库是e2fsprogs包工具的一部分；
    
    Q: 编译时提示tfs_meta_helper.cpp:15:18: fatal error: zlib.h: No such file or directory？
    A: 你需要先安装zlib,用于压缩/解压缩。
    

 [1]: http://www.gnu.org/software/automake/#downloading
 [2]: http://www.gnu.org/software/libtool/
 [3]: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html#Availability
 [4]: http://zlib.net/
 [5]: http://sourceforge.net/projects/e2fsprogs/
 [6]: http://code.google.com/p/gperftools/downloads/list
 [7]: https://github.com/yage99/tfs/blob/master/DEPLOY.md
