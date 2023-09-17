// Déclaration des variables pour stocker les éléments HTML et les données temporaires
let videos = [];
let playlist, playlist_container, player, player_btn, searchForm, searchInput;


// Attente du chargement complet de la page
window.addEventListener('load', function() {

    // Association des variables aux éléments HTML correspondants
    playlist = $('.playlist');
    playlist_container = $('.playlist-container');
    player = $('.player');
    player_btn = $('.player-btn');
    searchForm = $('#search-form');
    searchInput = $('#search-input');

    // Gestionnaire de clic sur le bouton de fermeture du lecteur vidéo
    $('.player-btn').click(function() {
        closeVideo();
    });

    // Gestionnaire de soumission du formulaire de recherche
    searchForm.submit(function(event) {
        event.preventDefault(); // Empêche la soumission normale du formulaire
        let query = searchInput.val(); // Récupère la valeur de recherche

        // Requête Ajax à l'API YouTube pour rechercher des vidéos
        $.ajax({
            url: 'https://www.googleapis.com/youtube/v3/search',
            type: 'GET',
            data: {
                part: 'snippet',
                q: query,
                type: 'video',
                maxResults: 25,
                key: 'AIzaSyCSSBkSE9MockaA2F_I2LeO78i3usjjqKE'
            }
        })
        .done(function(res) {
            // Efface la liste de lecture existante
            $('.playlist').empty();

            // Parcours des résultats de la recherche
            res.items.forEach(function(v) {
                // Création d'un élément HTML pour chaque vidéo
                let line = $(
                    '<div class="row">' +
                    '<div class="col col-md-4">' +
                    '<img src="' + v.snippet.thumbnails.default.url + '" data-video-id="' + v.id.videoId + '">' +
                    '</div>' +
                    '<div class="col col-md-8">' +
                    '<h6 class="video-title" data-video-id="' + v.id.videoId + '">' + v.snippet.title + '</h6>' +
                    '<p>' + v.snippet.description + '</p>' +
                    '</div>' +
                    '</div>'
                );
                // Ajout de l'élément à la liste de lecture
                $('.playlist').append(line);
            });

            // Gestionnaire de clic sur le titre d'une vidéo
            $('.playlist').on('click', '.video-title', function() {
                let videoId = $(this).data('video-id'); // Récupère l'ID de la vidéo
                openVideo(videoId); // Affiche la vidéo
                getVideoComments(videoId); // Récupère et affiche les commentaires
                
                // Ajuste la mise en page pour afficher la vidéo
                player.removeClass('d-none').addClass('col-md-8');
                playlist_container.removeClass('col-md-12').addClass('col-md-4');
            });
        });
    });

    // Fonction pour récupérer et afficher les commentaires d'une vidéo
    function getVideoComments(videoId) {
        $.ajax({
            url: 'https://www.googleapis.com/youtube/v3/commentThreads',
            type: 'GET',
            data: {
                part: 'snippet',
                videoId: videoId,
                key: 'AIzaSyCSSBkSE9MockaA2F_I2LeO78i3usjjqKE'
            }
        })
        .done(function(res) {
            let commentsDiv = $('.comments');
            commentsDiv.empty();
            // Parcours des commentaires et affichage
            res.items.forEach(function(item) {
                let comment = item.snippet.topLevelComment.snippet;
                let commentHTML = $('<div class="comment">' +
                    '<img src="' + comment.authorProfileImageUrl + '">' +
                    '<p>' + comment.textDisplay + '</p>' +
                '</div>');
                commentsDiv.append(commentHTML);
            });
        })
        .fail(function(err) {
            console.error(err);
        });
    }

    // Fonction pour afficher une vidéo dans le lecteur
    function openVideo(id) {
        let iframe = $(
            '<div class="ratio ratio-16x9">' +
            '<iframe src="https://www.youtube.com/embed/' + id + '?autoplay=1"></iframe>' +
            '</div>'
        );
        // Affiche l'iframe dans le lecteur
        player.removeClass('d-none').html(iframe);
        player_btn.removeClass('d-none');
        // Ajuste la mise en page
        playlist_container.removeClass('col-md-12').addClass('col-md-4');
    }

    // Fonction pour fermer le lecteur vidéo
    function closeVideo() {
        // Rétablit la mise en page d'origine
        player.addClass('d-none').removeClass('col-md-8');
        player_btn.addClass('d-none');
        playlist_container.removeClass('col-md-4').addClass('col-md-12');
    }
});
