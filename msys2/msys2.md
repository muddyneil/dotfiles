# msys2 安装Clang

之前想在命令行中使用Clang，奈何问题频出，尤其是头文件缺失的问题，在网上看了许多帖子无济于事，最后通过别的帖子了解到`msys2`可以方便的安装Clang，这里再重新分享一下。

官网： `https://www.msys2.org`

安装：msys2默认安装在C盘。

msys2的配置，添加安装源。

`etc\pacman.conf` 文件添加如下内容，和`pacman.d` 下的文件对应：

```ini
[mingw32]
Include = /etc/pacman.d/mirrorlist.mingw32

[mingw64]
Include = /etc/pacman.d/mirrorlist.mingw64

[ucrt64]
Include = /etc/pacman.d/mirrorlist.ucrt64

[clang32]
Include = /etc/pacman.d/mirrorlist.clang32

[clang64]
Include = /etc/pacman.d/mirrorlist.clang64

[msys]
Include = /etc/pacman.d/mirrorlist.msys
```

`C:\msys64\etc\pacman.d` 目录下各文件添加源：

`mirrorlist.clang32`

```ini
# See https://www.msys2.org/dev/mirrors

## Primary
#Server = https://mirror.msys2.org/mingw/clang32/
#Server = https://repo.msys2.org/mingw/clang32/

## Tier 1
Server = https://mirrors.cloud.tencent.com/msys2/mingw/clang32/
Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/clang32/
Server = https://mirrors.ustc.edu.cn/msys2/mingw/clang32/
Server = https://mirror.nju.edu.cn/msys2/mingw/clang32/
Server = https://mirrors.bfsu.edu.cn/msys2/mingw/clang32/
Server = https://mirrors.hit.edu.cn/msys2/mingw/clang32/

#Server = https://mirror.umd.edu/msys2/mingw/clang32/
#Server = https://mirror.yandex.ru/mirrors/msys2/mingw/clang32/
#Server = https://download.nus.edu.sg/mirror/msys2/mingw/clang32/
#Server = https://ftp.acc.umu.se/mirror/msys2.org/mingw/clang32/
#Server = https://ftp.nluug.nl/pub/os/windows/msys2/builds/mingw/clang32/
#Server = https://ftp.osuosl.org/pub/msys2/mingw/clang32/
#Server = https://mirror.internet.asn.au/pub/msys2/mingw/clang32/
#Server = https://mirror.selfnet.de/msys2/mingw/clang32/
#Server = https://mirror.ufro.cl/msys2/mingw/clang32/
#Server = https://mirrors.dotsrc.org/msys2/mingw/clang32/
#Server = https://repo.extreme-ix.org/msys2/mingw/clang32/

## Tier 2
#Server = https://mirror.clarkson.edu/msys2/mingw/clang32/
#Server = https://fastmirror.pp.ua/msys2/mingw/clang32/
#Server = https://ftp.cc.uoc.gr/mirrors/msys2/mingw/clang32/
#Server = https://mirror.jmu.edu/pub/msys2/mingw/clang32/
#Server = https://mirrors.piconets.webwerks.in/msys2-mirror/mingw/clang32/
#Server = https://quantum-mirror.hu/mirrors/pub/msys2/mingw/clang32/
#Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/clang32/
#Server = https://repo.casualgamer.ca/mingw/clang32/

Server = https://mirrors.aliyun.com/msys2/mingw/clang32/
Server = https://mirror.iscas.ac.cn/msys2/mingw/clang32/
Server = https://mirrors.sjtug.sjtu.edu.cn/msys2/mingw/clang32/
Server = https://mirrors.bit.edu.cn/msys2/mingw/clang32/

```

`mirrorlist.clang64`

```ini
# See https://www.msys2.org/dev/mirrors

## Primary
#Server = https://mirror.msys2.org/mingw/clang64/
#Server = https://repo.msys2.org/mingw/clang64/

## Tier 1
Server = https://mirrors.cloud.tencent.com/msys2/mingw/clang64/
Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/clang64/
Server = https://mirrors.ustc.edu.cn/msys2/mingw/clang64/
Server = https://mirror.nju.edu.cn/msys2/mingw/clang64/
Server = https://mirrors.bfsu.edu.cn/msys2/mingw/clang64/
Server = https://mirrors.hit.edu.cn/msys2/mingw/clang64/

#Server = https://mirror.umd.edu/msys2/mingw/clang64/
#Server = https://mirror.yandex.ru/mirrors/msys2/mingw/clang64/
#Server = https://download.nus.edu.sg/mirror/msys2/mingw/clang64/
#Server = https://ftp.acc.umu.se/mirror/msys2.org/mingw/clang64/
#Server = https://ftp.nluug.nl/pub/os/windows/msys2/builds/mingw/clang64/
#Server = https://ftp.osuosl.org/pub/msys2/mingw/clang64/
#Server = https://mirror.internet.asn.au/pub/msys2/mingw/clang64/
#Server = https://mirror.selfnet.de/msys2/mingw/clang64/
#Server = https://mirror.ufro.cl/msys2/mingw/clang64/
#Server = https://mirrors.dotsrc.org/msys2/mingw/clang64/
#Server = https://repo.extreme-ix.org/msys2/mingw/clang64/

## Tier 2
#Server = https://mirror.clarkson.edu/msys2/mingw/clang64/
#Server = https://fastmirror.pp.ua/msys2/mingw/clang64/
#Server = https://ftp.cc.uoc.gr/mirrors/msys2/mingw/clang64/
#Server = https://mirror.jmu.edu/pub/msys2/mingw/clang64/
#Server = https://mirrors.piconets.webwerks.in/msys2-mirror/mingw/clang64/
#Server = https://quantum-mirror.hu/mirrors/pub/msys2/mingw/clang64/
#Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/clang64/
#Server = https://repo.casualgamer.ca/mingw/clang64/

Server = https://mirrors.aliyun.com/msys2/mingw/clang64/
Server = https://mirror.iscas.ac.cn/msys2/mingw/clang64/
Server = https://mirrors.sjtug.sjtu.edu.cn/msys2/mingw/clang64/
Server = https://mirrors.bit.edu.cn/msys2/mingw/clang64/

```

`mirrorlist.mingw32`

```ini
# See https://www.msys2.org/dev/mirrors

## Primary
#Server = https://mirror.msys2.org/mingw/i686/
#Server = https://repo.msys2.org/mingw/i686/

## Tier 1
Server = https://mirrors.cloud.tencent.com/msys2/mingw/i686/
Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/i686/
Server = https://mirrors.ustc.edu.cn/msys2/mingw/i686/
Server = https://mirror.nju.edu.cn/msys2/mingw/i686/
Server = https://mirrors.bfsu.edu.cn/msys2/mingw/i686/
Server = https://mirrors.hit.edu.cn/msys2/mingw/i686/

#Server = https://mirror.umd.edu/msys2/mingw/i686/
#Server = https://mirror.yandex.ru/mirrors/msys2/mingw/i686/
#Server = https://download.nus.edu.sg/mirror/msys2/mingw/i686/
#Server = https://ftp.acc.umu.se/mirror/msys2.org/mingw/i686/
#Server = https://ftp.nluug.nl/pub/os/windows/msys2/builds/mingw/i686/
#Server = https://ftp.osuosl.org/pub/msys2/mingw/i686/
#Server = https://mirror.internet.asn.au/pub/msys2/mingw/i686/
#Server = https://mirror.selfnet.de/msys2/mingw/i686/
#Server = https://mirror.ufro.cl/msys2/mingw/i686/
#Server = https://mirrors.dotsrc.org/msys2/mingw/i686/
#Server = https://repo.extreme-ix.org/msys2/mingw/i686/

## Tier 2
#Server = https://mirror.clarkson.edu/msys2/mingw/i686/
#Server = https://fastmirror.pp.ua/msys2/mingw/i686/
#Server = https://ftp.cc.uoc.gr/mirrors/msys2/mingw/i686/
#Server = https://mirror.jmu.edu/pub/msys2/mingw/i686/
#Server = https://mirrors.piconets.webwerks.in/msys2-mirror/mingw/i686/
#Server = https://quantum-mirror.hu/mirrors/pub/msys2/mingw/i686/
#Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/i686/
#Server = https://repo.casualgamer.ca/mingw/i686/

Server = https://mirrors.aliyun.com/msys2/mingw/i686/
Server = https://mirror.iscas.ac.cn/msys2/mingw/i686/
Server = https://mirrors.sjtug.sjtu.edu.cn/msys2/mingw/i686/
Server = https://mirrors.bit.edu.cn/msys2/mingw/i686/

```

`mirrorlist.mingw64`

```ini
# See https://www.msys2.org/dev/mirrors

## Primary
#Server = https://mirror.msys2.org/mingw/x86_64/
#Server = https://repo.msys2.org/mingw/x86_64/

## Tier 1
Server = https://mirrors.cloud.tencent.com/msys2/mingw/x86_64/
Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/x86_64/
Server = https://mirrors.ustc.edu.cn/msys2/mingw/x86_64/
Server = https://mirror.nju.edu.cn/msys2/mingw/x86_64/
Server = https://mirrors.bfsu.edu.cn/msys2/mingw/x86_64/
Server = https://mirrors.hit.edu.cn/msys2/mingw/x86_64/

#Server = https://mirror.umd.edu/msys2/mingw/x86_64/
#Server = https://mirror.yandex.ru/mirrors/msys2/mingw/x86_64/
#Server = https://download.nus.edu.sg/mirror/msys2/mingw/x86_64/
#Server = https://ftp.acc.umu.se/mirror/msys2.org/mingw/x86_64/
#Server = https://ftp.nluug.nl/pub/os/windows/msys2/builds/mingw/x86_64/
#Server = https://ftp.osuosl.org/pub/msys2/mingw/x86_64/
#Server = https://mirror.internet.asn.au/pub/msys2/mingw/x86_64/
#Server = https://mirror.selfnet.de/msys2/mingw/x86_64/
#Server = https://mirror.ufro.cl/msys2/mingw/x86_64/
#Server = https://mirrors.dotsrc.org/msys2/mingw/x86_64/
#Server = https://repo.extreme-ix.org/msys2/mingw/x86_64/

## Tier 2
#Server = https://mirror.clarkson.edu/msys2/mingw/x86_64/
#Server = https://fastmirror.pp.ua/msys2/mingw/x86_64/
#Server = https://ftp.cc.uoc.gr/mirrors/msys2/mingw/x86_64/
#Server = https://mirror.jmu.edu/pub/msys2/mingw/x86_64/
#Server = https://mirrors.piconets.webwerks.in/msys2-mirror/mingw/x86_64/
#Server = https://quantum-mirror.hu/mirrors/pub/msys2/mingw/x86_64/
#Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/x86_64/
#Server = https://repo.casualgamer.ca/mingw/x86_64/

Server = https://mirrors.aliyun.com/msys2/mingw/x86_64/
Server = https://mirror.iscas.ac.cn/msys2/mingw/x86_64/
Server = https://mirrors.sjtug.sjtu.edu.cn/msys2/mingw/x86_64/
Server = https://mirrors.bit.edu.cn/msys2/mingw/x86_64/

```

`mirrorlist.msys`

```ini
# See https://www.msys2.org/dev/mirrors

## Primary
#Server = https://mirror.msys2.org/msys/$arch/
#Server = https://repo.msys2.org/msys/$arch/

## Tier 1
Server = https://mirrors.cloud.tencent.com/msys2/msys/$arch/
Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/msys/$arch/
Server = https://mirrors.ustc.edu.cn/msys2/msys/$arch/
Server = https://mirror.nju.edu.cn/msys2/msys/$arch/
Server = https://mirrors.bfsu.edu.cn/msys2/msys/$arch/
Server = https://mirrors.hit.edu.cn/msys2/msys/$arch/

#Server = https://mirror.umd.edu/msys2/msys/$arch/
#Server = https://mirror.yandex.ru/mirrors/msys2/msys/$arch/
#Server = https://download.nus.edu.sg/mirror/msys2/msys/$arch/
#Server = https://ftp.acc.umu.se/mirror/msys2.org/msys/$arch/
#Server = https://ftp.nluug.nl/pub/os/windows/msys2/builds/msys/$arch/
#Server = https://ftp.osuosl.org/pub/msys2/msys/$arch/
#Server = https://mirror.internet.asn.au/pub/msys2/msys/$arch/
#Server = https://mirror.selfnet.de/msys2/msys/$arch/
#Server = https://mirror.ufro.cl/msys2/msys/$arch/
#Server = https://mirrors.dotsrc.org/msys2/msys/$arch/
#Server = https://repo.extreme-ix.org/msys2/msys/$arch/

## Tier 2
#Server = https://mirror.clarkson.edu/msys2/msys/$arch/
#Server = https://fastmirror.pp.ua/msys2/msys/$arch/
#Server = https://ftp.cc.uoc.gr/mirrors/msys2/msys/$arch/
#Server = https://mirror.jmu.edu/pub/msys2/msys/$arch/
#Server = https://mirrors.piconets.webwerks.in/msys2-mirror/msys/$arch/
#Server = https://quantum-mirror.hu/mirrors/pub/msys2/msys/$arch/
#Server = https://www2.futureware.at/~nickoe/msys2-mirror/msys/$arch/
#Server = https://repo.casualgamer.ca/msys/$arch/

Server = https://mirrors.aliyun.com/msys2/msys/$arch/
Server = https://mirror.iscas.ac.cn/msys2/msys/$arch/
Server = https://mirrors.sjtug.sjtu.edu.cn/msys2/msys/$arch/
Server = https://mirrors.bit.edu.cn/msys2/msys/$arch/

```

`mirrorlist.mingw`

```ini
# See https://www.msys2.org/dev/mirrors

## Primary
#Server = https://mirror.msys2.org/mingw/$repo/
#Server = https://repo.msys2.org/mingw/$repo/

## Tier 1
Server = https://mirrors.cloud.tencent.com/msys2/mingw/$repo/
Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/$repo/
Server = https://mirrors.ustc.edu.cn/msys2/mingw/$repo/
Server = https://mirror.nju.edu.cn/msys2/mingw/$repo/
Server = https://mirrors.bfsu.edu.cn/msys2/mingw/$repo/
Server = https://mirrors.hit.edu.cn/msys2/mingw/$repo/

#Server = https://mirror.umd.edu/msys2/mingw/$repo/
#Server = https://mirror.yandex.ru/mirrors/msys2/mingw/$repo/
#Server = https://download.nus.edu.sg/mirror/msys2/mingw/$repo/
#Server = https://ftp.acc.umu.se/mirror/msys2.org/mingw/$repo/
#Server = https://ftp.nluug.nl/pub/os/windows/msys2/builds/mingw/$repo/
#Server = https://ftp.osuosl.org/pub/msys2/mingw/$repo/
#Server = https://mirror.internet.asn.au/pub/msys2/mingw/$repo/
#Server = https://mirror.selfnet.de/msys2/mingw/$repo/
#Server = https://mirror.ufro.cl/msys2/mingw/$repo/
#Server = https://mirrors.dotsrc.org/msys2/mingw/$repo/
#Server = https://repo.extreme-ix.org/msys2/mingw/$repo/

## Tier 2
#Server = https://mirror.clarkson.edu/msys2/mingw/$repo/
#Server = https://fastmirror.pp.ua/msys2/mingw/$repo/
#Server = https://ftp.cc.uoc.gr/mirrors/msys2/mingw/$repo/
#Server = https://mirror.jmu.edu/pub/msys2/mingw/$repo/
#Server = https://mirrors.piconets.webwerks.in/msys2-mirror/mingw/$repo/
#Server = https://quantum-mirror.hu/mirrors/pub/msys2/mingw/$repo/
#Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/$repo/
#Server = https://repo.casualgamer.ca/mingw/$repo/

Server = https://mirrors.aliyun.com/msys2/mingw/$repo/
Server = https://mirror.iscas.ac.cn/msys2/mingw/$repo/
Server = https://mirrors.sjtug.sjtu.edu.cn/msys2/mingw/$repo/
Server = https://mirrors.bit.edu.cn/msys2/mingw/$repo/

```

`mirrorlist.ucrt64`

```ini
# See https://www.msys2.org/dev/mirrors

## Primary
#Server = https://mirror.msys2.org/mingw/ucrt64/
#Server = https://repo.msys2.org/mingw/ucrt64/

## Tier 1
Server = https://mirrors.cloud.tencent.com/msys2/mingw/ucrt64/
Server = https://mirrors.tuna.tsinghua.edu.cn/msys2/mingw/ucrt64/
Server = https://mirrors.ustc.edu.cn/msys2/mingw/ucrt64/
Server = https://mirror.nju.edu.cn/msys2/mingw/ucrt64/
Server = https://mirrors.bfsu.edu.cn/msys2/mingw/ucrt64/
Server = https://mirrors.hit.edu.cn/msys2/mingw/ucrt64/

#Server = https://mirror.umd.edu/msys2/mingw/ucrt64/
#Server = https://mirror.yandex.ru/mirrors/msys2/mingw/ucrt64/
#Server = https://download.nus.edu.sg/mirror/msys2/mingw/ucrt64/
#Server = https://ftp.acc.umu.se/mirror/msys2.org/mingw/ucrt64/
#Server = https://ftp.nluug.nl/pub/os/windows/msys2/builds/mingw/ucrt64/
#Server = https://ftp.osuosl.org/pub/msys2/mingw/ucrt64/
#Server = https://mirror.internet.asn.au/pub/msys2/mingw/ucrt64/
#Server = https://mirror.selfnet.de/msys2/mingw/ucrt64/
#Server = https://mirror.ufro.cl/msys2/mingw/ucrt64/
#Server = https://mirrors.dotsrc.org/msys2/mingw/ucrt64/
#Server = https://repo.extreme-ix.org/msys2/mingw/ucrt64/

## Tier 2
#Server = https://mirror.clarkson.edu/msys2/mingw/ucrt64/
#Server = https://fastmirror.pp.ua/msys2/mingw/ucrt64/
#Server = https://ftp.cc.uoc.gr/mirrors/msys2/mingw/ucrt64/
#Server = https://mirror.jmu.edu/pub/msys2/mingw/ucrt64/
#Server = https://mirrors.piconets.webwerks.in/msys2-mirror/mingw/ucrt64/
#Server = https://quantum-mirror.hu/mirrors/pub/msys2/mingw/ucrt64/
#Server = https://www2.futureware.at/~nickoe/msys2-mirror/mingw/ucrt64/
#Server = https://repo.casualgamer.ca/mingw/ucrt64/

Server = https://mirrors.aliyun.com/msys2/mingw/ucrt64/
Server = https://mirror.iscas.ac.cn/msys2/mingw/ucrt64/
Server = https://mirrors.sjtug.sjtu.edu.cn/msys2/mingw/ucrt64/
Server = https://mirrors.bit.edu.cn/msys2/mingw/ucrt64/

```

==安装软件需要在对应子环境下进行？==
不需要，`pacman`会把包安装到对应的子环境下。

随后打开msys2，输入`pacman -Sy`同步软件包数据库，然后再输入`pacman -Su`更新软件包，期间msys2提示你输入y之后会关闭，重新打开**再输入一遍**`pacman -Su`即可。

安装并配置Clang

打开msys2，输入：

```sh
pacman -S mingw-w64-clang-x86_64-toolchain
```

按照提示，就可以完成Clang的安装了，这里会安装到`C:\msys64\clang64`目录。

添加环境变量

 将`C:\msys64\clang64\bin`添加到Path中，输入`clang -v`，如果想测试之前安装的Clangd，只需输入`clangd`即可。

默认没有make，需要安装：

```sh
pacman -S make
```

安装cmake，注意，每个环境都有自己版本的cmake，如果不确定是哪个包，使用`pacman -Ss`查询。

`mingw-w64-clang-x86_64-toolchain` 包含自己版本的make，但没有作用。

```sh
pacman -S mingw-w64-clang-x86_64-cmake
```

上面这个包已经包含`mingw-w64-x86_64-ninja`

### Cmake简单使用

查看安装的版本号：
```sh
cmake --version
```

安装完之后，cmake就可以使用了，步骤大概如下：

1. 写一个简单的CMakeLists.txt
```txt
cmake_minimum_required(VERSION 3.23)

project(out)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_BUILD_TYPE "Release")

aux_source_directory(. SOURCE)

add_executable(out ${SOURCE})

```

2. 配置

   ```sh
   cmake -G Ninja <path-to-source>
   
   # 如果是当前目录 <path-to-source> = ./
   ```

3. build

   ```sh
   cmake --build .
   ```

===注意：===
我们一般不是这么用，直接在当前目录下build会产生大量的工程文件，非常混乱。一般在当前目录下建立一个`build` 目录，在里面编译。
```sh
cd build
cmake -G Ninja ../ -D CMAKE_BUILD_TYPE=Release
cmake --build .
```

和Linux下编译源码安装程序很类似，参见：[[从源码安装程序]]

MSYS2实际上是由6个独立的子环境组成的，每个子环境会有一个单独的文件夹和一个专门的命令行界面入口，见下表。

| Name    | Prefix   | Toolchain | Architecture | C Libary | C++ Libary |
| ------- | -------- | --------- | ------------ | -------- | ---------- |
| MSYS    | /usr     | gcc       | x86_64       | cygwin   | libstdc++  |
| MingW64 | /mingw64 | gcc       | x86_64       | msvcrt   | libstdc++  |
| UCRT64  | /ucrt64  | gcc       | x86_64       | ucrt     | libstdc++  |
| Clang64 | /clang64 | llvm      | x86_64       | ucrt     | libc++     |
| Mingw32 | /mingw32 | gcc       | i686         | msvcrt   | libstdc++  |
| Clang32 | /clang32 | llvm      | i686         | ucrt     | libc++     |

打开MSYS2的安装目录，可以看到这些子环境的位置，刚安装好MSYS2的话，除了usr文件夹以外，其它的子环境文件夹里应该还都是空的。

一般来说，每个子环境下都有`bin`（含编译器的可执行文件等）/`include`（标准库和安装的第三方库头文件）/`lib`（动态库和静态库等）等文件夹，如果遇到问题可以去相应的路径查看。

详细解释一下几个子环境的区别：

- MSYS环境是基础环境，包含各种linux命令行工具（例如`pacman`等），其它子环境都继承于它。但在这个子环境里编译的程序**依赖于MSYS2的动态库**，因此直接把编译出来的`.exe`发给其他人的话会无法运行，需要带上`/usr/bin`文件夹下的`MSYS-2.0.dll`等依赖库才行。**一般不建议使用**。（需要完整linux环境的请考虑**WSL**或者虚拟机）
- MINGW64环境编译的程序不依赖MSYS2，只依赖于windows自带的C语言库`msvcrt`，较为通用。
- UCRT64与MINGW64类似，但依赖于比较新的C语言库`ucrt`，这个库win10/11自带，也是目前微软家的[Visual Studio](https://link.zhihu.com/?target=https%3A//visualstudio.microsoft.com/zh-hans/)使用的库，但win7/XP可能需要手动安装。未来将会替代MINGW64。
- CLANG64环境使用LLVM工具链而非GCC工具链，所有配套环境都是基于LLVM的（比如这个环境里的`gcc.exe`其实是`clang.exe`的重命名）。
- MINGW32和CLANG32顾名思义，使用32位的mingw/clang工具链，如果没有特殊需求基本不用考虑，用64位版本就好。

最早只有MSYS，MINGW64和MINGW32三个子环境，子环境数量由于开发的需要正在增加，将来可能还会加入CLANGARM64(可用于Android程序编译)

安装gcc

打开MSYS2命令行，输入`pacman -Syu`同步更新所有工具，然后输入`pacman -S mingw-w64-ucrt-x86_64-toolchain`安装mingw-w64工具链。中间出现询问之类的一路回车就好，等待一段时间后应该就安装完毕了。

安装完成后ucrt64/bin文件夹下应该能找到`gcc.exe`，然后将此路径**加入环境变量**。

20221021
发现clang64的bug，在涉及到输入输出时，功能不正常，非常简单的语句，没有看到有error或者warning，同样代码在linux 下用gcc编译可以运行，不知道是编译器问题，还是运行时出的问题。