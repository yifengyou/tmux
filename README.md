<!-- MDTOC maxdepth:6 firsth1:1 numbering:0 flatten:0 bullets:1 updateOnSave:1 -->

- [tmux使用](#tmux使用)   
   - [面板序号从1开始而非0开始](#面板序号从1开始而非0开始)   
   - [一行命令启动一个**会话**后端执行命令](#一行命令启动一个会话后端执行命令)   
   - [启动一个会话，添加多个创建，每个窗口执行不同命令](#启动一个会话，添加多个创建，每个窗口执行不同命令)   

<!-- /MDTOC -->

# tmux使用


## 面板序号从1开始而非0开始

```
set -g pane-base-index 1    # 面板的初始序号；默认为0，这里设置为1
```

## 一行命令启动一个**会话**后端执行命令

```
tmux new-session -d -s SESSION_NAME '/usr/bin/bash -c "/usr/bin/sleep 1000"'
```


## 启动一个会话，添加多个创建，每个窗口执行不同命令

```
tmux new-session -d -s SESSION_NAME -n WIN_NAME1 '/bin/bash'

tmux new-window -n WIN_NAME2 -t SESSION_NAME '/bin/bash'

tmux new-window -n WIN_NAME3 -t SESSION_NAME '/bin/bash'

tmux new-window -n WIN_NAME4 -t SESSION_NAME '/bin/bash'
```












----
