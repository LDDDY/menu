@Component
export default struct MainPage{
  @Builder itemHead(text: string) {
    // 列表分组的头部组件，对应联系人分组A、B等位置的组件
    Text(text)
      .fontSize(20)
      .backgroundColor('#fff1f3f5')
      .width('100%')
      .padding(5)
  }
  private array : string[] = ["热菜","凉菜","汤羹","小吃","烘焙"]
  private hotFood: string[] = ["宫保鸡丁","肉末豆腐","红烧排骨","腊肠炒土豆"]
  build(){
    List({space:16}){
      ListItem(){
        Text("菜谱列表").fontSize(20).textAlign(TextAlign.Center)
          .width('100%').height('100%')
      }.height(50)
      ForEach(this.array,(item:string)=>{
        ListItemGroup({
          header:this.itemHead(item)
        }){
          if(item == "热菜"){
            ForEach(this.hotFood,(title:string)=>{
              ListItem(){
                Text(title).fontSize(20)
              }
              .height(50)
            })
          }
          if(item == "凉菜"){
            ForEach(this.hotFood,(title:string)=>{
              ListItem(){
                Text(title).fontSize(20)
              }
              .height(50)
            })
          }
          if(item == "汤羹"){
            ForEach(this.hotFood,(title:string)=>{
              ListItem(){
                Text(title).fontSize(20)
              }
              .height(50)
            })
          }
          if(item == "小吃"){
            ForEach(this.hotFood,(title:string)=>{
              ListItem(){
                Text(title).fontSize(20)
              }
              .height(50)
            })
          }
          if(item == "烘焙"){
            ForEach(this.hotFood,(title:string)=>{
              ListItem(){
                Text(title).fontSize(20)
              }
              .height(50)
            })
          }

        }
        .backgroundColor('white')
      })
    }
    .height('100%')
    .cachedCount(6)
  }
}