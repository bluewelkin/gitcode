<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<script src="${staticServer}/assets/js/src/elements.fileinput.js"></script>
<script src="${staticServer}/assets/js/jquery.form.js"></script>
<div id="uploadImg-modal" class="modal fade" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header no-padding">
                <div class="table-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <span class="white">&times;</span>
                    </button>
                    上传照片
                </div>
            </div>
            <div class="modal-body no-padding">
                <div class="widget-box" style="border: none">
                    <div class="widget-body">
                        <div class="widget-main">
                            <form id="uploadImg-form" action="${dynamicServer}/common/upload.htm"
                                  enctype="multipart/form-data" method="post">
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <input type="hidden" value="" name="file_type">
                                        <input name="file" type="file" id="uploadImg-input"
                                               accept="image/png,image/jpeg,image/gif,image/bmp"/>
                                    </div>
                                    <div class="col-xs-12" style="margin: 5px 0">
                                        <span>支持格式为<span class="green"> png、jpeg、jpg、gif、bmp </span>的图片文件</span>
                                    </div>
                                    <div class="col-xs-12" align="center">
                                        <button class="btn btn-white btn-primary" type="submit">
                                            <i class="ace-icon fa fa-cloud-upload bigger-110"></i> 上传
                                        </button>
                                        <button class="btn btn-white btn-primary" type="button" id="close-modal"
                                                data-dismiss="modal">
                                            <i class="ace-icon fa fa-undo bigger-110"></i> 取消
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer no-margin-top"></div>
        </div>
    </div>
</div>

<script>
    $(document).ready(
        function () {
            $('#uploadImg-input').ace_file_input({
                style: 'well',
                btn_choose: '点击选择图片',
                btn_change: null,
                no_icon: 'ace-icon fa fa-picture-o',
                droppable: false,
                allowExt: ["jpeg", "jpg", "png", "gif", "bmp"],
                allowMime: ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"],
                thumbnail: 'large',//large | fit
                maxSize: 1024000000,//bytes
                //,icon_remove:null//set null, to hide remove/reset button
                /**,before_change:function(files, dropped) {
							//Check an example below
							//or examples/file-upload.html
							return true;
						}*/
                before_remove: function () {
                    return true;
                }
            }).on('change', function () {
                if ($('#uploadImg-input').val() == '') {
                    $('#uploadImg-input').ace_file_input('reset_input');
                }
            }).on('file.error.ace', function (ev, info) {
                if (info.error_count['ext'] || info.error_count['mime'])
                    bootbox.alert("请选择文件!");
                if (info.error_count['size'])
                    bootbox.alert("文件大小不超过1G!");
            });

            $("#uploadImg-form").on('submit', function (e) {
                var imgcheck = $("#uploadImg-input").val();
                if (imgcheck == '') {
                    return false;
                }
                $("#uploadImg-form").ajaxSubmit({
                    type: 'post', // 提交方式 get/post
                    url: '${dynamicServer}/common/fileUpload.htm', // 需要提交的 url
                    success: function (data) { // data 保存提交后返回的数据，一般为 json 数据
                        var dataObj = eval("(" + data + ")");
                        var file_path = dataObj.createFilepath + "/" + dataObj.createFilename;
                        var file_name = dataObj.oldFilename;
                        $("#close-modal").click();
                        $("#deleteImg").attr("style", "");
                        $("#file_path").val(file_path);
                        $("#file_name").val(file_name);

                        var url = '${imageServer}' + file_path;
                        $("#cover_img").removeClass('hidden').attr('src', url);
                    }
                });
                return false;
            });
            $("#deleteImg").on('click', function () {
                bootbox.confirm('确认删除该头像吗?', function (result) {
                    if (result) {
                        var path = $("#file_path").val();
                        $.ajax({
                            url: '${dynamicServer}/common/deleteFile.htm',
                            data: {
                                path_name: path
                            },
                            type: 'post',
                            success: function (result) {
                                var dataObj = eval("(" + result + ")");
                                console.log(dataObj.success)
                                if (dataObj.success) {
                                    $("#cover_img").addClass('hidden').attr('src', '');
                                    $("#deleteImg").attr("style", "display:none");
                                    $('#uploadImg-input').ace_file_input('reset_input');
                                } else {
                                    bootbox.alert("文件路径错误");
                                }
                            }
                        })
                    }
                })

            });

        });
</script>