package ca.sheridancollege.database;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import ca.sheridancollege.bean.Question;

@Repository
public class DatabaseAccess {
	
	@Autowired
	private NamedParameterJdbcTemplate jdbc;

	//GET QUESTION BY CATEGORY AND VALUE
	public Question getQuestion(String category, int value) {
		//Question question;
		MapSqlParameterSource parameters = new MapSqlParameterSource();
		String query = "SELECT * FROM questions where category=:category and value=:value";
		parameters.addValue("category", category);
		parameters.addValue("value", value);
		ArrayList<Question> questions =
				(ArrayList<Question>)jdbc.query(query, parameters, new
						BeanPropertyRowMapper<Question>(Question.class));
	
		
		if(questions.size()>0)
			return questions.get(0);
		else
			return null;
		//return question;
	}
}
