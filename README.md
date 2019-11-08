Welcome to TFS! 
---------------
TFS is a distributed file system developed by Taobao.com.

Overview
--------
Aiming at a distributed file system with high availability, high performance and low cost, TFS is a linux-based file system which provides high reliability and concurrent access by redundancy, backup and load balance technology.
TFS is mainly designed for small files less than 1MB in size. It adopts flat structure instead of the traditional directory structure. TFS will generate a 18 byte length filename after storing data uploaded by users. Users can access their data by the uniqle filename.

由于阿里官方不再维护该项目，对新版gcc兼容问题较大。
因此本Repo准备继续该项目的开发，解决相关问题。

目前，本项目已在CentOS7和Ubuntu 18.04下编译通过。

Documents
---------
### [Install](https://github.com/yage99/tfs/blob/master/INSTALL.md)
### [Deploy](https://github.com/yage99/tfs/blob/master/DEPLOY.md)

Licence
-------
GNU General Public License v2

Contribution
------------
This project is still in development stage, many bugs are not fixed or found yet. feel free to submit bugs if you find them. If you have any question or feedback, please contact and join us, we appreciate your kindly contribution.
