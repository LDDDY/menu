import image from '@ohos.multimedia.image';
import IngredientsDetailsData from './IngredientsDetailsData';

export enum CategoryId{
  HotFood = 0,
  ColdFood,
  Soup,
  Snack,
  Dessert
}

export default class FoodData{
  id:string = "0";
  foodName :string = "";
  description: string = "";
  image:Resource|null = $r("app.media.icon")
  CategoryId : CategoryId = CategoryId.HotFood;
  DetailData : IngredientsDetailsData = new IngredientsDetailsData([],[],[],"","","","");

  constructor(id:string ,foodName:string,desc:string,category:CategoryId) {
    this.foodName = foodName;
    this.id = id;
    this.description = desc;
    this.CategoryId = category;
  }
}