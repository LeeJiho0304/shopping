package service.category;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import dao.CategoryDAO;
import dto.category.CategoryDTO;

public class CategoryService {
	List<CategoryDTO> cgDTO;
	private ServletContext application;
	
	public CategoryService(ServletContext application) {
		this.application=application;
	}
	
	public List<CategoryDTO> getList() {		
		try {
			CategoryDAO categoryDao = (CategoryDAO) application.getAttribute("categoryDAO");
			cgDTO = categoryDao.selectCategoryAllList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cgDTO;
	}

}
