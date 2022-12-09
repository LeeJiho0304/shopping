package service;

import java.util.List;

import javax.servlet.ServletContext;

import dto.category.CategoryDTO;

public class CategoryService {
	List<CategoryDTO> cgDTO;
	private ServletContext application;
	
	public CategoryService(ServletContext application) {
		this.application=application;
	}
	
	//수정전
	/*public List<CategoryDTO> getList() {		
		try {
			CategoryDAO categoryDao = (CategoryDAO) application.getAttribute("categoryDAO");
			cgDTO = categoryDao.selectCategoryAllList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cgDTO;
	}*/

}
