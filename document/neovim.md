##### 参考

- [ ] https://martinlwx.github.io/zh-cn/config-neovim-from-scratch/ lsp
- [ ] https://zhuanlan.zhihu.com/p/480081983 成品例子
- [x] https://zhuanlan.zhihu.com/p/438380547 系列
- [ ] https://zhuanlan.zhihu.com/p/577413629 lsp dap
- [x] https://zhuanlan.zhihu.com/p/661482848 1
- [ ] https://zhuanlan.zhihu.com/p/661901458 2
- [ ] https://zhuanlan.zhihu.com/p/662843534 3 lsp
- [ ] https://zhuanlan.zhihu.com/p/665219554 4
- [x] https://www.zhihu.com/tardis/bd/art/441818052?source_id=1001 nvim-treesitter
- [ ] https://github.com/JavaHello/nvim/tree/nvim-lsp?tab=readme-ov-file 参考配置
- [ ] https://www.cnblogs.com/w4ngzhen/p/17546969.html cmp
- [ ] https://juejin.cn/post/7154005621887631396 mason
- [ ] https://zhuanlan.zhihu.com/p/382092667 成品例子
- [ ] https://zhuanlan.zhihu.com/p/664398831 成品例子 2023.10
- [x] https://juejin.cn/post/7244526264617730108 spring maven (安装时 java 版本有要求)
- [ ] https://github.com/alpha2phi/neovim-for-beginner/blob/33-java-debug/after/ftplugin/java.lua spring 原版项目
- [ ] 参考 https://github.com/mfussenegger/nvim-jdtls/discussions/585
- [ ] https://blog.csdn.net/lxyoucan/article/details/123448313 成品例子
- [ ] https://github.com/wenjinnn/config/tree/6c3a91c2c1071689025ff170803d70290954734b/nvim/plugin 成品例子
- [ ] https://sookocheff.com/post/vim/neovim-java-ide/ 例子 英文
- [ ] https://zhuanlan.zhihu.com/p/388397656 成品例子
- [ ] https://cloud.tencent.com/developer/article/2203813 dap 使用 (重点)
- [ ] https://cloud.tencent.com/developer/search/article-%E4%BB%8E%E9%9B%B6%E5%BC%80%E5%A7%8B%E9%85%8D%E7%BD%AEvim 系列
- [ ] https://blog.csdn.net/lanuage/article/details/128477039 dap
- [ ] 

插件安装慢配置 github host

https://cdn.jsdelivr.net/gh/521xueweihan/GitHub520@main/hosts

https://raw.hellogithub.com/hosts

### 安装

```
vim 配置文件路径
	~/.vimrc
	~/.vim/

nvim 配置文件路径
  ~/.config/nvim/init.vim
  ~/.config/nvim/init.lua
```

### 依赖

##### nerd-fonts

[github](https://github.com/ryanoasis/nerd-fonts)

```bash
$ brew tap homebrew/cask-fonts
$ brew install font-hack-nerd-font
```

##### 环境

```bash
$ brew install node golang wget php ruby rust julia lua luarocks composer ripgrep fzf libjpeg ranger fd attachfile
$ npm install -g neovim


有问题
$ gem install --user neovim
$ sudo gem install neovim
$ gem environment
有问题
```

##### python 支持

```

1. 指定 python 虚拟环境
2. 安装 pip 包 (虚拟环境和系统的环境都安装)
(虚拟环境)
pip install pynvim ranger-fm
(系统的环境)
pip3 install pynvim ranger-fm
```

### 命令

```
:messages
:checkhealth
```

### 按键设置

`:help key-notation` 查看字符映射

```
notation	meaning		    equivalent	decimal value(s)	~
-----------------------------------------------------------------------
<Nul>		zero			CTRL-@	  0 (stored as 10) *<Nul>*
<BS>		backspace		CTRL-H	  8	*backspace*
<Tab>		tab			CTRL-I	  9	*tab* *Tab*
							*linefeed*
<NL>		linefeed		CTRL-J	 10 (used for <Nul>)
<CR>		carriage return		CTRL-M	 13	*carriage-return*
<Return>	same as <CR>				*<Return>*
<Enter>		same as <CR>				*<Enter>*
<Esc>		escape			CTRL-[	 27	*escape* *<Esc>*
<Space>		space				 32	*space*
<lt>		less-than		<	 60	*<lt>*
<Bslash>	backslash		\	 92	*backslash* *<Bslash>*
<Bar>		vertical bar		|	124	*<Bar>*
<Del>		delete				127
<CSI>		command sequence intro  ALT-Esc 155	*<CSI>*
<xCSI>		CSI when typed in the GUI		*<xCSI>*

<EOL>		end-of-line (can be <CR>, <NL> or <CR><NL>,
		depends on system and 'fileformat')	*<EOL>*

<Up>		cursor-up			*cursor-up* *cursor_up*
<Down>		cursor-down			*cursor-down* *cursor_down*
<Left>		cursor-left			*cursor-left* *cursor_left*
<Right>		cursor-right			*cursor-right* *cursor_right*
<S-Up>		shift-cursor-up
<S-Down>	shift-cursor-down
<S-Left>	shift-cursor-left
<S-Right>	shift-cursor-right
<C-Left>	control-cursor-left
<C-Right>	control-cursor-right
<F1> - <F12>	function keys 1 to 12		*function_key* *function-key*
<S-F1> - <S-F12> shift-function keys 1 to 12	*<S-F1>*
<Help>		help key
<Undo>		undo key
<Insert>	insert key
<Home>		home				*home*
<End>		end				*end*
<PageUp>	page-up				*page_up* *page-up*
<PageDown>	page-down			*page_down* *page-down*
<kHome>		keypad home (upper left)	*keypad-home*
<kEnd>		keypad end (lower left)		*keypad-end*
<kPageUp>	keypad page-up (upper right)	*keypad-page-up*
<kPageDown>	keypad page-down (lower right)	*keypad-page-down*
<kPlus>		keypad +			*keypad-plus*
<kMinus>	keypad -			*keypad-minus*
<kMultiply>	keypad *			*keypad-multiply*
<kDivide>	keypad /			*keypad-divide*
<kEnter>	keypad Enter			*keypad-enter*
<kPoint>	keypad Decimal point		*keypad-point*
<k0> - <k9>	keypad 0 to 9			*keypad-0* *keypad-9*
<S-...>		shift-key			*shift* *<S-*
<C-...>		control-key			*control* *ctrl* *<C-*
<M-...>		alt-key or meta-key		*meta* *alt* *<M-*
<A-...>		same as <M-...>			*<A-*
<D-...>		command-key (Macintosh only)	*<D-*
<t_xx>		key with "xx" entry in termcap
```

```
:split						水平分割线，将窗口分割成上下两份，若未接其他文件则再次打开一样的文件；若
:split otherfile	则将在新的窗口打开otherfile

:new							打开的是一个新建的文件
:vsplit						垂直分割线，将窗口分割成左右两份，若未接其他文件则再次打开一样的文件；若
:vsplit otherfile	则将在新的窗口打开otherfile
:vertical new			同:vsplit，不过打开的是一个新建的文件

CTRL-W w					在已打开的窗口中循环移动
CTRL-W h					光标向左移动光标
CTRL-W l					光标向右移动光标

CTRL-W j					光标向下移动光标
CTRL-W k					光标向上移动
CTRL-W +					放大
CTRL-W -					缩小

CTRL-W H					将当前窗口移动到最左端，高度与终端一致
CTRL-W L					将当前窗口移动到最右端，高度与终端一致
CTRL-W J					将当前窗口移动到最底端，宽度与终端一致
CTRL-W K					将当前窗口移动到最上端，宽度与终端一致

:close						关闭当前窗口
:only							保留当前窗口，其余全部关闭
```

##### 格式

```
vim.api.nvim_set_keymap('n', '<leader>tf', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
参数 1: 生效的模式
参数 2: 映射
参数 3: 选项参数
```

参数 2

```
<leader>	

<A>						表示Alt(Alt键可以使用<M-key>或<A-key>来表示, 例子, <A-e>表示Alt + e
<S-F1>				表示 Shift-F1
<Space>				表示空格
<BS>					Backspace
<Esc>					Esc
<CR>					Enter
<C-j>					代表Ctrl + j
<D>						Command
<cmd>					用于进入命令行模式
n							表示映射仅在普通模式下生效
<up>
<down>
<left>
<right>
```

参数 3 

```
noremap
含义： 禁用递归映射。如果设置为 true，键映射将不会被递归扩展。防止意外的键映射扩展。
示例： { noremap = true }

silent:
含义： 在执行键映射时静默模式，不在命令行上显示执行的命令。
示例： { silent = true }

expr:
含义： 将命令解释为表达式。如果设置为 true，命令将被当作表达式执行。
示例： { expr = true }

nowait:
含义： 在插入模式下，不等待键映射的返回值。键映射将立即生效。
示例： { nowait = true }

script:
含义： 在 Normal 模式下执行命令时，将命令解释为 Vim 脚本。
示例： { script = true }

unique:
含义： 在 Normal 模式下，确保键映射是唯一的，不会被其他键映射覆盖。
示例： { unique = true }
```

### 插件管理

##### packer.nvim - 插件管理

[github](https://github.com/wbthomason/packer.nvim)

> 停止维护

```bash
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

```
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
:PackerSync

-- Loads opt plugin immediately
:PackerLoad completion-nvim ale
但通常无论 安装 还是 更新 插件，我只需要下边这一条命令就够了。

:PackerSync
```

##### gruvbox.nvim - 主题

[github](https://github.com/ellisonleao/gruvbox.nvim)

```
fg - foreground color
bg - background color
bold - true or false for bold font
italic - true or false for italic font
```

##### alpha-nvim - 启动页面

[github](https://github.com/goolord/alpha-nvim)

[ASCII艺术字](https://www.bootschool.net/ascii-art)

##### dashboard-nvim - 启动页面

[github](https://github.com/nvimdev/dashboard-nvim)

```

```

##### nvim-tree.lua - 文件树

[github](https://github.com/nvim-tree/nvim-tree.lua)

```
:NvimTreeToggle 
:NvimTreeFocus 如果树是关闭的，打开它，然后把注意力集中在树上
:NvimTreeFindFile 在当前缓冲区的树中移动光标，如果需要打开文件夹
:NvimTreeCollapse 递归地折叠nvim树
```

##### lualine.nvim - 状态栏

[github](https://github.com/nvim-lualine/lualine.nvim)

```

```

##### bufferline.nvim - buffer

[github](https://github.com/akinsho/bufferline.nvim)

```
-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
```

##### nvim-treesitter - 代码高亮

[github](https://github.com/nvim-treesitter/nvim-treesitter)

```
:TSBufEnable {module}								弃用
:TSBufDisable {module}							禁用
:TSEnable {module} [{ft}] " enable module on every buffer. If filetype is specified, enable only for this filetype.
:TSDisable {module} [{ft}] " disable module on every buffer. If filetype is specified, disable only for this filetype.
:TSModuleInfo [{module}] " list information about modules state for each filetype

:TSInstall <language_to_install>
:TSUpdate {language}
:TSBufToggle highlight 							显示/隐藏代码高亮
```

##### which-key.nvim - 快捷键提示

[github](https://github.com/folke/which-key.nvim)

```
```



##### nvim-lspconfig

> 不再单独使用

[github](https://github.com/neovim/nvim-lspconfig)

```
:LspInfo									显示活动和已配置语言服务器的状态
:LspStart <config_name> 	启动服务
:LspStop <client_id> 			Defaults to stopping all buffer clients
:LspRestart <client_id> 	Defaults to restarting all buffer clients
```

##### mason.nvim - 安装器

> 取代 nvim-lsp-installer
>
> 依赖 golang 和 npm
>
> Mason install jdtls 下载地址
>
> ​        Downloading file "https://download.eclipse.org/jdtls/milestones/1.32.0/jdt-language-server-1.32.0-202402011424.tar.gz"

[github](https://github.com/williamboman/mason.nvim)

```
LSP 服务器、DAP 服务器、 通过单个界面进行短绒检查和格式化程序
```

```
:h mason-commands

:Mason											打开图形状态窗口
:MasonUpdate								更新所有托管注册表
:MasonInstall <package>			安装/重新安装提供的软件包
:MasonUninstall <package>		卸载提供的软件包
:MasonUninstallAll					卸载所有软件包
:MasonLog										在新选项卡窗口中打开 mason.nvim 日志文件
:LspInfo


安装在什么位置?

```

##### mason-lspconfig.nvim

[github](https://github.com/williamboman/mason-lspconfig.nvim)

```
:LspInstall [<server>...] - installs the provided servers
:LspUninstall <server> ... - uninstalls the provided servers
```

##### mfussenegger/nvim-jdtls

> java lsp jdtls 封装, java 代码跳转需要这个插件, 没有跳转不了

[github](https://github.com/mfussenegger/nvim-jdtls)

```
添加 Lombok 支持 ()
官网 https://projectlombok.org/

下载地址 https://projectlombok.org/downloads/lombok.jar

```

##### lspsaga.nvim - lsp 增强 (功能很全)

[github](https://github.com/nvimdev/lspsaga.nvim)

```

```

##### nvim-cmp - 代码补全

[github](https://github.com/hrsh7th/nvim-cmp)

```

```

##### nvim-dap

> 日志路径 `~/.cache/nvim/dap.log`

[github](https://github.com/mfussenegger/nvim-dap)

###### java

> [配置 java 文档](https://github.com/mfussenegger/nvim-dap/wiki/Java)

1. 安装 [java-debug](https://github.com/microsoft/java-debug)

   ```bash
   $ cd ~/opt/neovim-dev
   $ git clone https://github.com/microsoft/java-debug.git
   $ cd java-debug
   $ ./mvnw clean install
   
   
   失败原因
     1. 使用 java 21 
     2. maven 换为官方源
     <mirror>
         <id>mvnrepository</id>
         <mirrorOf>mvnrepository</mirrorOf>
         <url>http://mvnrepository.com/</url>
     </mirror>
     3. 网络代理是否可用
   ```

2. 安装 [vscode-java-test](https://github.com/microsoft/vscode-java-test)

   ```bash
   $ cd ~/opt/neovim-dev
   $ git clone https://github.com/microsoft/vscode-java-test.git
   $ cd vscode-java-test
   $ npm install && npm run build-plugin
   ```

###### python

###### lua

###### golang

##### nvim-dap-ui 

[github](https://github.com/rcarriga/nvim-dap-ui)

```
按键映射
edit：e
expand:<CR>或左键单击
open：o
remove：d
repl：r
toggle：t


Variable Scopes(变量)
  edit：编辑变量的值
  expand：切换显示变量的任何子项。
  repl: 将变量发送到 REPL


Threads and Stack Frames(线程和堆栈帧)
  open: 跳转到栈帧内的某个位置。
  toggle: 切换显示细微帧



Watch Expressions(线程和堆栈帧 - 详细)
  expand：切换显示表达式的子项。
  remove：删除观看的表情。
  edit：编辑表达式或设置子变量的值。
  repl：将表达式发送到REPL

Breakpoints (断点)
  open：跳转到设置断点的位置
  toggle：启用/禁用所选断点


REPL (REPL)
Console (终端控制台)
元素 ID：console
```



##### formatter.nvim - 代码格式化

[github](https://github.com/mhartington/formatter.nvim)

```
参考
https://www.cnblogs.com/SR-Program/p/15773546.html
```

##### telescope.nvim - 模糊查询

[github](https://github.com/nvim-telescope/telescope.nvim)

> 依赖 ripgrep fzf fd

```
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
```

##### telescope-project.nvim - 项目切换

[github](https://github.com/nvim-telescope/telescope-project.nvim)

##### telescope-file-browser.nvim - 文件浏览器

[gtihub](https://github.com/nvim-telescope/telescope-file-browser.nvim)

##### rnvimr - 文件浏览

[github](https://github.com/kevinhwang91/rnvimr)

> 依赖 ranger-fm

```
```

##### vim-floaterm - 嵌套窗口

[github](https://github.com/voldikss/vim-floaterm)

##### nvim-window - 编号选择窗口

[github](https://github.com/yorickpeterse/nvim-window)

##### toggleterm.nvim - 终端窗口

[github](https://github.com/akinsho/toggleterm.nvim)

##### voldikss/vim-floaterm - 嵌套窗口

[github](https://github.com/voldikss/vim-floaterm)

##### winshift.nvim  - 移动窗口

[github](https://github.com/sindrets/winshift.nvim)

##### trouble.nvim - 语法错误列表

[github](https://github.com/folke/trouble.nvim)

##### 会话

```
打开编辑时, 恢复到上次的状态

保存回话, 会生成 Session.vim 文件
:mksession

恢复回话
:source Session.vim
```



### springboot

```
https://github.com/microsoft/java-debug


```

##### dap java

```
mkdir -p ~/.config/nvim/pack/github/start
cd ~/.config/nvim/pack/github/start
git clone https://github.com/ggandor/nvim-maven-invoker.git




```





### 新插件 试试

https://github.com/mfussenegger/nvim-lint

https://github.com/folke/flash.nvim

https://github.com/nvim-java/nvim-java





### 问题

##### 问题 1

```
问题描述:
Multiple LSP clients found that suppport vscode.java.resolveClasspath you shoud have at most one JDTLS server running.

解决办法
config['on_attach'] = function(client, bufnr)
    require('jdtls').setup_dap({ hotcodereplace = 'auto' })
end
require("jdtls").start_or_attach(config)
```

##### 问题 2

启动 A.java 是报错

```
No configuration found for `java`. You need to add configs to `dap.configurations.java` (See `:h dap-configuration`)
```

##### 问题 3

```
E492 不是编辑器命令, mvn compile exec:java


解决办法
:!mvn compile exec:java
```

##### 问题 4

```
maven 管理项目, 无法跳转到 spring boot 源代码


解决办法:
:!mvn dependency:sources
```

##### 问题 5

```
java 跳转函数时报错
[lspsaga] response of request method exetDoucumet/definition is empey


解决办法:
安装 mfussenegger/nvim-jdtls 插件
```

### vscode launch.json

##### 参数

```
"type"：指定调试器的类型，例如 "node" 表示 Node.js 调试器，"python" 表示 Python 调试器，"java" 表示 Java 调试器等。
"request"：指定调试的请求类型，可以是 "launch"（启动一个新的进程）或 "attach"（附加到已有的进程）。
"name"：为配置提供一个友好的名称，方便识别不同的调试配置。
"program"：用于指定程序的入口文件路径，可以是绝对路径或相对于工作目录的路径。
"args"：传递给程序的命令行参数，以数组形式提供。
"cwd"：指定程序的工作目录，可以是绝对路径或相对于工作目录的路径。
"env"：设置程序运行时的环境变量，以对象形式提供。
"stopOnEntry"：设置为 true 时，在启动后会在入口处停止，等待调试器连接。
"preLaunchTask"：指定在启动调试前运行的任务，通常是一个编译任务。
"postDebugTask"：指定在调试结束后运行的任务，比如清理任务。
"outFiles"：设置输出文件的路径，用于映射源代码和编译后的文件。
"sourceMaps"：控制是否启用源代码映射，可以是 "inline"、"both" 或 "false"。
"sourceMapPathOverrides"：用于根据源代码映射调整文件路径。
"externalConsole"：设置为 true 时，将在外部控制台中运行程序。
"internalConsoleOptions"：控制内部控制台的显示方式，可以是 "neverOpen"、"openOnSessionStart" 或 "openOnFirstSessionStart"。
"showAsyncStacks"：设置为 true 时，在堆栈跟踪中显示异步调用的信息。
"stopOnError"：设置为 true 时，当发生错误时暂停调试。
"smartStep"：设置为 true 时，跳过无需调试的代码。
"skipFiles"：指定不需要调试的文件或文件夹。
"justMyCode"：设置为 true 时，只调试自己的代码。
```



# 开发项目

##### 失败解决办法

```
1. java 版本改为 1.8
2. maven 版本改为 3.8.1
3. 构建时跳过测试
	mvn clean install -DskipTests -U
```



