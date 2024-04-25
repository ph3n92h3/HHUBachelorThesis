#import "@preview/cuti:0.2.0": show-cn-fakebold
#show: show-cn-fakebold

#let 宋体 = ("Times New Roman", "SimSun")
#let 黑体 = ("Times New Roman", "SimHei")
#let 字号 = (
  初号: 42pt,
  小初: 36pt,
  一号: 26pt,
  小一: 24pt,
  二号: 22pt,
  小二: 18pt,
  三号: 16pt,
  小三: 15pt,
  四号: 14pt,
  中四: 13pt,
  小四: 12pt,
  五号: 10.5pt,
  小五: 9pt,
  六号: 7.5pt,
  小六: 6.5pt,
  七号: 5.5pt,
  八号: 5pt,
)

#set heading(numbering: "1.1")
#set figure(numbering: num => {
  [#counter(heading.where(level: 1)).get().first().#num]
})
#set math.equation(numbering: num => {
  [(#counter(heading.where(level: 1)).get().first().#num)]
})
#set page(margin: (x: 3cm, y: 2.5cm))
#set par(leading: 15.5pt, first-line-indent: 2em, justify: true)
#set text(font: 宋体, size: 字号.小四, lang: "zh", hyphenate: false)

// 中文封面
#text(
  font: "SimHei",
  size: 10pt,
)[
  #h(1fr) 学号 #box(width: 5em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))[2010020129]\
  #h(1fr) 年级 #box(
    width: 5em,
    stroke: (bottom: 0.5pt),
    outset: (bottom: 2pt),
  )[#h(0.75em) 2020 级 #h(0.75em)]
]
#v(32pt)
#set align(center)
#image("HHULogo.png")
#v(32pt)#v(32pt)
#text(font: 宋体, size: 字号.一号)[ *本科毕业论文* ]
#v(32pt)
#text(font: 黑体, size: 字号.二号)[*植物对泥沙沉降规律的影响研究*]
#v(32pt) #text(
  size: 15pt,
)[
  #text(font: 黑体)[*专#h(2em)业*] #box(width: 10em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))[**]\
  #text(font: 黑体)[*姓#h(2em)名*] #box(width: 10em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))[**]\
  #text(font: 黑体)[*指导老师*] #box(width: 10em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))[**]\
  #text(font: 黑体)[*评#h(0.5em)阅#h(0.5em)人*] #box(width: 10em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))[**]
  #v(32pt)#v(32pt)
  #text(font: 黑体)[*X X X X 年 X 月\ 中国#h(1em)南京*]
]
#pagebreak()

// 英文封面
#set align(center)
#text(size: 字号.二号)[
  #par(leading: 0.8em)[*BACHELOR'S DEGREE THESIS\ OF HOHAI UNIVERSITY*]\
  #v(32pt)\
  *Writing the title of the paper in English here*
]\
#v(32pt)#v(32pt)#v(32pt)\
#text(size: 字号.四号)[
  #table(
    columns: 2,
    gutter: 1em,
    align: left,
    stroke: none,
    [College],
    [: XXX XXX],
    [Subject],
    [: XXX XXX],
    [Name],
    [: X X X],
    [Directed by],
    [: XXX Professor],
  )
]
#v(32pt)#v(32pt)\
#text(size: 字号.小二)[
  NANJING CHINA
]
#pagebreak()

#set align(start)

// 学术声明
#align(center)[#text(size: 字号.二号)[*郑 重 声 明*]]
#v(32pt)
#par(
  leading: 13.5pt,
)[#text(
    size: 14pt,
  )[
    本人呈交的毕业论文，是在导师的指导下，独立进行研究工作所取得的成果，所有数据、图片资料真实可靠。尽我所知，除文中已经注明引用的内容外，本设计（论文）的研究成果不包含他人享有著作权的内容。对本设计（论文）所涉及的研究工作做出贡献的其他个人和集体，均已在文中以明确的方式标明。本设计（论文）的知识产权归属于培养单位。
    #v(32pt)#v(32pt)#v(32pt)#v(32pt)
    #par(
      first-line-indent: 0pt,
    )[本人签名：#box(width: 7em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))[] #h(3em) 日期：#box(width: 7em, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))[]]
  ]]
#pagebreak()#pagebreak()
#set page(numbering: "I")
#counter(page).update(1)

// 中文摘要
#v(32pt)
#{
  show heading: none
  heading(level: 1, numbering: none)[摘要]
  align(center)[#text(font: 黑体, size: 字号.小二)[摘#h(1em)要]]
}
#v(32pt)
由于泥沙与水流的相互作用，使得河流发生演变，因此泥沙特性与水流特性均是河流动力学的重要研究课题。当水流中含有植物时，水流的紊动特性会发生明显的改变，从而引起泥沙的一些特性如沉速发生改变。本文以实验为基础，结合理论分析，研究了在静水条件下刚性植物对泥沙沉速的影响，同时在水槽中通过改变流量来研究在恒定均匀流条件下非淹没植物对泥沙沉降轨迹的影响，得到如下主要结论：\
#align(center)[……\ ……\ ……]
#text(font: 黑体)[关键词：] 关键词 1；关键词 2；关键词 3
#pagebreak()

// 英文摘要
#v(32pt)
#{
  show heading: none
  heading(level: 1, numbering: none)[ABSTRACT]
  align(center)[#text(size: 字号.小二)[*ABSTRACT*]]
}
#v(32pt)
Fluvial river processes evolve over time in response to the constant interaction
between sediment and the water column. If vegetation is present within the water
column, the change in turbulence characteristics will impact the movement of
sediment, in particular the settling velocity. In this paper, the influence of
vegetation on the settling velocities of sediment particles is studied
experimentally. The non-submerged vegetation friction factor in steady uniform
flow is considered by under different flumedischarge quantities. The main
outcomes can be summarized as follows:

*Key words:* sediment；rigid vegetation；settling velocity；turbulence characterize
#pagebreak()

// 目录
#show outline.entry.where(level: 1): it => {
  text(size: 字号.四号)[*#it*]
}
#{
  show heading: none
  heading(level: 1, numbering: none)[目 录]
  align(center)[#text(font: 黑体, size: 字号.小二)[*目 录*]]
}
#outline(title: "")
#pagebreak()

// 章节标题
#set heading(numbering: (..nums)=>{
  if nums.pos().len() == 1 {
    [第 #nums.pos().first() 章]
  } else {
    numbering("1.1", ..nums)
  }
})

#show heading.where(level: 1): it => {
  set align(center)
  text(font: 黑体, size: 字号.小二)[#it]
}
#show heading.where(level: 2): it => {
  text(font: 黑体, size: 字号.四号)[#it]
}
#show heading.where(level: 3): it => {
  text(font: 黑体, size: 字号.小四)[#it]
}

// 正文
#set page(header: [
  #set block(spacing: 6pt)
  #align(center)[#text(size: 字号.五号)[河海大学本科毕业论文]]
  #line(length: 100%, stroke: 0.4pt)
])
#set page(numbering: "1")
#counter(page).update(1)

= 绪论

== 问题的提出及研究意义

#h(2em) 泥沙在自然界中的河流中普遍存在着，泥沙含量的不同影响着河流流态，加上各种泥沙特性不同，使得河流泥沙问题更加复杂多变。如广泛分布在黄河流域一带的黄土地质均匀，其粉砂含量占 $60\% ~ 70\%$，缺乏团粒结构，粒间的固结主要依靠硫酸钙质，这种硫酸钙质遇水极易溶解流失，加上黄土孔隙率极高，抗蚀能力很差。

=== 问题提出

#h(2em) 近年来，随着环境的日益恶化，人们对生态日益重视，含有植物的水流问题也已经成为河流动力学研究中的热点之一。直观的了解，河渠水流中的植物不仅减少了过水面积，加大了河渠地面的粗糙程度，降低了河渠的行洪能力，加大了两岸的洪灾威胁。
@钱宁1983 @唐洪武2007 @kouwen1969 @Gourlay1970

#pagebreak()

公式、图文示例：

（1）公式示例：单颗粒球体在无限水体中等速下沉时，其沉速机理可看作对称绕流阻力与颗粒有效重力相平衡，即 $ (gamma_s - gamma) dot.c pi D^3 / 6 = C_D pi gamma dot.c omega^2 / (2 g) dot.c D^2 / 4 $

Stokes 曾以粘滞性流体的一般性的运动方程式作基础，忽略惯性项的条件下推导出滞留区的阻力系数为 $ C_D = 24 \/ upright("Red") $

（2）表示例：

（3）图示例：
#text(
  font: 黑体,
  size: 字号.五号,
)[#figure(image("HHUBachelorThesis.png"), caption: [清水明渠水流下 w2 工况下的三维时均流速图])]

#pagebreak()

#bibliography("HHUBachelorThesis.bib", style: "gb-7714-2005-numeric")