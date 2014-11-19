// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require ckeditor/init
//= require	default.include.5f2f92
//= require scripts.min
//= require zilla-likes
//= require userpro-social
//= require userpro-emd
//= require jquery.ui.core.min
//= require jquery.ui.datepicker.min
//= require comment-reply.min
//= require default.include-footer.1c51fd
//= require jquery.fitvids
//= require social-share-button




$(function() {
        likebutton =
            '<fb:like href="" send="" width="100" show_faces="" ' +
            'font="" layout="button_count" action="recommend">' +
            '</fb:like>';
        $.getScript('http://connect.facebook.net/en_US/all.js', function() {
                FB.init({appId: 141936272547391,
                            status: true,
                            cookie: true,
                            xfbml: true
                            });
                $('#facebook').replaceWith(likebutton);
        });
    });