export default class IngredientsDetailsData {
  // main ingredients
  // <name, amount>
  mainIngre: string[][] = [];

  // auxiliary ingredients
  // <name, amount>
  auxIngre: string[][] = [];

  // flavorings
  // <name, amount>
  flavorings: string[][] = [];

  // flavor
  flavor: string = 'default';

  // cooking techniques
  technique: string = 'default';

  // required time
  requiredTime: string = 'default';

  // level of difficulty
  difficulty: string = 'default';

  constructor(mainIngre: string[][],
              auxIngre: string[][],
              flavorings: string[][],
              flavor: string, technique: string, requiredTime: string, difficulty: string) {
    this.mainIngre = mainIngre;
    this.auxIngre = auxIngre;
    this.flavorings = flavorings;
    this.flavor = flavor;
    this.technique = technique;
    this.requiredTime = requiredTime;
    this.difficulty = difficulty;
  }
}