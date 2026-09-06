# ME5418 课程项目提案

本仓库包含 **Learning Planar Object Pushing with Reinforcement Learning** 的
LaTeX 源码和编译完成的 PDF。

## 仓库结构

```text
.
├── main.tex          # 提案 LaTeX 源码
├── main.pdf          # 编译完成的提案
├── Makefile          # 编译命令
├── environment.yml   # 独立的 Conda 编译环境
└── README.md         # 使用说明
```

## 快速开始

本项目使用 Tectonic 作为 LaTeX 编译器。环境会创建在仓库内的 `.conda-env`
目录中，不会在 Conda `base` 环境中安装、升级或删除任何包。

```bash
conda env create --prefix ./.conda-env --file environment.yml
conda activate ./.conda-env
make
```

编译结果会写入仓库根目录的 `main.pdf`。中间文件保存在 `build/` 中，不会被
Git 跟踪。

退出环境：

```bash
conda deactivate
```

清理生成文件：

```bash
make clean
```

`make clean` 也会删除纳入版本控制的 `main.pdf`；再次运行 `make` 即可重新生成。

## 修改并重新编译

1. 使用任意文本编辑器修改 `main.tex`。
2. 运行 `conda activate ./.conda-env` 激活仓库环境。
3. 运行 `make`。
4. 打开 `main.pdf` 检查结果。

首次编译时，Tectonic 会自动下载缺少的 TeX 宏包，因此需要联网且耗时可能稍长。
后续编译会复用 Tectonic 的用户缓存。

## 常用命令

```bash
make          # 将 main.tex 编译为 main.pdf
make clean    # 删除 main.pdf 和中间文件
make rebuild  # 清理后从头编译
```

## 使用已有的 Tectonic

如果系统中已经安装 Tectonic，则不必创建 Conda 环境，直接运行 `make` 即可。
源码使用 `IEEEtran`、`amsmath`、`amssymb`、`graphicx`、`enumitem`、
`hyperref`、`newtxtext` 和 `newtxmath` 宏包。
