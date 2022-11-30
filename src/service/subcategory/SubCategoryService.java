package service.subcategory;

import java.sql.SQLException;
import java.util.List;

import dao.SubCategoryDAO;
import dto.subcategory.SubCategoryDTO;

public class SubCategoryService {
	List<SubCategoryDTO> subcategoryDTO;
	
	public List<SubCategoryDTO> getList(int category_id) {
		try {
			SubCategoryDAO subcategoryDAO = new SubCategoryDAO();
			subcategoryDTO = subcategoryDAO.selectSubCategoryAllList(category_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subcategoryDTO;
	}
}
