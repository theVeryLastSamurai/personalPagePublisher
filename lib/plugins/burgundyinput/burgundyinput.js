/*

    # How to Exploit #########################################################################################################
    #                                                                                                                        #
    #   use $("#myElements").BurgundyInput(options);   to Initiate the BurgundyInput Plugin for #myElements                  #
    #   options include information about the Columns of the Table:                                                          #
    #       {                                                                                                                #
    #           title: "the Title appearing on the Heading part of the Panel",                                               #
    #           color: "which can have values 'default' or 'success' or 'danger' ",                                          #
    #           fields: ['column1_title', 'column2_title', 'column3_title', ],                                               #
    #           draganddropcallback: function(tr#1,tr#2)                                                                     #
    #           removecallback: function(tr)//called before remove                                                           #
    #       }                                                                                                                #
    #                                                                                                                        #
    #   ******************************************************************************************************************   #
    #                                                                                                                        #
    #   Once you've already Initiated #myElements as a BurgundyInput element just like illustrated above,                    #
    #   use $("#myElements").BurgundyInput("add", options);  to add a new Row to the table with your own desired content     #
    #   options include information for the new row, such as:                                                                #
    #       {                                                                                                                #
    #           values: [ 'column1 value', 'column2 value', 'column3 value']                                                 #
    #       }                                                                                                                #
    #                                                                                                                        #
    ##########################################################################################################################


*/





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
    var BurgundyInputVars = "defaultPluginName",
        defaults = {
            title: "- Burgundy Input -",
            color: "default",
            fields: ['field#1','field#2'],
            draganddropcallback: function(){},
            removecallback: function(){}
        };

    // The actual plugin constructor
    function BurgundyInput( element, options ) {
        this.element = element;

        // jQuery has an extend method that merges the
        // contents of two or more objects, storing the
        // result in the first object. The first object
        // is generally empty because we don't want to alter
        // the default options for future instances of the plugin
        this.options = $.extend( {}, defaults, options) ;

        this._defaults = defaults;
        this._name = BurgundyInputVars;
        this.draggedRow;
        this.init();
    }

    BurgundyInput.prototype = {

        init: function() {
            // Place initialization logic here
            // You already have access to the DOM element and
            // the options via the instance, e.g. this.element
            // and this.options
            // you can add more functions like the one below and
            // call them like so: this.yourOtherFunction(this.element, this.options).
            var fields_html="";
            this.options.fields.forEach(function(f){
                fields_html+="<th>"+f+"</th>";
            });

            var input_fields_html="";
            this.options.fields.forEach(function(f){
                input_fields_html+="<td><input type='text' class='form-control' placeholder='enter "+f+"' /></td>";
            });

            $(this.element).append("\
                <div class='panel panel-"+this.options.color+"'>\
                    <div class='panel-heading'>\
                        "+this.options.title+"\
                        <a style='cursor:pointer;' class='pull-right AddNewItemButton'><span style='color: "+ ((this.options.color=='success')?'white':'black') +";' class='glyphicon glyphicon-plus'></span></a>\
                    </div>\
                    <div class='panel-body'>\
                        <table class='table'>\
                            <thead>\
                                <tr>\
                                    <th>#</th>\
                                    "+fields_html+"\
                                    <th>Remove</th>\
                                </tr>\
                            </thead>\
                            <tbody>\
                            </tbody>\
                        </table>\
                    </div>\
                </div>\
            ");
            /* was added within <tbody>

                                <tr style='transition: background-color 0.2s ease;' >\
                                    <th scope='row' draggable='true' title='Drag and Drop' >1</th>\
                                    "+input_fields_html+"\
                                    <td draggable='true'    title='Drag and Drop' ></td>\
                                </tr>\
            */
            var obj=this;
            var el=this.element;
            $(this.element).find(".AddNewItemButton").click(function(){
                $.data(el,'plugin_BurgundyInput').add();
            });


            var el=this.element;
            $(this.element).find("tr:last .RemoveItemButton").click(function(){
                $.data(el,'plugin_BurgundyInput').remove( $(this).closest('tr') );
            });

            $(this.element).find("tr:last [draggable=true]").on("dragstart",function(){
                $.data(el,'plugin_BurgundyInput').draggedRow=$(this).closest('tr').addClass("Dragged");
            });
            $(this.element).find("tr:last").on("dragover",function(event){
                event.preventDefault();
                $(this).closest('tr').addClass("DragOver");
            });
            $(this.element).find("tr:last").on("dragleave",function(){
                $(this).closest('tr').removeClass("DragOver");
            });
            $(this.element).find("tr:last").on("drop",function(){

                if(obj.options.draganddropcallback) obj.options.draganddropcallback( $.data(el,'plugin_BurgundyInput').draggedRow, $(this) );

                var temp=[];
                $(this).find("input[type=text]").each(function(){
                    temp.push($(this).val());                            
                })
                var i=0;
                $.data(el,'plugin_BurgundyInput').draggedRow.find("input[type=text]").each(function(){
                    var very_temp=$(this).val();
                    $(this).val(temp[i]);
                    temp[i]=very_temp;
                    i++;
                });
                i=0;
                $(this).find("input[type=text]").each(function(){
                    $(this).val(temp[i++]);
                })
                $.data(el,'plugin_BurgundyInput').draggedRow=null;
                $(el).find(".Dragged").removeClass("Dragged");
                $(el).find(".DragOver").removeClass("DragOver");
            });
        },

        add: function(options) {
            var input_fields_html="";
            var i=0;
            
            this.options.fields.forEach(function(f){
                input_fields_html+="<td><input type='text' class='form-control' placeholder='enter "+f+"' /></td>";
            });

            var NewItem="\
                <tr  style='transition: background-color 0.2s ease;' >\
                    <th scope='row' draggable='true' title='Drag and Drop' >1</th>\
                    "+input_fields_html+"\
                    <td draggable='true' title='Drag and Drop' ><a class='RemoveItemButton' style='cursor:pointer;' ><span class='glyphicon glyphicon-minus'></span></a></td>\
                </tr>\
            ";

            $(this.element).find("tbody").append(NewItem);
            this.refresh();

            var i=0;
            $(this.element).find("tbody tr:last input[type=text]").each(function(){
                if(options && options.values)
                    $(this).val(options.values[i++]);
            });

            var obj=this;
            var el=this.element;
            $(this.element).find("tr:last .RemoveItemButton").click(function(){
                $.data(el,'plugin_BurgundyInput').remove( $(this).closest('tr') );
            });

            $(this.element).find("tr:last [draggable=true]").on("dragstart",function(){
                $.data(el,'plugin_BurgundyInput').draggedRow=$(this).closest('tr').addClass("Dragged");
            });
            $(this.element).find("tr:last").on("dragover",function(event){
                event.preventDefault();
                $(this).closest('tr').addClass("DragOver");
            });
            $(this.element).find("tr:last").on("dragleave",function(){
                $(this).closest('tr').removeClass("DragOver");
            });
            $(this.element).find("tr:last").on("drop",function(){

                if(obj.options.draganddropcallback) obj.options.draganddropcallback( $.data(el,'plugin_BurgundyInput').draggedRow, $(this) );

                var temp=[];
                $(this).find("input[type=text]").each(function(){
                    temp.push($(this).val());                            
                })
                var i=0;
                $.data(el,'plugin_BurgundyInput').draggedRow.find("input[type=text]").each(function(){
                    var very_temp=$(this).val();
                    $(this).val(temp[i]);
                    temp[i]=very_temp;
                    i++;
                });
                i=0;
                $(this).find("input[type=text]").each(function(){
                    $(this).val(temp[i++]);
                });
                $.data(el,'plugin_BurgundyInput').draggedRow=null;
                $(el).find(".Dragged").removeClass("Dragged");
                $(el).find(".DragOver").removeClass("DragOver");

            });
        },

        refresh: function(el, options){// refreshes the numbers assigned to each row
            var i=1;
            $(this.element).find('th[scope=row]').each(function(){
                $(this).html(i++);
            });
        },

        remove: function(row){ //row is the jquery object of the row to be removed
            this.options.removecallback(row);
            row.remove();
            this.refresh();
        }
    };

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn["BurgundyInput"] = function ( arg1, arg2) {
        return this.each(function () {
            var options;
            if( typeof arg1=="string" && $.data(this,"plugin_BurgundyInput")){
                if(typeof arg2=="object"){
                    options=arg2;
                }else if(typeof arg2 ==undefined){
                    options=null;
                }
                switch(arg1.toLowerCase()){
                    case 'add':
                        $.data(this,"plugin_BurgundyInput").add(options);
                    break;
                }
            }else if (!$.data(this, "plugin_BurgundyInput")) {
                if(typeof arg1 == undefined ){
                    options=null;
                }else if(typeof arg1== "object"){
                    options= arg1;
                    $.data(this, "plugin_BurgundyInput",
                    new BurgundyInput( this, options ));
                    $("head").append("\
                        <style>\
                            .DragOver{\
                                background-color: #952828;\
                            }\
                            .Dragged{\
                                background-color: #969594;\
                            }\
                        </style>"
                    );
                }
            }
        });
    };

    

})( jQuery, window, document );