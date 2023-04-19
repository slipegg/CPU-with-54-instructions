# CPU-with-54-instructions

同济大学计算机组成原理作业——使用Verilog HDL语言实现54条MIPS指令的CPU的设计和仿真和下板，在NEXYS 4 DDR Atrix-7开发板上完成。

配备有较为完整的设计文件，结合报告应该能看懂。

使用Verilog语言来设计CPU指令并不算难，但主要是比较繁琐，并且设计部分需要很大的功夫而且debug难度较大。

## 指令流程图

![image](https://user-images.githubusercontent.com/65942634/233070299-c0461e88-00db-4d2f-b05a-50547f00efcf.png)

操作：Add rd,rs,rt ;rd←rs+rt,PC←NPC(PC+4)
所需部件：PC、NPC、IMEM、Regfile、ALU

![image](https://user-images.githubusercontent.com/65942634/233070333-c8dfdea3-f1dd-4304-8fee-68e445a58acc.png)

操作：Addu rd,rs,rt ;rd←rs+rt,PC←NPC(PC+4)
所需部件：PC、NPC、IMEM、Regfile、ALU

![image](https://user-images.githubusercontent.com/65942634/233070357-f61c45a5-4511-40c9-8cb6-3e7eafdfce8c.png)

操作：Sub rd,rs,rt ;rd←rs-rt,PC←NPC(PC+4)
所需部件：PC、NPC、IMEM、Regfile、ALU

...

具体54条指令的完整流程图可查看报告

**总体数据通路图：**

![image](https://user-images.githubusercontent.com/65942634/233070516-d1926045-8983-4fed-8b01-67645d830a02.png)

**各指令所使用的部件及联系：**

![image](https://user-images.githubusercontent.com/65942634/233070561-49c43ad1-5f12-44dc-8a46-0e30685bc2ee.png)

## 模块建模

整体模块结构如下：

![image](https://user-images.githubusercontent.com/65942634/233070680-c9f6f897-2dd7-42dc-a134-5104158e5833.png)


## 实验结果

前仿真截图，调试过程将大量结果都输出出来好检查：

![image](https://user-images.githubusercontent.com/65942634/233070843-b36146d1-7170-47a4-abbb-2397b174da63.png)

![image](https://user-images.githubusercontent.com/65942634/233070851-a73a57b1-f06c-494c-80d2-cb291f237828.png)

按提交要求得到的前仿真截图：

![image](https://user-images.githubusercontent.com/65942634/233070907-f23581d6-edce-4dfb-9b5c-e67413cc2b2b.png)

![image](https://user-images.githubusercontent.com/65942634/233070921-54a1e4fc-912d-436f-850a-33bb09138706.png)

![image](https://user-images.githubusercontent.com/65942634/233070931-d3addf4d-bc9b-4a4a-af17-5b8c8261d422.png)

将寄存器的内容用文件输出出来：

![image](https://user-images.githubusercontent.com/65942634/233070973-7f497a0c-f507-4aa1-8d4b-bb1b34426104.png)

后仿真截图：

![image](https://user-images.githubusercontent.com/65942634/233071016-fcd067e3-4e18-443b-ba0c-6635df3faa80.png)

可以看到相比于前仿真后仿真上面每一个指令都相较于PC后移了一些位置，即加入了门电路的延迟。

得到的时序报告：

![image](https://user-images.githubusercontent.com/65942634/233071070-48cafeff-0188-4009-b06d-382b686b81bb.png)

下板图片：

![image](https://user-images.githubusercontent.com/65942634/233071083-cdf9f8e9-5958-4c77-b888-ebf1872c50d6.png)

数码管显示的PC值能稳定在004013d8的原因是最后是陷入了4013d4,4013d8，4013dc的死循环，这样数字叠加的结果就是如上了
