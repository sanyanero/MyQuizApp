import {Routes} from '@angular/router'
import { RegisterComponent } from './register/register.component';
import { QuizComponent } from './quiz/quiz.component';
import { ResultComponent } from './result/result.component';
import { AuthGuard } from './auth/auth.guard';
import { SubjectPageComponent } from './subject-page/subject-page.component';

export const appRoutes : Routes =[
    {path:'register',component:RegisterComponent},
    {path:'subject-page',component:SubjectPageComponent,canActivate : [AuthGuard]},
    {path:'quiz',component:QuizComponent,canActivate : [AuthGuard]},
    {path:'result',component:ResultComponent,canActivate : [AuthGuard]},
    {path:'',redirectTo:'/subject-page',pathMatch:'full'}
];