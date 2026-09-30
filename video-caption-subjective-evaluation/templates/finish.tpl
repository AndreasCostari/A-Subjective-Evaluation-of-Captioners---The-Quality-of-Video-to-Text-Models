% rebase('templates/skeleton.tpl', title=title)

<h1 class="mt-5">Evaluation Completed</h1>

<p class="lead">
    Thank you for participating in this study.
</p>

<p>
    You have completed the formal evaluation.
</p>

<p>
    Your responses have been recorded successfully.
</p>

<a class="btn btn-large btn-success" href="/rc">
    Start New Participant
</a>


% if False:

% rebase('templates/skeleton.tpl', title=title)

<h1 class="mt-5">You're done :)</h1>
<p>Thank you for participating!</p>

<a class="btn btn-large btn-success" href="/rc">Restart</a>

% end
