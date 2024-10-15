<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    public function FeedbackUser(Request $request) {

        $name = $request->input('name');
        $email = $request->input('email');
        $subject = $request->input('subject');
        $message = $request->input('message');

        $feedback = new Feedback();
        $feedback->name = $name;
        $feedback->email = $email;
        $feedback->subject = $subject;
        $feedback->message = $message;
        $feedback->save();

        // Redirect with success message
        return redirect('/')->with('message', 'Thanks :)');

    }
}
