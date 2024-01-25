import router from '@ohos.router';
import Prompt from '@system.prompt';

// import {OriginalRecipe_DataBase} from '../entryability/OriginalRecipe_DataBase';

@Entry
@Component

struct OriginalRecipe_AddRecipe {
  private recipe_name:string="";
  private recipe_foodtype:string="";
  private recipe_step:string="";
  return_value:string[]=[];

  build() {
    Column({space:30}) {
      Row() {
        Button() {
          Image($r("app.media.recipe_back"))
            .width("40%")
            .height("40%")
        }
        .width("20%")
        .height("100%")
        .backgroundColor(Color.White)
        .onClick(()=>{
          console.info(`will back soon.`)
          router.back()
        })

        TextInput({placeholder:'在此处输入菜谱名称'})
          .width("50%")
          .height("100%")
          .backgroundColor(Color.White)
          .onChange((recipe_name)=>{
            this.recipe_name=recipe_name;
          })

        Button() {
          Image($r("app.media.recipe_storeB"))
            .width("40%")
            .height("40%")
        }
        .width("20%")
        .height("100%")
        .backgroundColor(Color.White)
        .onClick(()=>{
          if(this.recipe_name!=""&&this.recipe_foodtype!=""&&this.recipe_step!=""){
            // OriginalRecipe_DataBase.get().add(this.recipe_name,this.recipe_foodtype,this.recipe_step)
            this.return_value = [this.recipe_name,this.recipe_foodtype,this.recipe_step];
            router.pushUrl({url:'pages/Index',params:this.return_value});
            Prompt.showToast({
              message:"保存成功",
            })
          }else{
            Prompt.showDialog({
              message:"请全部输入后再进行保存",
              buttons:[
                {
                  text:"我知道了",
                  color:"#0000ff"
                }
              ]
            })
          }
        })

      }
      .width("100%")
      .height("7.5%")
      .justifyContent(FlexAlign.SpaceBetween)

      TextArea({placeholder:'在此处输入食材及用量'})
        .height("40%")
        .onChange((recipe_foodtype)=>{
          this.recipe_foodtype=recipe_foodtype;
        })


      TextArea({placeholder:'在此处输入步骤'})
        .height("40%")
        .onChange((recipe_step)=>{
          this.recipe_step=recipe_step;
        })
    }
  }
}
