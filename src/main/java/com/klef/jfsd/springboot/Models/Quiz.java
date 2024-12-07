package com.klef.jfsd.springboot.Models;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "quiz_table")
public class Quiz {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String description;

    @ElementCollection
    private List<String> questionTexts;

    @ElementCollection
    private List<List<String>> options;

    @ElementCollection
    private List<String> correctAnswers;

    public Quiz() {
        this.questionTexts = new ArrayList<>();
        this.options = new ArrayList<>();
        this.correctAnswers = new ArrayList<>();
    }

    // Getters and setters omitted for brevity

    public void addQuestion(String questionText, List<String> questionOptions, String correctAnswer) {
        this.questionTexts.add(questionText);
        this.options.add(questionOptions);
        this.correctAnswers.add(correctAnswer);
    }

	public void setTitle(String title2) {
		// TODO Auto-generated method stub
		
	}

	public void setDescription(String description2) {
		// TODO Auto-generated method stub
		
	}
}
