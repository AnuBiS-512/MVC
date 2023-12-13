<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Create Question</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="d-flex flex-column align-items-center justify-content-center">
    <div class="container min-vh-100">
        <!-- Display error message if it exists -->
        @if(session('error'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{ session('error') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif

        <div class="text-center mb-4">
            <h2>Create Question</h2>
        </div>

        <form method="POST" action="{{ route('adminaddq') }}" class="needs-validation" novalidate>
            @csrf

            <div class="mb-3">
                <label for="career_id" class="form-label">Career ID:</label>
                <input type="text" class="form-control" id="career_id" name="career_id"  value ="{{$career->name}}" disabled required>
                <input type="hidden"  name = "idc"  value ="{{$career->id}}"  required>
            </div>

            <div class="mb-3">
                <label for="question" class="form-label">Question:</label>
                <input type="text" class="form-control" id="question" name="question" required>
            </div>

            <div class="mb-3">
                <label for="situation" class="form-label">Situation:</label>
                <input type="text" class="form-control" id="situation" name="situation" required>
            </div>

            <!-- Repeat the following block for each answer and feedback -->
            <div class="mb-3">
                <label for="answer_1" class="form-label">Answer 1:</label>
                <input type="text" class="form-control" id="answer_1" name="answer_1" required>
                <label for="points_1" class="form-label">Points 1:</label>
                <select class="form-select" id="points_1" name="points_1" required>
                    <option value="0">0</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="answer_2" class="form-label">Answer 2:</label>
                <input type="text" class="form-control" id="answer_2" name="answer_2" required>
                <label for="points_2" class="form-label">Points 2:</label>
                <select class="form-select" id="points_2" name="points_2" required>
                    <option value="0">0</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="answer_3" class="form-label">Answer 3:</label>
                <input type="text" class="form-control" id="answer_3" name="answer_3" required>
                <label for="points_3" class="form-label">Points 3:</label>
                <select class="form-select" id="points_3" name="points_3" required>
                    <option value="0">0</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="answer_4" class="form-label">Answer 4:</label>
                <input type="text" class="form-control" id="answer_4" name="answer_4" required>
                <label for="points_4" class="form-label">Points 4:</label>
                <select class="form-select" id="points_4" name="points_4" required>
                    <option value="0">0</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="feedback_0" class="form-label">Feedback 0:</label>
                <input type="text" class="form-control" id="feedback_0" name="feedback_0" required>
            </div>

            <div class="mb-3">
                <label for="feedback_50" class="form-label">Feedback 50:</label>
                <input type="text" class="form-control" id="feedback_50" name="feedback_50" required>
            </div>

            <div class="mb-3">
                <label for="feedback_100" class="form-label">Feedback 100:</label>
                <input type="text" class="form-control" id="feedback_100" name="feedback_100" required>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
    document.addEventListener('DOMContentLoaded', function () {
        var form = document.querySelector('form');

        form.addEventListener('submit', function (event) {
            // Validate points selection
            validatePoints('points_1');
            validatePoints('points_2');
            validatePoints('points_3');
            validatePoints('points_4');
        });

        function validatePoints(pointsId) {
            var points = document.getElementById(pointsId).value;

            if (points !== '0' && points !== '50' && points !== '100') {
                alert(`Invalid points selection for ${pointsId}. Points must be 0, 50, or 100.`);
                event.preventDefault();
            }
        }
    });
</script>
</body>

</html>
