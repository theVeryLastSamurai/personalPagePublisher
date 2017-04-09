var ModalUploadImageSubmitBtn_ClickFunc = function(){
    var Modal=$(this).closest('.modal');
    var progressbar=Modal.find('.progress-bar');

    var url=Modal.find('form').attr('action');
    var file=Modal.find('form input[type=file]')[0].files[0];

    Modal.find('.title .ErrorMsg').remove();

    if(file==null){//check if there's anything in the input
        Modal.find('.title').append("<div style='display:none;' class='ErrorMsg'><small style='color:red'>* Choose an Image & then Upload</small></div>");
        Modal.find('.title .ErrorMsg').fadeIn();
        return;
    }
    
    var ValidImageTypes = ["image/gif", "image/jpeg", "image/png"];

    if ($.inArray(file["type"], ValidImageTypes) < 0) {//check if it's an image (of an allowed extension)
        Modal.find('.title').append("<div style='display:none;' class='ErrorMsg'><small style='color:red'>* [ Invalid File Type ] Choose an Image</small></div>");
        Modal.find('.title .ErrorMsg').fadeIn();
        return;
    }

    if (file.size > 2000000){//check if the file isn't too big
        Modal.find('.title').append("<div style='display:none;' class='ErrorMsg'><small style='color:red'>* [ File Too Big ] Upload an Image of Size 2MB or smaller</small></div>");
        Modal.find('.title .ErrorMsg').fadeIn();
        return;
    }

    var data= new FormData();
    data.append('UploadFile', file);
    $.ajax({
        xhr: function(){
            var xhr=new window.XMLHttpRequest();
            xhr.upload.addEventListener("progress",function(evt){
                if(evt.lengthComputable){
                    var percentComplete=(evt.loaded / evt.total)*100;
                    progressbar.css('width',percentComplete+'%');
                }
            },false);

            return xhr;
        },
        url: url,
        data: data,
        cache: false,
        contentType: false,
        processData: false,
        type: 'POST',
        success: function(data){
            if(data.toLowerCase()=="right"){
                Success("Image Successfully Uploaded");
            }else{
                Failure(data);
            }
            Modal.modal('hide'); //close Upload Modal
            progressbar.css('width','0%');// Reset Progress Bar

            var f=Modal.find('form').attr('data-callback');
            
            f=f.replace(/;(\s+)?$/, ''); // remove last semicolon if any

            if(typeof window[f]=="function")
                window[f]();
        }
    });
};


$('.ModalUploadImageSubmitBtn').click(ModalUploadImageSubmitBtn_ClickFunc);