# k-tmux

# Introduction

A tmux conf, which can work with [k-vim](https://github.com/wklken/k-vim)

简要说明 [k-tmux](http://www.wklken.me/posts/2015/08/06/linux-tmux.html)

# Screenshot

![screenshot](https://raw.githubusercontent.com/wklken/gallery/master/tmux/tmux.png)

# Preparation

Since the configuration works with Tmux 2.3. So, make sure you have the latest version:

```bash
tmux -V
```

expected resslt: `tmux 2.3` or latest.

## Install Tmux

### MacOS

```bash
brew install tmux
```

### Ubuntu

```bash
sudo apt-get install tmux
```

### CentOS

#### install deps
yum install gcc kernel-devel make ncurses-devel

#### DOWNLOAD SOURCES FOR LIBEVENT AND MAKE AND INSTALL
curl -OL https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
tar -xvzf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
./configure --prefix=/usr/local
make
sudo make install

#### DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL
git clone https://github.com/tmux/tmux.git
cd tmux
LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
make
sudo make install


# Install

Recommend

```
1. backup old tmux config if it is necessary

cp ~/.tmux.conf ~/.tmux.conf_bak

2. just get the file

curl https://raw.githubusercontent.com/quentin-chen/k-tmux/master/tmux.conf > ~/.tmux.conf

3. Done, enjoy it
```

Use github

```
git clone https://github.com/qunetin-chen/k-tmux.git
ln -s $PWD/k-tmux/tmux.conf ~/.tmux.conf
```
