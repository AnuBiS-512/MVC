<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Manage Questions</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="d-flex flex-column align-items-center justify-content-center">
    <div class="container min-vh-100">
        <div class="text-center mb-4">
            <h2>Manage Questions</h2>
        </div>
        @if(session('succes'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session('succes') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <form method="POST" action="{{route('addcareer')}}" class="needs-validation mb-4" novalidate>
    @csrf

    <div class="mb-3">
        <label for="career_id" class="form-label">Enter new Career:</label>
        <input type="text" class="form-control" id="career" name="career" required>
    </div>

    <button type="submit" class="btn btn-primary">Add Career</button>
</form>


        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Career ID</th>
                    <th scope="col">Career Description</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
            @foreach($careers as $career)
    <tr>
        <td>{{ $career->id }}</td>
        <td>{{ $career->name }}</td>
        <td>
            <a href="{{ route('adminadd', ['id' => $career->id]) }}" class="btn btn-primary">Add Question</a>
        </td>
    </tr>
@endforeach

            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
