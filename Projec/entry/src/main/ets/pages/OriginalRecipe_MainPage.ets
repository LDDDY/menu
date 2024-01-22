import router from '@ohos.router';
import { BusinessError } from '@ohos.base';
import Prompt from '@system.prompt';
// import {OriginalRecipe_DataBase} from '../entryability/OriginalRecipe_DataBase';

@Entry
@Component

struct OriginalRecipe_MainPage {
  private array: Array<string[]> = [["1","11","111"],["2","22","222"],["3","33","333"]];
  // private array: Array<string[]> = OriginalRecipe_DataBase.get().queryAll();
  private recipe_foodtype:string="";
  private recipe_step:string="";

  build() {
    Column() {
      Navigation() {
        List({ space: 12 }) {
          ForEach(this.array, (item: string[]) => {
            ListItem() {
              NavRouter() {
                Text(item[0])
                  .width("100%")
                  .height(72)
                  .backgroundColor('#FFFFFF')
                  .borderRadius(24)
                  .fontSize(16)
                  .fontWeight(500)
                  .textAlign(TextAlign.Center)

                NavDestination() {
                  Column({space:30}){
                    TextArea({text:item[1]})
                      .height("40%")
                    .onChange((recipe_foodtype)=>{
                      this.recipe_foodtype=recipe_foodtype;
                    })


                    TextArea({text:item[2]})
                      .height("40%")
                    .onChange((recipe_step)=>{
                      this.recipe_step=recipe_step;
                    })
                  }

                  Button(){
                    Image($r("app.media.recipe_delete"))
                      .width(40)
                      .height(40)
                  }
                  .backgroundColor(Color.Red)
                  .width(50)
                  .height(50)
                  .position({x:'75%',y:'70%'})
                  .onClick(()=>{
                    // OriginalRecipe_DataBase.get().delete(item[0]);
                    router.replaceUrl({
                      url : "pages/OriginalRecipe_MainPage"
                    });
                    Prompt.showToast({
                      message:"删除成功",
                    })
                  })

                  Button(){
                    Image($r("app.media.recipe_storeW"))
                      .width(40)
                      .height(40)
                  }
                  .width(50)
                  .height(50)
                  .position({x:'75%',y:'88%'})
                  .onClick(()=>{
                    // OriginalRecipe_DataBase.get().update(item[0],this.recipe_foodtype,this.recipe_step);
                    Prompt.showToast({
                      message:"更新成功",
                    })
                  })
                }
                .title(item[0])
              }
            }
          }, (item: string): string => item)
        }
      }
      .title('原创食谱')
      .titleMode(NavigationTitleMode.Mini)
      .mode(NavigationMode.Auto)


      Button(){
        Image($r('app.media.recipe_add'))
          .width(40)
          .height(40)
      }
      .width(50)
      .height(50)
      .position({x:'75%',y:'80%'})
      .onClick(()=>{
        console.info(`Successfully click the recipe_add btn.`)
        router.pushUrl({url:'pages/OriginalRecipe_AddRecipe'}).then(()=>{
          console.info(`Successfully jump to OriginalRecipe_AddRecipe.`)
        }).catch ((err:BusinessError)=>{
          console.error(`Failed to jump to OriginalRecipe_AddRecipe.Code is ${err.code}, message is ${err.message}`)
        })
      })
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F1F3F5')
  }
}