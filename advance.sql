-- cau 21
create view v_nhan_vien as
  select nhan_vien.ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, dia_chi, email, so_dien_thoai, luong, ten_vi_tri, ten_trinh_do, ten_bo_phan, ma_hop_dong, ngay_lam_hop_dong 
  from nhan_vien, hop_dong, vi_tri, trinh_do, bo_phan
  where nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
	and vi_tri.ma_vi_tri = nhan_vien.ma_vi_tri
    and trinh_do.ma_trinh_do = nhan_vien.ma_trinh_do
    and bo_phan.ma_bo_phan = nhan_vien.ma_bo_phan
	and nhan_vien.dia_chi like "%Gia Lai%" 
	and ngay_lam_hop_dong = '2020-12-08';

select * from v_nhan_vien;

-- CAU 22
update v_nhan_vien set v_nhan_vien.dia_chi = "Liên Chiểu";

-- cau 23
delimiter //
create procedure  sp_xoa_khach_hang( id int)
begin
delete  from khach_hang where khach_hang.ma_khach_hang=id;
end;
// delimiter ;
call sp_xoa_khach_hang(2)
-- cau 24
delimiter //
create procedure them_moi_hop_dong(t_ma_hop_dong int, t_ngay_lam_hop_dong datetime,t_ngay_ket_thuc datetime,t_tien_dat_coc double, t_ma_nhan_vien int,t_ma_khach_hang int,t_ma_dich_vu int)
begin
	set foreign_key_checks=1;
		insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu) values(t_ma_hop_dong,t_ngay_lam_hop_dong,t_ngay_ket_thuc,t_tien_dat_coc,t_ma_nhan_vien,t_ma_khach_hang,t_ma_dich_vu) ;
	
end;
// delimiter ;
call  them_moi_hop_dong ('20','2020-12-08','2020-12-08','0','3','3','3')
 
 -- cau 25
 delimiter //
create trigger tr_xoa_hop_dong
after delete
on hop_dong For each row
begin
declare total int;
set total = (select count(*) from hop_dong);
		SELECT total AS LOG INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads\log.txt';
end;
//delimiter ;
delete from hop_dong where hop_dong.ma_hop_dong=1;
drop trigger tr_xoa_hop_dong;

-- cau 26
	create trigger tr_cap_nhat_hop_dong
		before update on hop_dong 
        for each row
        begin
        declare smg varchar(45)
        set smg = 'ngay ket thuc hop dong phai lon hon ngay lam hop dong it nhat 2 ngay'
			if((datediff(ngay_ket_thuc,ngay_lam_hop_dong)+1)<2
			 then 
              SIGNAL SQLSTATE	'45000' SET MESSAGE_TEXT = smg
			end if
       end
       
       update hop_dong set ngay_ket_thuc ='2020-12-09'
       where ma_hop_dong=1
       
       drop trigger tr_cap_nhat_hop_dong

-- cau 27a
delimiter // 
	create function func_dem_dich_vu ()
    returns int
    deterministic
		begin
			declare result int;
            set result = (select count(dich_vu.ma_dich_vu) from dich_vu 
            inner join (select dich_vu.ma_dich_vu, sum(chi_phi_thue) as tong_tien
				from dich_vu
                group by ma_dich_vu
                having tong_tien > 2000000) as a on a.ma_dich_vu = dich_vu.ma_dich_vu);
            return result;
        end;
// delimiter ;

select func_dem_dich_vu () as tong_dich_vu_sd_tren_2tr;
-- cau 27 b
delimiter //
create function func_tinh_thoi_gian_hop_dong(makh int)
returns int
deterministic
begin
	declare result int;
	set result =(select max(datediff(ngay_ket_thuc,ngay_lam_hop_dong)+1) from hop_dong where ma_khach_hang = makh);
    return result;
end;
// delimiter ;
select func_tinh_thoi_gian_hop_dong(3) as hop_dong_dai_nhat;
-- cau 28
delimiter //
	create procedure sp_xoa_dich_vu_va_hd_room()
		begin
        drop table if exists table_tam;
        create table table_tam(ma_hop_dong int,ma_dich_vu int);
        insert into table_tam 
			select ma_hop_dong,b.ma_dich_vu 
				from hop_dong a 
					left join dich_vu b
						on a.ma_dich_vu=b.ma_dich_vu
					inner join loai_dich_vu c on b.ma_loai_dich_vu=c.ma_loai_dich_vu
                    where ten_loai_dich_vu='Room' and year(ngay_lam_hop_dong) in (2015,2016,2017,2018,2019);
                    delete from hop_dong_chi_tiet where ma_hop_dong in (select ma_hop_dong from table_tam );
                     delete from hop_dong where ma_hop_dong in (select ma_hop_dong from table_tam );
                      delete from dich_vu where ma_dich_vu in (select ma_dich_vu from table_tam );
		end
// delimiter ;
 call sp_xoa_dich_vu_va_hd_room()








