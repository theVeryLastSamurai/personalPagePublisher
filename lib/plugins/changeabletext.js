
/*!
 * jQuery lightweight plugin boilerplate
 * Original author: @ajpiano
 * Further changes, comments: @addyosmani
 * Licensed under the MIT license
 */

// the semi-colon before the function invocation is a safety
// net against concatenated scripts and/or other plugins
// that are not closed properly.
;(function ( $, window, document, undefined ) {

    // undefined is used here as the undefined global
    // variable in ECMAScript 3 and is mutable (i.e. it can
    // be changed by someone else). undefined isn't really
    // being passed in so we can ensure that its value is
    // truly undefined. In ES5, undefined can no longer be
    // modified.

    // window and document are passed through as local
    // variables rather than as globals, because this (slightly)
    // quickens the resolution process and can be more
    // efficiently minified (especially when both are
    // regularly referenced in your plugin).

    // Create the defaults once
    var ChangeableTextVars="defaultPluginName",
    defaults = {
        placeholder: "enter text",
        DataChangedCallback: "",
        DataEmptyAllowed: false
    };

    // The actual plugin constructor
    function ChangeableText( element, options, value ) {
        this.element = element;

        // jQuery has an extend method that merges the
        // contents of two or more objects, storing the
        // result in the first object. The first object
        // is generally empty because we don't want to alter
        // the default options for future instances of the plugin
        this.options = $.extend( {}, defaults, options) ;

        this.style="div.ChangeableText >input[type=text]{ display: none;} div.ChangeableText >button.okbutton{ display: none;}";

        this.value=value;

        this._defaults = defaults;
        this._name = ChangeableTextVars;
        this.init();
    }

    ChangeableText.prototype = {

        init: function() {
            // Place initialization logic here
            // You already have access to the DOM element and
            // the options via the instance, e.g. this.element
            // and this.options
            // you can add more functions like the one below and
            // call them like so: this.yourOtherFunction(this.element, this.options).

            $(this.element).addClass("ChangeableText");

            $("head").append("<style type='text/css'>"+this.
                style+"</style>");

            $(this.element).attr('data-changed','false');
            $(this.element).attr('data-value',this.value);
            var el=this;
            $(this.element).append(function(){
                return "\
                <label></label>\
                <button class='editbutton btn btn-warning' title='Click To Change'><span class='glyphicon glyphicon-edit'></span></button>\
                <input type='text' />\
                <button class='okbutton btn btn-success'><span class='glyphicon glyphicon-ok'></span></button>\
                ";
            });
            $(this.element).find("label").html(el.value);
            $(this.element).find("input[type=text]").val(el.value);
            $(this.element).find("input[type=text]").attr('placeholder',el.options.placeholder);

            $(this.element).find("button.editbutton").click(function(){
                $(this).parent().attr('data-changed','true');
                $(this).siblings("input[type=text]").val($(this).siblings("label").html());

                $(this).siblings("input[type=text]").fadeIn();
                $(this).siblings("button.okbutton").fadeIn();
                $(this).siblings("label").hide();
                $(this).hide();
            });
            $(this.element).find("button.okbutton").click(function(){
                if($(this).hasClass("disabled"))return;
                var val=$(this).siblings("input[type=text]").val();
                $(this).parent().attr('data-value',val);
                $(this).siblings("label").html(val);
                
                $(this).siblings("label").fadeIn();
                $(this).siblings("button.editbutton").fadeIn();
                $(this).siblings("input[type=text]").hide();
                $(this).hide();

                if(el.options.DataChangedCallback)
                    el.options.DataChangedCallback();
                /*if($(this).parent().attr('data-change-callback') && window[$(this).parent().attr('data-change-callback')]){
                    window[$(this).parent().attr('data-change-callback')]();
                }*/
            });
            $(this.element).find('input[type=text]').on('input',function(e){
                if($(this).parent().attr('data-EmptyAllowed')=="true")return;
                var btn=$(this).siblings("button.okbutton");
                if($(this).val()==""){
                    btn.addClass("disabled");
                    btn.attr('title','You Can\'t leave the Field Empty');
                }else{
                    btn.removeClass("disabled");
                    btn.attr('title','');
                }
            });
            
        }
    };

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn["ChangeableText"] = function ( arg1, arg2) {
        return this.each(function () {
            if(!$.data(this,"plugin_ChangeableText")){
                var value;
                var options;
                if(typeof arg1=="object"){
                    options=arg1;
                    if(typeof arg2=="string"){
                        value=arg2;
                    }
                }else if(typeof arg1=="string"){
                    value=arg1;
                }
                $.data(this, "plugin_ChangeableText", new ChangeableText( this, options ,value ));
            }else{
                if(typeof arg1=="string"){
                    $.data(this,"plugin_ChangeableText").value=arg1;
                    $(this).find("input[type=text]").val(arg1);
                    $(this).find("label").html(arg1);
                    $(this).attr("data-value",arg1);
                }
            }
        });
    };

    

})( jQuery, window, document );




/*
    To Use this Plugin, all you gotto do is include this JS script and use:
        <div class="ChangeableText" data-value='something' ></div>
    Now, while changing the text,if user leaves it empty, the OK button disables
    to also allow an empty input, you can use:
        <div class="ChangeableText" data-value='something' data-EmptyAllowed='true' ></div>
    also, when you retrieve the data-changed attribute ,if equal to 'true' means the user HAS changed the label
*/
/*
var style="div.ChangeableText >input[type=text]{ display: none;} div.ChangeableText >button.okbutton{ display: none;}";
$("head").append("<style type='text/css'>"+style+"</style>");
$("div.ChangeableText").attr('data-changed','false');
$("div.ChangeableText").append(function(){
    var CurrentLabel=$(this).attr('data-value');
    return "\
    <label>"+CurrentLabel+"</label>\
    <button class='editbutton btn btn-warning' title='Click To Change'><span class='glyphicon glyphicon-edit'></span></button>\
    <input type='text' placeholder='Page Title' value='"+CurrentLabel+"' />\
    <button class='okbutton btn btn-success'><span class='glyphicon glyphicon-ok'></span></button>\
    ";
});
$("div.ChangeableText >button.editbutton").click(function(){
    $(this).parent().attr('data-changed','true');
    $(this).siblings("input[type=text]").val($(this).siblings("label").html());

    $(this).siblings("input[type=text]").fadeIn();
    $(this).siblings("button.okbutton").fadeIn();
    $(this).siblings("label").hide();
    $(this).hide();
});
$("div.ChangeableText >button.okbutton").click(function(){
    if($(this).hasClass("disabled"))return;
    var val=$(this).siblings("input[type=text]").val();
    $(this).parent().attr('data-value',val);
    $(this).siblings("label").html(val);
    
    $(this).siblings("label").fadeIn();
    $(this).siblings("button.editbutton").fadeIn();
    $(this).siblings("input[type=text]").hide();
    $(this).hide();

    if($(this).parent().attr('data-change-callback') && window[$(this).parent().attr('data-change-callback')]){
        window[$(this).parent().attr('data-change-callback')]();
    }
});
$('div.ChangeableText >input[type=text]').on('input',function(e){
    if($(this).parent().attr('data-EmptyAllowed')=="true")return;
    var btn=$(this).siblings("button.okbutton");
    if($(this).val()==""){
        btn.addClass("disabled");
        btn.attr('title','You Can\'t leave the Field Empty');
    }else{
        btn.removeClass("disabled");
        btn.attr('title','');
    }
});
*/