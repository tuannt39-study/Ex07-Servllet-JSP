package vn.its.dao;

import java.util.ArrayList;

import vn.its.model.Oto;

public interface OtoDAO {

	ArrayList<Oto> getAllOto();
	
	ArrayList<Oto> getDoiMoi();
	
	ArrayList<Oto> getDoiTrung();
	
	ArrayList<Oto> getDoiCu();

	Oto getOtoByBKS(int maXe);

	void create(Oto oto);

	void update(Oto oto);

	void delete(int maXe);
}
