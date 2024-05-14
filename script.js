$(document).ready(function () {
    let currentMovieId; 

    // loading url and getting one id from id
    let url = window.location.href; //called url
    let paramId = url.includes('=') ? Number(url.slice(url.indexOf('=')+1)) : null;
    paramId ? loadMovies(paramId) : loadMovies();


    // Delete a movie
    $(document).on("click", ".delete", function () {
        const movieId = $(this).data("id");

        $.ajax({
            url: `/movies/${movieId}`,
            type: "DELETE",
            success: function () {
                loadMovies(); 
            },
        });
    });

    // Add a movie
    $("#addMovieForm").on("submit", function (e) {
        e.preventDefault();
        const movie = {
            title: $("#title").val(),
            year: $("#year").val(),
            director: $("#director").val(),
            rating: $("#rating").val(),
        };

        $.ajax({
            url: "/movies",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(movie),
            success: function () {
                loadMovies(); 
            },
        });
    });


    // Open modal for updating
    $(document).on("click", ".update", function () {
        const movieId = $(this).data("id");
        currentMovieId = movieId; // Store the book ID
        const movieRow = $(this).closest("tr");
        $("#updateTitle").val(movieRow.find("td:eq(1)").text());
        $("#updateYear").val(movieRow.find("td:eq(2)").text());
        $("#updateDirector").val(movieRow.find("td:eq(3)").text());
        $("#updateRating").val(movieRow.find("td:eq(4)").text());
        $("#updateModal").modal("show"); // Open modal
    });


    // Update a movie
    $("#updateMovieForm").on("submit", function (e) {
        e.preventDefault();
        const movie = {
            title: $("#updateTitle").val(),
            year: $("#updateYear").val(),
            director: $("#updateDirector").val(),
            rating: $("#updateRating").val(),
        };

        $.ajax({
            url: `/movies/${currentMovieId}`,
            type: "PUT",
            contentType: "application/json",
            data: JSON.stringify(movie),
            success: function () {
                loadMovies(); 
                $("#updateModal").modal("hide"); // Close modal
            },
        });
    });


    //Load all movies
    function loadMovies(id = null) {
        $.ajax({
            url: "/movies",
            type: "GET",
            data: {id : id},
            success: function (movies) {
                const tableBody = $("#moviesTable tbody");
                tableBody.empty(); //clear prev data

                movies.forEach((movie) => {
                    tableBody.append(`
                    <tr>
                        <td>${movie.id}</td>
                        <td>${movie.title}</td>
                        <td>${movie.year}</td>
                        <td>${movie.director}</td>
                        <td>${movie.rating}</td>
                        <td>
                            <button class="btn delete" data-id="${movie.id}">Delete</button>
                            <button class="btn update" data-id="${movie.id}">Update</button>
                        </td>
                    </tr>
                `);
                });
            },
        });
    }
});