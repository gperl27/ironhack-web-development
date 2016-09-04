module.exports = class Question{
  constructor(text, answer, id){
    this.text = text;
    this.answer = answer;
    this.id = id;
    this.points = 4;
  }
}