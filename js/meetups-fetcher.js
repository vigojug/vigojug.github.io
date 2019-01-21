$().ready(function() {
    // Templates
    var pastMeetupTemplate = $.templates('#past-meetup-template');
    var upcomingMeetupTemplate = $.templates('#upcoming-meetup-template');

    // Utility functions
    function formatDate(dateStr) {
        // Original format YYYY-MM-DD
        var parts = dateStr.split('-');
        return parts[2] + '/' + parts[1] + '/' + parts[0];
    }

    // Upcoming events
    $.ajax({
        url: '//api.meetup.com/VigoJUG/events?status=upcoming&fields=featured_photo',
        dataType: 'jsonp',
        jsonp: 'callback',
        success: function(response) {
            if (response.data.length > 0) {
                $.each(response.data, function() {
                    this.formated_date = formatDate(this.local_date) + ' ' + this.local_time;
                    $('#upcoming-meetups-container').append(upcomingMeetupTemplate.render(this));
                });   
            } else {
                $('#no-upcoming-meetup').show();
            }
        }
    });

    // Past events
    $.ajax({
        url: '//api.meetup.com/VigoJUG/events?status=past&fields=featured_photo&page=6&desc=true',
        dataType: 'jsonp',
        jsonp: 'callback',
        success: function(response) {
            $.each(response.data, function() {
                this.formated_date = formatDate(this.local_date) + ' ' + this.local_time;
                $('#past-meetups-container').append(pastMeetupTemplate.render(this));
            });
        }
    });
});