#!/bin/bash

# Bootstrap
BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

echo "=== Start installing k-tmux configuration ==="

echo "Step1: backing up current tmux config"
today=`date +%Y%m%d`
for i in $HOME/.tmux.conf; do
    [ -e $i ] && [ ! -L $i ] && mv $i $i.$today ;
done
for i in $HOME/.tmux.conf; do
    [ -L $i ] && unlink $i ;
done

echo "Step2: setting up symlinks"
ln -sif $CURRENT_DIR/tmux.conf $HOME/.tmux.conf

echo "=== Install Done! ==="
