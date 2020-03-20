$(document).on('ready turbolinks:load', function(){

  var token = $( 'meta[name="csrf-token"]' ).attr( 'content' );

  $.ajaxSetup( {
    beforeSend: function ( xhr ) {
      xhr.setRequestHeader( 'X-CSRF-Token', token );
    }
  });

  $('#calendar').fullCalendar({
      
    events: '/completeds/index.json',
    eventRender: function(event, element) { 
      element.find('.fc-title').text(event.point_name); 
    },
    eventLimit: true, // for all non-TimeGrid views
  views: {
    timeGrid: {
      eventLimit: 6 // adjust to 6 only for timeGridWeek/timeGridDay
    }
  }
  
  })

});