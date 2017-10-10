package vn.its.dao;

import java.util.ArrayList;

import vn.its.model.BaiViet;

public interface BaiVietDAO {

	ArrayList<BaiViet> getAllBaiViet();

	BaiViet getBaiVietByMaBV(int maBV);

	void create(BaiViet baiViet);

	void update(BaiViet baiViet);

	void delete(int maBV);
	
	void duyet(int maBV);
	
	void chan(int maBV);
}
