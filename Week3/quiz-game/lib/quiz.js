module.exports = class Quiz{
  constructor(){
    this.questions = [];
    this.totalPoints = 0;
  }

  addQuestion(question){
    this.questions.push(question);
  }

  sumPoints(question){
    return this.totalPoints += question.points;
  }

  minusPoints(question){
    return this.totalPoints -= question.points;
  }

  assignBonusQuestion() {
    var len = this.questions.length;
    var randomQuestion = [Math.floor((Math.random()*len))];
    this.questions[randomQuestion].bonus = true;
    this.questions[randomQuestion].points *= 2;
  }
}