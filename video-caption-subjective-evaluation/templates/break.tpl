% rebase('templates/skeleton.tpl', title=title, use_noback=False)

<div class="d-flex flex-column align-items-center justify-content-center"
     style="min-height: 60vh; background-color: #f5f5f5; margin: -1rem; padding: 2rem;">

  <h1 class="mb-3">Take a Short Break</h1>

  <p class="lead text-center mb-4">
    You may take a short break before continuing the evaluation.
    Continue when you are ready.
  </p>

  <a class="btn btn-lg btn-success" href="/rate/{{stimuli_idx}}">
    Continue
  </a>

</div>