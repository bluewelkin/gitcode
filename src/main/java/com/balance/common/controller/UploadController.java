package com.balance.common.controller;

import com.balance.util.code.SerialNumUtil;
import com.balance.util.config.PubConfig;
import com.balance.util.date.DateUtil;
import com.balance.util.file.FileUtil;
import com.balance.util.json.JsonUtil;
import com.balance.util.string.StringUtil;
import com.balance.util.web.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;

/**
 * 文件上传controller
 *
 * @author chykong
 */
@Controller
@RequestMapping("/common")
public class UploadController {
    @Autowired
    private PubConfig pubConfig;

    @RequestMapping("/upload")
    public void upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request,
                       HttpServletResponse response, ModelMap model) {
        String uploadPath = pubConfig.getImageUploadPath();
        String storePath = "/proFile/" + DateUtil.getShortSystemDate() + "/";
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
        // String fileName = new Date().getTime()+".jpg";
        String createFilename = DateUtil.getShortSystemTime() + SerialNumUtil.createRandowmNum(6) + "." + suffix;
        File targetFile = new File(uploadPath + storePath, createFilename);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        String json = getjson(file, createFilename, storePath, targetFile);
        WebUtil.out(response, json);
    }

    @RequestMapping("/fileUpload")
    public void fileUpload(@RequestParam(value = "file", required = false) MultipartFile file, String file_type, HttpServletRequest request,
                           HttpServletResponse response, ModelMap model) {
        String uploadPath = pubConfig.getImageUploadPath();
        file_type = StringUtil.isNullOrEmpty(file_type) ? "file" : file_type;
        String storePath = "/" + file_type;
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
        // String fileName = new Date().getTime()+".jpg";
        String createFilename = DateUtil.getShortSystemTime() + SerialNumUtil.createRandowmNum(6) + "." + suffix;
        File targetFile = new File(uploadPath + storePath, createFilename);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        String json = getFilejson(file, createFilename, fileName, storePath, targetFile);
        WebUtil.out(response, json);
    }

    @RequestMapping("/logoUpload")
    public void logoUpload(@RequestParam(value = "file", required = false) MultipartFile file,
                           HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        String uploadPath = pubConfig.getImageUploadPath();
        String storePath = "/logo";
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
        // String fileName = new Date().getTime()+".jpg";
        String createFilename = DateUtil.getShortSystemTime() + SerialNumUtil.createRandowmNum(6) + "." + suffix;
        File targetFile = new File(uploadPath + storePath, createFilename);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        String json = getjson(file, createFilename, storePath, targetFile);
        WebUtil.out(response, json);
    }

    /**
     * 个人中心背景上传
     *
     * @param bg_file
     * @param request
     * @param response
     * @param model
     */
    @RequestMapping("/indexbgUpload")
    public void indexbgUpload(@RequestParam(value = "bg_file", required = false) MultipartFile bg_file,
                              HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        String uploadPath = pubConfig.getImageUploadPath();
        String storePath = "/userindex_bg";
        String fileName = bg_file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
        // String fileName = new Date().getTime()+".jpg";
        String createFilename = DateUtil.getShortSystemTime() + SerialNumUtil.createRandowmNum(6) + "." + suffix;
        File targetFile = new File(uploadPath + storePath, createFilename);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        String json = getjson(bg_file, createFilename, storePath, targetFile);
        WebUtil.out(response, json);
    }

    @RequestMapping("/qrbackUpload")
    public void qrbackUpload(@RequestParam(value = "file", required = false) MultipartFile file,
                             HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        String uploadPath = pubConfig.getImageUploadPath();
        String storePath = "/qrshare";
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
        String createFilename = DateUtil.getShortSystemTime() + SerialNumUtil.createRandowmNum(6) + "." + suffix;
        File targetFile = new File(uploadPath + storePath, createFilename);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        String json = getjson(file, createFilename, storePath, targetFile);
        WebUtil.out(response, json);
    }

    public String getjson(MultipartFile file, String createFilename, String storePath, File targetFile) {
        String json = "";
        if (file.getSize() > 1 * 1024 * 1024) {
            json = "{success:" + false + ",msgText:'" + "文件超过1M" + "'}";
        } else {
            // 保存
            try {
                file.transferTo(targetFile);
                json = "{success:" + true + ",msgText:'" + "成功" + "',createFilename:'" + createFilename
                        + "',createFilepath:'" + storePath + "'}";
            } catch (Exception e) {
                json = "{success:" + false + ",msgText:'" + "上传失败" + e.getMessage() + "'}";
                e.printStackTrace();
            }
        }
        return json;
    }

    public String getFilejson(MultipartFile file, String createFilename, String oldFilename, String storePath, File targetFile) {
        String json = "";
        if (file.getSize() > 1024 * 1024 * 1024) {
            json = "{success:" + false + ",msgText:'" + "文件超过1G" + "'}";
        } else {
            // 保存
            try {
                file.transferTo(targetFile);
                json = "{success:" + true + ",msgText:'" + "成功" + "',createFilename:'" + createFilename + "',oldFilename:'" + oldFilename
                        + "',createFilepath:'" + storePath + "'}";
            } catch (Exception e) {
                json = "{success:" + false + ",msgText:'" + "上传失败" + e.getMessage() + "'}";
                e.printStackTrace();
            }
        }
        return json;
    }

    /**
     * 删除文件
     *
     * @param request
     * @param response
     * @param path_name
     */
    @RequestMapping("/deleteFile")
    public void deleteFile(HttpServletRequest request, HttpServletResponse response, String path_name) {
        String sysPath = pubConfig.getImageUploadPath() + path_name;
        sysPath.replaceAll("//", "/");
        FileUtil.delete(sysPath);
        WebUtil.out(response, JsonUtil.createOperaStr(true, "删除成功"));
    }

    @RequestMapping("/uploadError")
    public void uploadError(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("文件超出大小");
        String json = "{success:" + false + ",msgText:'" + "大小查出1M" + "'}";
        WebUtil.out(response, json);
    }

}
