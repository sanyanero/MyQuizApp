import { Component, OnInit } from '@angular/core';
import { QuizService } from '../shared/quiz.service';
import { Router } from '@angular/router';

@Component({
  selector: 'subject-page',
  templateUrl: './subject-page.component.html',
  styleUrls: ['./subject-page.component.css']
})
export class SubjectPageComponent implements OnInit {

  constructor(private quizService: QuizService, private route : Router) { }

  subjects = ['DotNet', 'Java'];

  ngOnInit() {
  }
}
