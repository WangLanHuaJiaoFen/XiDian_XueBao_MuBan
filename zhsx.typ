// 设置章节编号
#set heading(numbering: "1.1.1")
#set par(justify: true)
// 页眉汉字字体
#let header_hanzi_regular_rule(content) = text(font: "SimSun", size: 9pt, content)
// 页眉英文数字字体
#let times_text(content) = text(font: "Times New Roman", size: 9pt, content)
// 页眉汉字加粗字体
#let header_hanzi_bold_rule(content) = text(font: "SimSun", size: 9pt, content, weight: "bold")
#let times_text_bold(content) = text(font: "Times New Roman", size: 9pt, content, weight: "bold")
// 在这里修改时间、卷、期、doi
#let part_one = times_text[2024] + header_hanzi_regular_rule[年] + times_text[12] + header_hanzi_regular_rule[月] 
#let part_two = header_hanzi_bold_rule[西安电子科技大学学报]
#let part_three = times_text[Xxx.2024]
#let part_four = header_hanzi_regular_rule[第] + times_text[0] + header_hanzi_regular_rule[卷] + " " + header_hanzi_regular_rule[第] + times_text[0] + header_hanzi_regular_rule[期]
#let part_five = times_text_bold[JOURNAL  OF  XIDIAN  UNIVERSITY]
#let part_six = times_text[Vol.00  No.0]
#let part_seven = times_text[doi] + header_hanzi_regular_rule[：] + times_text[10.19665/j.issn.1001-2400.2024.00.0]

#let page_count = 1
// 设置页眉, 页脚
#set page(
  paper: "a4", 
  header: locate(loc => {
    let judge = loc.page() / 2
    if loc.page() == 1 {
      [
        #part_one
        #h(1fr) #part_two
        #h(1fr) #part_three
      ]
      linebreak()
      [
        #part_four
        #h(1fr) #part_five
        #h(1fr) #part_six
        #v(-1em)
        #line(length: 100%, stroke: 0.5pt)
      ]
    } else if judge == 1.0 or judge == 2.0 or judge == 3.0 or judge == 4.0 {
      [
        #loc.page()
        #h(1fr) #header_hanzi_regular_rule[西安电子科技大学学报]
        #h(1fr) #header_hanzi_regular_rule[第]#times_text[00]#header_hanzi_regular_rule[卷]
        #v(-1em)
        #line(length: 100%, stroke: 0.5pt)
      ]
    } else {
      [
        #header_hanzi_regular_rule[第]#times_text[0]#header_hanzi_regular_rule[期]
        #h(1fr) #times_text[0]#header_hanzi_regular_rule[等：中文题目]
        #h(1fr) #loc.page()
        #v(-1em)
        #line(length: 100%, stroke: 0.5pt)
      ]
    } 
  }), 
  footer: locate(loc => {
    if loc.page() == 1 {
      [
        #let dead_line = times_text[2024-12-25]
        #let author = header_hanzi_regular_rule[张 某（] + times_text[2004] + header_hanzi_regular_rule[——），男，西安电子科技大学本科生，] + times_text[E-mail:2xxxxxxxxxx\@xidian.edu.cn]
        #let tongxin_author = header_hanzi_regular_rule[无]
        #let network_time = times_text[2024-12-25]
        #let fund_project = header_hanzi_regular_rule[无]
        #let network_address = header_hanzi_regular_rule[无]
        #header_hanzi_bold_rule[\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_]
        #linebreak()
        #header_hanzi_bold_rule[收稿日期：] #dead_line
        #h(1fr) #header_hanzi_bold_rule[网络出版时间：] #network_time
        #h(1fr)
        #linebreak()
        #header_hanzi_bold_rule[基金项目：] #fund_project
        #linebreak()
        #header_hanzi_bold_rule[作者简介：] #author
        #linebreak()
        #header_hanzi_bold_rule[通信作者：] #tongxin_author
        #linebreak()
        #header_hanzi_bold_rule[网络出版地址：] #network_address
      ]
    }
  }), 
  margin: (bottom: 11em + 1.75cm, top: 2em + 1.5cm)
)

#v(-1.5em)
#part_seven
#linebreak()
// 在这里修改标题
#align(center)[#text(font: "SimHei", size: 18pt)[论文模板]]

#v(-1.5em)
#linebreak()
// 在这里修改作者
#align(center)[
  #text(font: "STFangsong", size: 14pt)[你的名字]
  #super[1]
]
// 在这里修改机构
#{
  set text(size: 9pt)
  align(center)[
  #text(font: "Times New Roman")[(1. ]
  #text(font: "KaiTi")[西安电子科技大学 计算机科学与技术学院，陕西 西安 ]
  #text(font: "Times New Roman")[710071)]
]
}
// 在这里修改摘要和关键词
#{
  set text(size: 9pt)
  align(start)[
    #block(inset: (left: 2em, right: 2em))[
      #text(font: "SimHei")[摘要：]
      #text(font: "STKaiti")[华文楷体（小5号）(中文摘要及关键词左右各缩进2个字符) 400字左右。以提供文献内容梗概为目的，不加评论和补充解释，简明、确切地记述文献。其内容是正文内容的要点，包括目的（研究、研制、实验等课题所涉及的范围和所要解决的问题）、方法（所用的原理、理论、思想、技术、条件、材料、工艺、结构等，如创建的新理论、新技术、新方法、新材料、新工艺、新结构等）、结果（实验的、研究的结果、数据，被确定的关系，观察结果，得到的效果、性能等）和结论（对结果通过分析、比较、升华所得到的具有普遍意义的规律和适用范围，提出的问题等）。要真实、客观、准确，不能有补充和修饰性的描述。不能有参考文献标识，以便独立。不应出现缩写字符，应使用汉语。摘要400字左右。]
    ]
  ]
  align(start)[
    #block(inset: (left: 2em, right: 2em))[
      #text(font: "SimHei")[关键词：]#text(font: "STKaiti")[论文；修改；格式]
    ]
  ]
  align(start)[
    #block(inset: (left: 2em, right: 2em))[
      #text(font: "SimHei")[中图分类号：]
      #h(1fr) #text(font: "SimHei")[文献标识码：#text(font: "Times New Roman")[A]]
      #h(1fr) #text(font: "SimHei")[文章编号：#text(font: "Times New Roman")[1001-2400(2024)00-0-0]]
      
    ]
  ]
}
#v(-1.5em)
#linebreak()

// 引言
= #text(font: "Lenovo-XiaoxinHeiGB", size: 14pt)[#h(0.5em)引言]

#{
  set text(font: "SimSun", size: 10.5pt)
  let indent = h(2em)

  [
    #indent 请注重引言的书写，除国际最新研究状况外，应尽量引用国内相关领域研究近况。引言部分，阐述本文工作时，应交待“要做什么”，而不是“做了什么”。引言不计入章节编号。
  ]
}

//
#pagebreak()
#pagebreak()
#set par(hanging-indent: 2em)

#text(font: "SimHei", weight: "bold", size: 10.5pt)[参考文献：]
#let wx_one = times_text[\[1\]] + h(1em) + header_hanzi_regular_rule[侯娇艳.软件工程领域中组合数学的应用] + times_text[\[J\]. ] + header_hanzi_regular_rule[现代信息科技, ] + times_text[2018, 2(12): 96-97+100.]

#let wx_two = times_text[\[2\]] + h(1em) + header_hanzi_regular_rule[冯旭阳.组合数学思想在计算机软件开发的应用] + times_text[\[J\].] + header_hanzi_regular_rule[信息记录材料, ] + times_text[2020, 21(11): 42-43.]

#wx_one

#wx_two
