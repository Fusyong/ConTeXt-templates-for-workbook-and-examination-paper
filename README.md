a ConTeXt template for workbook and examination paper

语文练习册和试卷的ConTeXt模板

缘起和思路等见我的博客[《语文练习册和试卷的ConTeXt模板》](https://blog.xiiigame.com/2024-01-21-%E8%AF%AD%E6%96%87%E7%BB%83%E4%B9%A0%E5%86%8C%E5%92%8C%E8%AF%95%E5%8D%B7%E7%9A%84ConTeXt%E6%A8%A1%E6%9D%BF/)

## 主要特性

1. 在排版文档中，就地放置参考答案和答题说明（标签）；
1. 在参考答案部分自动归集、排印参考答案和答题说明，无需另排；
1. 根据参考答案计算合适的答题空间；
1. 在校对模式下，就地显示参考答案和答案说明，以便就地连贯单线地读校；
1. 常见题型模版（有待丰富）；
1. TODO 试卷支持：给练习题赋分，并自动归总、校验、排印分数；

## 目前状态

练习册初始可用，效果如下。
（左侧是正常正文；中间是校对模式的正文，就地嵌入了参考答案和答题说明；右侧是自动归集、排印的参考答案）

![](https://blog.xiiigame.com/img/2024-01-21-%E8%AF%AD%E6%96%87%E7%BB%83%E4%B9%A0%E5%86%8C%E5%92%8C%E8%AF%95%E5%8D%B7%E7%9A%84ConTeXt%E6%A8%A1%E6%9D%BF/SumatraPDF_mdnBG2scvM-2.png)

![](https://blog.xiiigame.com/img/2024-01-21-%E8%AF%AD%E6%96%87%E7%BB%83%E4%B9%A0%E5%86%8C%E5%92%8C%E8%AF%95%E5%8D%B7%E7%9A%84ConTeXt%E6%A8%A1%E6%9D%BF/SumatraPDF_Z25zFToGpk.png)

![](https://blog.xiiigame.com/img/2024-01-21-%E8%AF%AD%E6%96%87%E7%BB%83%E4%B9%A0%E5%86%8C%E5%92%8C%E8%AF%95%E5%8D%B7%E7%9A%84ConTeXt%E6%A8%A1%E6%9D%BF/SumatraPDF_IwyHlWui4L.png)

![](https://blog.xiiigame.com/img/2024-01-21-%E8%AF%AD%E6%96%87%E7%BB%83%E4%B9%A0%E5%86%8C%E5%92%8C%E8%AF%95%E5%8D%B7%E7%9A%84ConTeXt%E6%A8%A1%E6%9D%BF/SumatraPDF_33Dt116bn1.png)

![](https://blog.xiiigame.com/img/2024-01-21-%E8%AF%AD%E6%96%87%E7%BB%83%E4%B9%A0%E5%86%8C%E5%92%8C%E8%AF%95%E5%8D%B7%E7%9A%84ConTeXt%E6%A8%A1%E6%9D%BF/SumatraPDF_RmHoBKw2ES.png)

![](https://blog.xiiigame.com/img/2024-01-21-%E8%AF%AD%E6%96%87%E7%BB%83%E4%B9%A0%E5%86%8C%E5%92%8C%E8%AF%95%E5%8D%B7%E7%9A%84ConTeXt%E6%A8%A1%E6%9D%BF/SumatraPDF_0jwehwawk8.png)

## TODO

* [ ] 试卷模式
  * [ ] 练习题赋分，并自动归总、校验、排印分数；
* [ ] 优化答题空间
* [ ] 题型模版
    * [x] 用斜线画掉错误答案
    * [x] 在括号中填空
    * [x] 在括号中填空（右侧对齐）
    * [x] 在文中横线上填空
    * [x] 括号中画勾画叉
    * [x] 括号中画勾画叉（右侧对齐）
    * [x] 在拼音下的田字格里写字词
        * [ ] 校验
    * [x] 选择正确的项目序号
      * [ ] 多项选择题校验
    * [x] 一段包括填空和勾选等标记的内容（如表格）整体作为答案
    * [x] 在文句中画线，画线内容作为答案
    * [x] 包含填空的带括号的多行的组
    * [ ] 连线题
* [X] 答题说明（标签）
    * [X] （略）
    * [X] 示例：
    * [X] 文中练习
    * [X] 见文中练习
* [X] 自动归集参考答案、答题说明并排印
  * [x] 从答案序号向题目跳转`\goto`

## 已知BUG

* [x] 栏目与大题同级（可能导致其间分页），提级则大题序号重置

<!-- 压缩模块的问题：标点压缩模块：中圆点压缩错误，win11字体（） -->
