
@Component
export default struct Instruction {
  scroller: Scroller = new Scroller();
  private arr: string[] = [
    "1. 先把鸡肉切成丁，并用生粉和料酒进行腌制",
    "2. 接着生抽和老抽混合好并且兑上水，可以放适当的白糖。",
    "3. 将胡萝卜和黄瓜切成丁备用",
    "4. 油烧热后放入鸡丁，炒至变色后加入混合调料液。",
    "5. 然后倒入胡萝卜和黄瓜，并加盐翻炒。",
    "6. 收汁之后加入花生。",
    "7. 搅拌均匀之后，就可以出锅了。"
  ];

  build(){
    Scroll(this.scroller) {
      Column() {
        ForEach(this.arr, (item?:number|undefined) => {
          if(item){
            Text(item.toString())
              .width('90%')
              .height(150)
              .backgroundColor(0xFFFFFF)
              .borderRadius(15)
              .fontSize(16)
              .textAlign(TextAlign.Center)
              .margin({ top: 10 })
          }
        }, (item: string) => item)
      }.width('100%')
    }
    .backgroundColor(0xDCDCDC)
    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    .scrollBar(BarState.On) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .scrollBarWidth(10) // 滚动条宽度
    .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
  }
}