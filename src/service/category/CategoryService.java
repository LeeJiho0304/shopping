package service.category;

import java.sql.SQLException;
import java.util.List;

import dao.CategoryDAO;
import dto.category.CategoryDTO;

public class CategoryService {
	List<CategoryDTO> cgDTO;
	
	public List<CategoryDTO> getList() {
		
		try {
			CategoryDAO categoryDao = new CategoryDAO();
			cgDTO = categoryDao.selectCategoryAllList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cgDTO;
	}

}
