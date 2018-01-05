package xrdsw.library.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class EncodingFilter implements Filter {
	private FilterConfig config = null;
	private String encode = null;
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		response.setContentType("text/html;charset="+encode); //--�����Ӧ����
		chain.doFilter(new MyHttpServletRequest((HttpServletRequest) request), response);//--��װ����request�кͻ�ȡ���������صķ�����������������
	}
	
	public void init(FilterConfig filterConfig) throws ServletException {
		this.config = filterConfig;
		encode = config.getInitParameter("encode") == null
							?"utf-8"
									:config.getInitParameter("encode");
	}
	class MyHttpServletRequest extends HttpServletRequestWrapper{
		private HttpServletRequest request = null;
		private boolean isNotEncode = true;
		public MyHttpServletRequest(HttpServletRequest request) {
			super(request);
			this.request = request;
		}
		
		@Override
		public Map getParameterMap() {
			try{
				if(request.getMethod().equalsIgnoreCase("POST")){//--�����post�ύ,һ�д�����post�ύ�����������
					request.setCharacterEncoding(encode);
					return request.getParameterMap();
				}else if(request.getMethod().equalsIgnoreCase("GET")){//--�����get�ύ,��Ӧ���ֶ������������
					Map<String,String[]> map = request.getParameterMap();//��ȡ�������map
					if(isNotEncode){//ֻ���ڵ�һ�ν������
						for(Map.Entry<String, String[]> entry : map.entrySet()){//����map,�������ֵ������
							String [] vs = entry.getValue();
							for(int i=0;i<vs.length;i++){
								vs[i] = new String(vs[i].getBytes("iso8859-1"),encode);
							}
						}
						isNotEncode = false;//����Ϊfalse,�ڶ��ξͲ����ٽ�����������
					}
					return map;
				}else{
					return request.getParameterMap();
				}
			}catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
		
		@Override
		public String[] getParameterValues(String name) {
			return (String[]) getParameterMap().get(name);
		}
		
		@Override
		public String getParameter(String name) {
			return getParameterValues(name) == null ? null : getParameterValues(name)[0];
		}
		
		
	}
}
