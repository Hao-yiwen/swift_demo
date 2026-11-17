# swift_demo

![Swift 5.7+](https://img.shields.io/badge/Swift-5.7%2B-F05138?logo=swift&logoColor=white)
![学习记录](https://img.shields.io/badge/类型-学习记录-2F6FED)

一组按主题拆开的 **Swift 语言学习脚本**，另外附有一个很短的 JavaScript 回调示例。仓库里没有 App、没有 Swift Package，也没有第三方依赖；每个 `.swift` 文件都是一段可以单独执行的顶层代码。

写法与 Apple《The Swift Programming Language》中的 [A Swift Tour](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/) 很接近（人名、牌面、形状类等示例都能对上），适合对照官方导览阅读。这里只保留练习代码，没有收录文档原文。

## 内容目录

编号大致按学习顺序排列。多个文件里会出现同名类型（如 `Rank`、`ExampleProtocol`），因为它们是各自独立的片段，不会互相引用。

| 文件 | 在练什么 | Swift 6.0.3 上的标准输出 |
| --- | --- | --- |
| `demo1.swift` | 可选类型 `String?`、与 `nil` 比较、`if let` 绑定 | `false`，以及 `Hello, John Appleseed John Appleseed` |
| `demo2.swift` | `??` 空值合并、`if let` 简写。`nickName` 为 `nil`，简写分支不会进入 | `Hi John Appleseed` |
| `demo3.swift` | `switch`：多值、`where`、`hasSuffix` | `Is it a spicy red pepper?` |
| `demo4.swift` | 字典套数组，遍历找出最大数 | `25` |
| `demo5.swift` | `while` 与 `repeat-while`，从 2 开始翻倍直到不小于 100 | `128` 与 `128` |
| `demo6.swift` | 闭区间 `0...4` 求和 | `10` |
| `demo7.swift` | 函数返回元组 `(min, max, sum)`，用标签和下标读取 | `120`、`100`、`3` |
| `demo8.swift` | 嵌套函数改外层变量，再把函数当值调用两次 | `20` |
| `demo9.swift` | 返回嵌套函数做成闭包；把函数当作参数传入 | `8` 到 `13`，空行后 `13`，最后 `true` |
| `demo10.swift` | 泛型函数配合 `inout` 交换两个值 | `107` 与 `3` |
| `demo11.swift` | `Array.map`：闭包写法，以及直接传入函数 | 两行 `[3, 6, 9, 12, 15]` |
| `demo12.swift` | 类与继承、`override`、可选链、计算属性 `get`/`set`、`didSet` 让正方形和等边三角形的边长互相跟随 | 见下方摘录 |
| `demo13.swift` | 带 `Int` 原始值的枚举和方法；用原始值 `11` 还原枚举 | `ace 1`、`ace`、`two 2`、`jack` |
| `demo14.swift` | `Rank` / `Suit` 枚举、`Card` 结构体，静态方法生成一副 52 张牌 | 52 行，从 `The ace of spades` 到 `The king of clubs` |
| `demo15.swift` | `async` / `await`、`async let`、`Task` | `Hello Guest, user ID 97` |
| `demo16.swift` | 协议；类与结构体遵守协议，结构体里用 `mutating` | 调整后的两句英文描述 |
| `demo17.swift` | `extension` 让 `Int` 遵守协议，`adjust()` 加 42 | `The number 7` 与 `49` |
| `demo18.swift` | 用协议作为类型。协议里没有的 `anotherProperty` 只能通过具体类型访问（对应那一行调用已注释） | `A very simple class.` 与 `69105` |
| `demo19.swift` | `Error`、`throws`、`try?`。错误被 `try?` 吃掉，后面的 `catch` 不会执行 | `nil` |
| `demo20.swift` | `defer`：函数返回前把 `fridgeIsOpen` 设回 `false`。`contains` 的结果没有使用，函数也不返回查找结果 | `false` |
| `demo21.swift` | 泛型函数 `makeArray`，以及泛型枚举 `OptionalValue` | `["knock", "knock", "knock", "knock"]`、`No value`、`100` |
| `demo22.swift` | 带 `where` 的泛型：两个 `Sequence` 的元素相同且遵守 `Equatable` | `true` |
| `demo23.swift` | 结构体方法计算两点距离。`p1` 是 `var` 可以改坐标；`p2` 是 `let`，改坐标的那一行已注释 | `5.0` |
| `demo.js` | 把函数当作参数传入并立刻调用。文件前半段的闭包计数整段注释，运行时不执行 | `123` |

`demo12.swift` 的标准输出：

```text
A shape with 7 sides.
===============
27.040000000000003
A square with sides of length 5.2.
5.2
======1
5.5
======
6.5
=============
9.3
3.3000000000000003
=============
10.0
10.0
50.0
```

面积和边长按 `Double` 打印，所以会出现二进制浮点的长小数（例如 `5.2 * 5.2`）。

## 技术栈

| 项 | 实际情况 |
| --- | --- |
| 语言 | Swift 脚本。用到的语法包括 Swift 5.5 的 `async` / `await`，以及 Swift 5.7 的 `if let nickName` 简写（`demo2.swift`） |
| 依赖 | 无。没有 `Package.swift`、`Package.resolved`、CocoaPods 或 SwiftPM 依赖 |
| 工程 | 无 `.xcodeproj` / `.xcworkspace`。用 `swift` 直接解释执行单个文件 |
| JavaScript | 仅 `demo.js`，无 `package.json` |
| 编辑器 | `.vscode/settings.json` 把补全建议（comments / strings / other）设为 `off`，不影响运行 |

## 目录结构

```text
.
├── README.md
├── demo.js
├── demo1.swift
├── demo2.swift
├── …          # demo3.swift 至 demo22.swift
├── demo23.swift
└── .vscode/
    └── settings.json
```

## 环境要求

- **Swift 5.7 或更高版本**的工具链（`swift` 命令）。macOS 可使用 Xcode 自带的工具链，Linux 可按 [Swift 官方安装说明](https://www.swift.org/install/) 安装。
- 运行 `demo.js` 需要 **Node.js**。脚本只用了函数声明和 `console.log`，常见的 Node.js 版本都可以。
- 仓库不绑定操作系统。下面的验证是在 **Ubuntu 24.04 x86_64** 上完成的。

## 安装与运行

克隆后进入仓库，对单个文件执行：

```bash
git clone https://github.com/Hao-yiwen/swift_demo.git
cd swift_demo

swift demo1.swift
node demo.js
```

一次跑完全部 Swift 示例（bash）：

```bash
for f in demo{1..23}.swift; do
  printf '\n===== %s =====\n' "$f"
  swift "$f"
done
```

请单独运行每个文件。把多个 `demo*.swift` 放进同一个编译目标会因为重复的类型名冲突。

### 本次已验证

验证环境：Ubuntu 24.04 x86_64，Swift 6.0.3（`swift-6.0.3-RELEASE`），Node.js v22.23.4。工具链是验证时另外安装的，没有放进仓库。

| 命令 | 结果 |
| --- | --- |
| `swift demo1.swift` … `swift demo23.swift` | 全部退出码 0，标准输出与上表一致 |
| `node demo.js` | 退出码 0，打印 `123` |

有三条编译警告，进程仍然成功：

- `demo8.swift`：第一次 `fun()` 的 `Int` 返回值没有使用。
- `demo19.swift`：`try?` 不会向外抛出错误，因此 `do` 后面的 `catch` 不可达；`print` 还把 `String?` 隐式转成了 `Any`。标准输出是 `nil`。
- `demo20.swift`：`fridgeContent.contains(food)` 的 `Bool` 结果没有使用。

`demo15.swift` 里的 `Task` 在这次 Swift 6.0.3 脚本运行中会执行完，并打印注释里写的那句问候。

## 备注

- 仓库里没有截图或 App 图标资源。
- 没有 `LICENSE` 文件。
- GitHub 仓库描述为 “Swift 语言学习 Demo · Swift language study demos”，主题标签是 `swift`、`learning`。
- 对照阅读：[A Swift Tour](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/)（Swift 官方语言指南）。
