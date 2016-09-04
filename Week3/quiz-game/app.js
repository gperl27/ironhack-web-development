var read = require("read");
var Question = require("./lib/question");
var Quiz = require("./lib/quiz");

var q1 = new Question("How many states are there in the US?", "50", 1);
var q2 = new Question("What is 2 + 2?", "4", 2);
var q3 = new Question("What language does Rails use?", "Ruby", 3);
var q4 = new Question("Who invented the Internet?", "Tim Berners Lee", 4);

var myQuiz = new Quiz();
myQuiz.addQuestion(q1);
myQuiz.addQuestion(q2);
myQuiz.addQuestion(q3);
myQuiz.addQuestion(q4);

myQuiz.assignBonusQuestion();

function askQuestions(quiz, index){
    updateOptions(quiz, quiz.questions[index].text, quiz.questions[index].answer, quiz.questions[index].id, index);
    read(options, checkInput);
}

function checkInput(err, input){
  if(options.answer === input && options.quiz !== undefined){
      options.quiz.sumPoints(options.quiz.questions[options.id-1]);
      console.log("CORRECT!!!");
      if(options.quiz.questions[options.index].bonus){
        console.log("***You got BONUS points!!***");
      }
      console.log("You currently have " + options.quiz.totalPoints + " points.");
      console.log("");
      if(options.quiz.questions[options.index+1] !== undefined){
        options.index++;
        askQuestions(options.quiz, options.index);
      } else {
        console.log("");
        console.log("Final score: " + options.quiz.totalPoints);
        console.log("thanks for playing!");
      }
    } else {
      options.quiz.minusPoints(options.quiz.questions[options.id-1]);
      console.log("WRONGGGGGG");
      console.log("You currently have " + options.quiz.totalPoints + " points.");
      askQuestions(options.quiz, options.index);
    }
}

function updateOptions(quiz, text, answer, id, index){
  options = {
      quiz: quiz,
      prompt: text,
      answer: answer,
      id: id,
      index: index
    }
}

askQuestions(myQuiz, 0);