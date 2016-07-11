// $(document).on('ready', function(){
//   $('#create-hit form').on('submit', function(e){
//     e.preventDefault();
//     console.log(e);
//     $.ajax({
//       url: $(this).attr('action'),
//       method: $(this).attr('method'),
//       data: $(this).serialize()
//     }).done(function(response){
//       data = '<%= j(render partial: "/views/games/hit_challenges_list")%>';
//       console.log(data);
//       $("#hit-list").empty();
//       $("#hit-list").html(data);

//     }).fail(function(){
//       console.log('Fail')
//     })
//   })
// })