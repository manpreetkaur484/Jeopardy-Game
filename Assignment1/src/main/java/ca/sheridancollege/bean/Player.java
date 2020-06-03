package ca.sheridancollege.bean;

import java.io.Serializable;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Player implements Serializable {

	private static final long serialVersionUID = 1L;
	public String name;
	public double score;
}
