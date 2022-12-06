package service.subcategory;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import dao.SubCategoryDAO;
import dto.subcategory.SubCategoryDTO;

public class SubCategoryService {
	private ServletContext application;
	List<SubCategoryDTO> subcategoryDTO;
	
	public SubCategoryService(ServletContext application) {
		this.application = application;
	}
	
	/*public List<SubCategoryDTO> getList(int category_id) {
		try {
			SubCategoryDAO subcategoryDAO = (SubCategoryDAO)application.getAttribute("subCategoryDAO");
			subcategoryDTO = subcategoryDAO.selectSubCategoryAllList(category_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subcategoryDTO;
	}*/
}
