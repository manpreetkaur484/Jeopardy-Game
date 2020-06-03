package ca.sheridancollege.bean;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Question implements Serializable{
	
	private static final long serialVersionUID = 1L;
	public String category;
	public int value;
	public String question;
    public String answer1;
    public String answer2;
    public String answer3;
    public String answer4;
    public String correctanswer;
}
