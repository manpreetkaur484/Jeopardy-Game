package ca.sheridancollege.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ca.sheridancollege.bean.Player;
import ca.sheridancollege.bean.Question;
import ca.sheridancollege.database.DatabaseAccess;

@Controller
public class HomeController {
	
	@Autowired
	private DatabaseAccess da;

	@GetMapping("/")
	public String goHome(){
		return "LoginPage.html";
	}
	
	@GetMapping("/add")
	public String login(@RequestParam (required= false) String name,
HttpSession session) {
	Player player = new Player();
	player.setName(name);
	player.setScore(0);
	session.setAttribute("player", player);
	return "GameBoard.html";
	}
	
	@GetMapping("/game")
	public String goHome2() {
		return "QuestionPage.html";
	}
	
	@GetMapping("/pickQuestion")
	public String pickQuestion (HttpSession session,
			         @RequestParam String category,
			         @RequestParam int value) {
		Question ques = da.getQuestion(category, value);
		session.setAttribute("question", ques);
		return "QuestionPage.html";
	}
	
	@GetMapping("/answerQuestion")
	public String answerQuestion(HttpSession session,
			@RequestParam String choice) {
		Player player= (Player)session.getAttribute("player");
		Question ques = (Question)session.getAttribute("question");
		//double score=0;
		
		if(ques.getCorrectanswer().equalsIgnoreCase(choice)) {
		    player.setScore(player.getScore()+ques.getValue());
		}
		else {
			player.setScore(player.getScore()-ques.getValue());
	}
		
		session.setAttribute("player", player);
		session.setAttribute("question", ques);
		
		return "GameBoard.html";
	}
}
