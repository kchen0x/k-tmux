# k-tmux

## Introduction

使用说明请见 [More details about k-tmux](http://kchen.cc/2016/11/18/custom-multiplexer-k-tmux/)

## Screenshot

![screenshot](http://data.kchen.cc/mac_qrsync/e63751170c3cc32863ada94b1527f581.png-960.jpg)

## Preparation

Since the configuration works with Tmux 2.5. So, make sure you have the latest version:

```
tmux -V
```

expected resslt: `tmux 2.5` or latest.

## Install Tmux

### MacOS

```
brew install tmux
```

### Ubuntu

```
sudo apt-get install tmux
```

### CentOS

#### install deps

```
yum install gcc kernel-devel make ncurses-devel
```

#### DOWNLOAD SOURCES FOR LIBEVENT AND MAKE AND INSTALL

```
yum install libevent
```

or

```
curl -OL https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
tar -xvzf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
./configure --prefix=/usr/local
make
sudo make install
```

#### DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL

```
curl -OL https://github.com/tmux/tmux/releases/download/2.5/tmux-2.5.tar.gz
tar -xvzf tmux-2.5.tar.gz
cd tmux-2.5
./configure && make
sudo make install
```

## Install k-tmux

```
./install.sh
```

You may need to reload you configuaration after adding k-tum in your environment.
