package com.balance.sys.service;


import com.balance.common.vo.ComboboxVO;
import com.balance.sys.dao.SysFunctionDao;
import com.balance.sys.dao.SysModuleDao;
import com.balance.sys.dao.SysUserDao;
import com.balance.sys.model.SysFunction;
import com.balance.sys.model.SysModule;
import com.balance.sys.model.SysUser;
import com.balance.sys.model.SysUserdata;
import com.balance.sys.vo.SysUserSearchVO;
import com.balance.util.cache.EhCacheUtil;
import com.balance.util.code.SerialNumUtil;
import com.balance.util.encrypt.EncryptUtil;
import com.balance.util.string.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class SysUserService {
    private static Logger logger = LoggerFactory.getLogger(SysUserService.class);
    @Autowired
    private SysUserDao sysUserDao;
    @Autowired
    private SysModuleDao sysModuleDao;
    @Autowired
    private SysFunctionDao sysFunctionDao;


    /**
     * 用户新增，先判断用户名是否存在 返回2，账号已存在，返回1操作成功
     */
    public int add(SysUser sysUser) {
        int flag = 0;
        int usernameCount = sysUserDao.getUsernameCount(sysUser.getUsername());
        if (usernameCount > 0)
            flag = 2;
        else {
            // 设置密码
            String password = "123456";
            String randomcode = SerialNumUtil.createRandowmNum(6);
            String md5Pass = EncryptUtil.getMd5(password + "-" + randomcode);
            sysUser.setPassword(md5Pass);
            sysUser.setRandomcode(randomcode);
            flag = sysUserDao.add(sysUser);
            flag = 1;
        }
        return flag;
    }

    public int update(SysUser sysUser) {
        int flag = 0;
        flag = sysUserDao.update(sysUser);
        return flag;
    }

    public int delete(int id) {
        return sysUserDao.delete(id);
    }

    public SysUser get(int id) {
        return sysUserDao.get(id);
    }

    public SysUser getByUsername(String username) {
        SysUser sysUser = sysUserDao.getByUsername(username);
//        String cover_url = baseUserInfoDao.getCover(sysUser.getId());
//
//        sysUser.setCover_url(cover_url);
        return sysUser;
    }

    /**
     * 用户列表
     */
    public List<SysUser> list(SysUserSearchVO sysUserSearchVO, int pageIndex, int pageSize) {
        List<SysUser> list = sysUserDao.list(sysUserSearchVO, pageIndex, pageSize);
        return list;
    }

    /**
     * 用户列表总数
     */
    public int listCount(SysUserSearchVO sysUserSearchVO) {
        return sysUserDao.listCount(sysUserSearchVO);
    }

    /**
     * 生成menu json串
     */
    public String createMenu(int user_id) {
        List<SysModule> listModule = sysModuleDao.listByUser_id(user_id);
        String json = "";
        json = createMenu(listModule, 1);
        return "[" + json + "]";
    }

    private String createMenu(List<SysModule> list, int parent_id) {
        String str = "";
        for (SysModule sysModule : list) {
            if (sysModule.getParent_id() == parent_id) {
                str += "{\"module\":\"" + sysModule.getId() + "\",\"parent_id\":" + sysModule.getParent_id() + ",\"text\":\"" + sysModule.getName() + "\",\"glyph\":" + sysModule.getIconImg()
                        + ",\"url\":\"" + sysModule.getUrl() + "\",\"expanded\":" + true + "";
                if (sysModule.getCnt() > 0)
                    str += ",\"iconCls\"  : 'iconFolder',\"children\":[" + createMenu(list, sysModule.getId()) + "]";
                else {
                    str += ",\"leaf\":true,\"iconCls\"  : 'iconFile'";
                }
                str += "},";
            }
        }
        str = StringUtil.subTract(str);
        return str;
    }

    /**
     * 获取用户页面操作权限,把页面的按钮置为,默认显示所有只读按钮
     */
    public String createBtnAutho(int role_id, String moduleCode) {
        StringBuilder sb = new StringBuilder();
        List<SysFunction> listModuleFunction = EhCacheUtil.get("sysCache", "moduleContainFunction" + moduleCode);//获取该页面的所有按钮
        if (listModuleFunction == null) {
            SysModule sysModule = sysModuleDao.getByModuleCode(moduleCode);
            listModuleFunction = sysFunctionDao.listByModule_id(sysModule.getId());//获取当前模块下的所有按钮
            EhCacheUtil.put("sysCache", "moduleContainFunction" + moduleCode, listModuleFunction);
        }
        HashMap<Integer, SysFunction> hashRoleFunction = EhCacheUtil.get("sysCache", "roleContainFunction" + role_id);//获取该角色的所有按钮
        if (hashRoleFunction == null) {
            hashRoleFunction = new HashMap<Integer, SysFunction>();
            List<SysFunction> listFunction = sysFunctionDao.listByRole_id(role_id);
            for (SysFunction sysFunction : listFunction)
                hashRoleFunction.put(sysFunction.getId(), sysFunction);
            EhCacheUtil.put("sysCache", "roleContainFunction" + role_id, hashRoleFunction);
        }
        for (SysFunction sysFunction : listModuleFunction) {
            if (hashRoleFunction.containsKey(sysFunction.getId())) {
                sb.append("var hide" + sysFunction.getCode() + "=" + false + ";");
            } else {
                sb.append("var hide" + sysFunction.getCode() + "=" + true + ";");
            }
        }
        return sb.toString();

    }

    /**
     * 登录后修改个人信息 返回0失败，1成功，2原密码输入错误
     */
    public int updateInfo(SysUser sysUser, String oldPass, String newPass) {
        int flag = 0;
        SysUser getUser = sysUserDao.get(sysUser.getId());
        // 判断原密码是否为空，不为空则修改新密码
        if (StringUtil.isNotNullOrEmpty(oldPass)) {
            String encrypPass = EncryptUtil.getMd5(oldPass + "-" + getUser.getRandomcode());// 把oldPass加密，看是否与数据库一致
            if (encrypPass.equals(getUser.getPassword())) {
                //				String newRandomcode = SerialNumUtil.createRandowmNum(6);
                //				String md5Pass = EncryptUtil.getMd5(newPass + "-" + newRandomcode);
                //				sysUserDao.updatePass(getUser.getId(), md5Pass, newRandomcode);
                flag = 1;
            } else {
                flag = 2;
            }
        }

        if (flag != 2) {
            sysUserDao.updateInfo(sysUser);
            flag = 1;
        }
        return flag;
    }

    /**
     * 修改密码
     */
    public int updatePass(int id, String oldPass, String newPass) {
        int flag = 0;
        SysUser getUser = sysUserDao.get(id);
        // 判断原密码是否为空，不为空则修改新密码
        if (StringUtil.isNotNullOrEmpty(oldPass)) {
            String encrypPass = EncryptUtil.getMd5(oldPass + "-" + getUser.getRandomcode());// 把oldPass加密，看是否与数据库一致
            if (encrypPass.equals(getUser.getPassword())) {
                String newRandomcode = SerialNumUtil.createRandowmNum(6);
                String md5Pass = EncryptUtil.getMd5(newPass + "-" + newRandomcode);
                sysUserDao.updatePass(getUser.getId(), md5Pass, newRandomcode);
                flag = 1;
            } else {
                flag = 2;
            }
        }
        return flag;
    }

    /**
     * 校验密码是否正确
     */
    public boolean checkPass(SysUser sysUser, String password) {
        String encrypPass = EncryptUtil.getMd5(password + "-" + sysUser.getRandomcode());
        if (encrypPass.equals(sysUser.getPassword()))
            return true;
        else
            return false;
    }

    /**
     * 重置密码
     */
    public int saveResetPass(int id) {
        int flag = 0;
        try {
            String password = "123456";
            String randomcode = SerialNumUtil.createRandowmNum(6);
            String md5Pass = EncryptUtil.getMd5(password + "-" + randomcode);
            sysUserDao.updatePass(id, md5Pass, randomcode);
            flag = 1;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            flag = 0;
        }
        return flag;
    }

    /**
     * 修改状态，锁定解锁用户时使用
     */
    public int updateStatus(int id, int status) {
        return sysUserDao.updateStatus(id, status);
    }

    /**
     * 所有人员列表，查询日志使用
     */
    public List<ComboboxVO> listAllUser() {
        return sysUserDao.listAllUser();
    }

    public static void main(String[] args) {
        System.out.println(EncryptUtil.getMd5("123456" + "-" + "133999"));
    }

    /**
     * 用户数据权限列表
     */
    public List<SysUserdata> listUserdatas(int user_id) {
        return sysUserDao.listUserdatas(user_id);
    }

    /**
     * 修改状态
     */
    public int saveUserdata(int user_id, List<SysUserdata> listData) {
        sysUserDao.deleteUserdata(user_id);
        for (SysUserdata sysUserdata : listData) {
            sysUserDao.addUserdata(sysUserdata.getUser_id(), sysUserdata.getWarehouse_id());
        }
        return 1;
    }

    /**
     * 用户列表
     */
    public List<SysUser> listAll() {
        List<SysUser> list = sysUserDao.listAll();
        return list;
    }

    /**
     * 获取权限
     *
     * @param userId
     * @param userType
     * @return
     */
    public String getDateRange(int userId, int userType) {
        if (userType == 1) {//1管理员
            return "";
        } else {//2业务员
            return " and t.user_id=" + userId;
        }

    }
}
