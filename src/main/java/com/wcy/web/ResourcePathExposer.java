package com.wcy.web;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;
/**
* <p>Title: ResourcePathExposer</p>
* <p>Description:静态资源访问 </p>
* <p>Company: mobao360</p> 
* @author liliang
* @date 2015年10月13日
*/
public class ResourcePathExposer implements ServletContextAware {
	private ServletContext servletContext;
	private String resourceRoot;
	
//	@Autowired
   // private ConfigService configService; 
	/**
	 * 初始化方法
	 */
	public void init() {
		//Config config=configService.findByWebusKey("static_version");
		String version ="1";
		resourceRoot = "/rs_" + version;
		getServletContext().setAttribute("resourceRoot",resourceRoot);
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	public String getResourceRoot() {
		return resourceRoot;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}
}
