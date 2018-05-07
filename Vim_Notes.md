# 光标移动

1. zb zz zt

分别是将当前行移动到屏幕底(bottom) 将当前行移动到中间 和 将当前行移动到顶(top)

2. L M H 

将光标移动到当前屏幕的底端(low) 中间(middle) 和顶端(high)

# 编码设置

这里的=号左右两边不能有空格

1. 打开文件之前设置编码

vim file.txt -c "e ++enc=GB2312"

2. 如果打开文件编码错误

:edit ++enc=utf8

# 屏幕移动

1. ctrl+f ctrl+b

向前移动一屏(forward)向后移动一屏(backward)

2. ctrl+d ctrl+u

向后移动半屏和向前移动半屏

# 键位映射

1. nnoremap - $

inoremap is meant for insert mode mappings   
-表示跳转到行尾

# 自动补全

1.YouCompleteMe 

# 更新文件

当文件内容改变时，更新文件内容   
:e

# 目录管理

NERD tree   
F3打开目录管理，q退出该目录   
o打开和关闭选中的目录   
ctrl+ww在目录和打开的文件之间切换   
C以当前选中目录作为根目录   
m(menu)显示文件系统菜单(esc退出)   
