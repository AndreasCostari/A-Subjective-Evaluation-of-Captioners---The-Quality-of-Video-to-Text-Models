<div class="col-12" id="ratingform">

  <!-- Caption -->
  <div class="card mb-4">
    <div class="card-body">
      <h5 class="card-title">Generated Caption</h5>

      <p class="card-text" style="font-size: 1.2rem;">
        {{caption}}
      </p>
    </div>
  </div>

  <!-- Rating question -->
  <h5>{{question}}</h5>

  % route = f"save_rating?stimuli_idx={stimuli_idx}" if not train else "training/" + str(stimuli_idx + 1)

  <form id="form1" action="/{{route}}" method="post">

    <input
      type="hidden"
      name="condition_id"
      value="{{condition_id}}"
    />

    <%
      buttons = [
        {"value": 5, "text": "Excellent"},
        {"value": 4, "text": "Good"},
        {"value": 3, "text": "Fair"},
        {"value": 2, "text": "Poor"},
        {"value": 1, "text": "Bad"},
      ]
    %>

    <div class="funkyradio">

      % for button in buttons:

        <div class="funkyradio-success">
          <input
            type="radio"
            name="acr"
            id="radio_{{button['value']}}"
            value="{{button['value']}}"
            onchange="radiobutton_clicked(this)"
          >

          <label for="radio_{{button['value']}}">
            {{button['value']}} - {{button['text']}}
          </label>
        </div>

      % end

    </div>

    % include('templates/rating/common.tpl', stimuli_file=stimuli_file)

    <button
      type="submit"
      id="submitButton"
      class="btn btn-success btn-block"
      onclick="check_form(event)">
      submit
    </button>

    % if dev:
      <button
        type="submit"
        class="btn btn-success"
        formnovalidate>
        skip (for dev)
      </button>
    % end

    <div
      id="ratingselect"
      class="btn alert-danger"
      style="display:none;cursor:default; margin-top:0.5em; margin-bottom:0.5em"
      disabled>
      Please select a rating.
    </div>

  </form>
</div>


<script>

  var radio_button_clicked = 0;

  function radiobutton_clicked(rb) {
    radio_button_clicked++;
  }

  function check_form(event) {

    // Stop the browser's automatic submission.
    // We will submit manually after validation.
    event.preventDefault();

    console.log(document.getElementById("pi").value);

    document.getElementById("ratingselect").style.display = "none";

    // No rating selected
    if (radio_button_clicked == 0) {

      document.getElementById("ratingselect").style.display = "block";

      return false;
    }

    // Prevent multiple submissions
    var submitButton = document.getElementById("submitButton");

    if (submitButton.disabled) {
      return false;
    }

    submitButton.disabled = true;
    submitButton.innerText = "Submitting...";

    // Submit the form manually
    document.getElementById("form1").submit();

    return false;
  }


  document.addEventListener("keypress", function(event) {

    if ("12345".includes(event.key)) {

      document
        .getElementById("radio_" + event.key)
        .click();
    }

    if (event.keyCode == 13) {

      document
        .getElementById("submitButton")
        .click();
    }

  });

</script>