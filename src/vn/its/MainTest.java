package vn.its;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import vn.its.dao.BaiVietDAOImp;
import vn.its.dao.OtoDAOImp;
import vn.its.model.BaiViet;
import vn.its.model.Oto;

public class MainTest {
	public static void main(String[] args) throws ParseException {
		BaiVietDAOImp bv = new BaiVietDAOImp();
		
		for (BaiViet bbb : bv.getAllBaiViet()) {
			System.out.println(bbb.getChiTiet());
		}
		
		System.out.println(bv.getBaiVietByMaBV(4).getChiTiet());

		String lich = "15-09-2017 10:02:44";
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		
		BaiViet baiViet = new BaiViet();
		Date abc = sdf.parse(lich);
		
		Date lichDang = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss").parse(lich);
		baiViet.setLichDang(lichDang);
		System.out.println(baiViet.getLichDang());
		System.out.println(abc);
		
		OtoDAOImp oto = new OtoDAOImp();
		for (Oto ttt : oto.getDoiCu()) {
			System.out.println(ttt.getMaXe());
		}
		
	}
}
