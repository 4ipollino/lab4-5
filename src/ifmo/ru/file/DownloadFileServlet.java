package ifmo.ru.file;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadFileSevlet
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadFileServlet
 */
@WebServlet("/DownloadFileServlet")
public class DownloadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DownloadFileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ������ ������� ���� �� ����������� ����
		String filePath = "C:/UploadedFile/testing.txt";
		File downloadFile = new File(filePath);
		FileInputStream inStream = new FileInputStream(downloadFile);

		// ���� ���� ������������ ������������� ���� context root:
		String relativePath = getServletContext().getRealPath("");
		System.out.println("relativePath = " + relativePath);

		// �������� ServletContext
		ServletContext context = getServletContext();

		// �������� ��� MIME �����
		String mimeType = context.getMimeType(filePath);
		if (mimeType == null) {
		// ��������� �������� ���, ���� ����������� MIME �� ����������
			mimeType = "application/octet-stream";
		}
		System.out.println("MIME type: " + mimeType);

		// ������������ response
		response.setContentType(mimeType);
		response.setContentLength((int) downloadFile.length());

		// ���������� ���������� ���� ��� �������� �� �������
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"",downloadFile.getName());
		System.out.println("headerKey = " + headerValue);
		response.setHeader(headerKey, headerValue);

		// �������� �������� ����� ��� response
		OutputStream outStream = response.getOutputStream();

		byte[] buffer = new byte[4096];
		int bytesRead = -1;

		while ((bytesRead = inStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, bytesRead);
		}

		inStream.close();
		outStream.close();
		System.out.println("File downloaded to client successfully");
	}
}
