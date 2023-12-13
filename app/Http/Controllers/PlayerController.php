<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Career;
use App\Models\Leader;
use App\Models\Question;
use App\Models\SessionQuestion;

class PlayerController extends Controller
{
    public function Career()
    {
        $careers = Career::all();
        return view("Player.Career", compact('careers'));

        
    }
    public function submitCarrier(Request $request)
{
    $careerId = $request->input('career');
    $career = Career::find($careerId);

    if (!$career) {
        return redirect()->back()->with('error', 'Career not found.');
    }

    $randomQuestions = Question::where('career_id', $career->id)
        ->inRandomOrder()
        ->limit(10)
        ->get();

    if ($randomQuestions->isEmpty()) {
        return redirect()->back()->with('error', 'No questions for this career.');
    }

    $sessionQuestion = new SessionQuestion();
    foreach ($randomQuestions as $index => $question) {
        $sessionQuestion->{'question_id_' . ($index + 1)} = $question->id;
    }
    $sessionQuestion->save();

    $qst = Question::find($sessionQuestion->question_id_1);
    $idg  = 1;
    $pnt = 0;
    $ids = $sessionQuestion->id;

    return view('Player.Game', compact('qst', 'idg', 'pnt', 'ids'));
}

           public function game(Request $request) {
            if($request->input('idg')==10){
                $test = Question::find($request->idq);
                $pnt = $request->pnt;
                $answer= $request->input('answer');
                $point = $test->{'points_' . ($answer)};
                $pnt = $pnt + $point;
                $feedback =  $test->{'feedback_' . ($point)};
                $update = SessionQuestion::find($request->ids);
    $update->{'points_' . ($request->idg)} = $point;
    $update->save();
    $qst = $test;
    $idg = $request->idg +1;
    $ids = $request->ids;
    return view('Player.Game', compact('qst','idg','pnt','ids','feedback'));

            }
            elseif($request->input('ids')){
                $test = Question::find($request->idq);
                $pnt = $request->pnt;
                $answer= $request->input('answer');
                $point = $test->{'points_' . ($answer)};
                $pnt = $pnt + $point;
                $feedback =  $test->{'feedback_' . ($point)};
                $update = SessionQuestion::find($request->ids);
    $update->{'points_' . ($request->idg)} = $point;
    $update->save();
                $qst = Question::find($update->{'question_id_' . ($request->idg+1)});
                $idg = $request->idg + 1  ;
                $ids = $request->ids;
                    return view('Player.Game', compact('qst','point','idg','pnt','ids','feedback'));}
           }
        public function leader(Request $request){
            if(!$request->input('player_name')){
            $ids = $request->input('ids');
            $pnt = $request->input('pnt');
            return view('Player.Name', compact('pnt','ids'));
        }else{
            $ids = $request->input('ids');
            $pnt = $request->input('pnt');
            $name = $request->input('player_name');
            $create =  new Leader();
            $create -> full_name = $name;
            $create -> points = $pnt;
            $create -> id_session_question = $ids;
            $create->save();
            return redirect()->route('leaderbored');



        }
         }
        public function leaderbored(){
            $leaders = Leader::orderBy('points', 'desc')->get();
            return view('Player.Leader',compact('leaders'));
        }
        public function admin(){
            $careers = Career::all();
            return view("Admin", compact('careers'));
        }
      public function adminadd($id){
    $career = Career::find($id);

    if (!$career) {
        return redirect()->back()->with('error', 'Career not found.');
    }

    return view("addquest", compact('career'));
}
public function adminaddq(Request $request){
    // Assuming you have the 'id' value in the request
    $careerId = $request->input('idc');

    // Find the career by ID
    $career = Career::find($careerId);

    // Check if the career exists
    if (!$career) {
        return redirect()->back()->with('error', 'Career not found.');
    }

    // Create a new instance of the Question model with form data
    $question = new Question([
        'career_id' => $careerId,
        'question' => $request->input('question'),
        'situation' => $request->input('situation'),
        'answer_1' => $request->input('answer_1'),
        'points_1' => $request->input('points_1'),
        'answer_2' => $request->input('answer_2'),
        'points_2' => $request->input('points_2'),
        'answer_3' => $request->input('answer_3'),
        'points_3' => $request->input('points_3'),
        'answer_4' => $request->input('answer_4'),
        'points_4' => $request->input('points_4'),
        'feedback_0' => $request->input('feedback_0'),
        'feedback_50' => $request->input('feedback_50'),
        'feedback_100' => $request->input('feedback_100'),
    ]);

    // Save the new question
    $question->save();

    // Redirect to the admin route
    return redirect()->route('admin')->with('succes', 'Question added successfully.');
}

        public function addcareer(Request $request){
            $career = new Career();
            $career->name = $request->career;
            $career->save();
            return redirect()->back()->with('succes', 'Career created successfully.');
        }


        }


        
    
       
    

