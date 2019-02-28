package com.cmeu.shiro;

import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.cmeu.pojo.User;
import com.cmeu.service.PermissionService;
import com.cmeu.service.RoleService;
import com.cmeu.service.UserService;

public class UserRealm extends AuthorizingRealm {
	@Autowired
	UserService userService;
	@Autowired
	PermissionService permissionService;
	@Autowired
	RoleService roleService;
	
	public void setName(String name) {
		super.setName("userRealm");
	}
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//能进入到这里，表示账号已经通过验证了
		ShiroUser user =(ShiroUser) principals.getPrimaryPrincipal();
        //授权对象
        SimpleAuthorizationInfo s = new SimpleAuthorizationInfo();
        //把通过service获取到的角色和权限放进去
        s.setStringPermissions(user.getUrls());
        s.setRoles(user.getRoles());
        return s;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String loginName = (String) token.getPrincipal();
		User user = new User();
		user.setLoginName(loginName);
		User loginUser = userService.queryByLoginName(user);
		//账号不存在
		if(loginUser==null) {
			return null;
		}
//		if(loginUser.get) {
//			return null;
//		}
		//通过service获取角色和权限
        Set<String> urls = roleService.listUrls(loginUser.getUserId());
        System.out.println(urls);
        Set<String> roles = roleService.listRoles(loginUser.getUserId());
        
        ShiroUser shiroUser = new ShiroUser(loginUser, urls, roles);
//        ShiroUser shiroUser = new ShiroUser(loginUser.getLoginName());
		
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(shiroUser, loginUser.getPassword(),
				 ByteSource.Util.bytes("") ,this.getName());
		return info;
	}
	
	@Override
	public void onLogout(PrincipalCollection principals) {
		super.clearCachedAuthorizationInfo(principals);
		ShiroUser shiroUser = (ShiroUser) principals.getPrimaryPrincipal();
		removeUserCache(shiroUser);
	}
	/**
	 * 清除用户缓存
	 * @param shiroUser
	 */
	public void removeUserCache(ShiroUser shiroUser) {
		removeUserCache(shiroUser.getUser());
	}

	/**
	 * 清除用户缓存
	 * @param loginName
	 */
	public void removeUserCache(User user) {
		SimplePrincipalCollection principals = new SimplePrincipalCollection();
		principals.add(user, super.getName());
		super.clearCachedAuthenticationInfo(principals);
	}
}
