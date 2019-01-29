package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Hello;
import model.Greeting;
import model.Introduce;
import model.Welcome;

public class MainController extends HttpServlet {
	private static final long serialVersionUID = -6702672335405420505L;
	
	private Map<String, Object> instances = new HashMap<>();
	
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		//properties ���ϰ�� ����
		ServletContext ctx = config.getServletContext();
		String path = ctx.getRealPath("/WEB-INF")+"/commandURI.properties";
		
		//properties  ��ü����
		Properties prop = new Properties();
		FileInputStream fis = null;
		try {
			//commandURI.properties ���ϰ� ��Ʈ�� ����
			fis = new FileInputStream(path);
			
			//�Է½�Ʈ������ commandURI.properties ���� ������ �б�
			prop.load(fis);

			//stream ����
			fis.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		//Model Ŭ���� ��ü �����ؼ� instance�� ����
		Iterator it = prop.keySet().iterator();
		while(it.hasNext()) {
			String k = it.next().toString();
			String v = prop.getProperty(k);
			
			try {
				Class<?> obj = Class.forName(v);
				
				
				
				Object instance = obj.newInstance();
				
				instances.put(k, instance);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestProc(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestProc(req, resp);
	}
	
	private void requestProc(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getContextPath();
		String uri = req.getRequestURI();
		String action = uri.substring(path.length());
		
		
		//String view = null;
		CommonAction instance = (CommonAction) instances.get(action);
		String view = instance.requestProc(req, resp);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(view);
		dispatcher.forward(req, resp);
		
	}
}
