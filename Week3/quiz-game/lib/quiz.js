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
}