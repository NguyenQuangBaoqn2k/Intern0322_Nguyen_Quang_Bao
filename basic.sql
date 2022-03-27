-- câu 2
select * from nhan_vien
where ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%' and length(ho_ten)<'15' ;
-- câu 3
select * from khach_hang
 where (diachi like '%Đà Nẵng' or diachi like '%Quảng Trị')
 and year(curdate())-year((ngay_sinh))>=18
 and  year(curdate())-year((ngay_sinh))<=50;
 -- cau 4
 select k.ma_khach_hang, ho_ten, count(h.ma_khach_hang) as so_lan_dat_phong from hop_dong h, khach_hang k
where h.ma_khach_hang = k.ma_khach_hang and ma_loai_khach = 1 
group by ma_khach_hang 
order by count(h.ma_khach_hang) asc;
 -- cau 5
Select a.ma_khach_hang, a.ho_ten,
		b.ten_loai_khach,c.ma_hop_dong, 
        d.ten_dich_vu, c.ngay_lam_hop_dong, 
        c.ngay_ket_thuc , sum(d.chi_phi_thue + (e.so_luong * f.gia)) as tong
from 	khach_hang a
left join 	hop_dong c on a.ma_khach_hang = c.ma_khach_hang
left join 	loai_khach b on a.ma_loai_khach = b.ma_loai_khach
left join 	dich_vu d on c.ma_dich_vu = d.ma_dich_vu
left join 	hop_dong_chi_tiet e on c.ma_hop_dong = e.ma_hop_dong
left join 	dich_vu_di_kem f on e.ma_dich_vu_di_kem = f.ma_dich_vu_di_kem
group by 	a.ma_khach_hang;

-- cau 6
select a.ma_dich_vu, a.ten_dich_vu, sum(a.dien_tich_ho_boi) as dien_tich, a.chi_phi_thue, b.ten_loai_dich_vu  
	from dich_vu a
		inner join 	loai_dich_vu b on a.ma_loai_dich_vu = b.ma_loai_dich_vu
		inner join 	hop_dong c on c.ma_dich_vu = a.ma_dich_vu
	where a.ma_dich_vu not in
			(select ma_dich_vu from hop_dong 
			where 	yearweek(ngay_ket_thuc) > 202101 
					and yearweek(ngay_ket_thuc) < 202115)
			group by c.ma_dich_vu;
-- cau 7
select 	a.ma_dich_vu, a.ten_dich_vu, a.dien_tich_ho_boi as dien_tich, a.so_nguoi_toi_da , a.chi_phi_thue, b.ten_loai_dich_vu  
from 	dich_vu a
inner join loai_dich_vu b on a.ma_loai_dich_vu = b.ma_loai_dich_vu
inner join hop_dong c on c.ma_dich_vu = a.ma_dich_vu
where 	a.ma_dich_vu in
		(select ma_dich_vu from hop_dong 
		where  year(ngay_lam_hop_dong) = 2020
				and ma_dich_vu not in 
                (select ma_dich_vu from hop_dong 
				where  year(ngay_lam_hop_dong) = 2021)
		group by ma_dich_vu )
group by a.ma_dich_vu;

-- cau 8
-- c1
 select ho_ten 
 from khach_hang
 group by ho_ten;
-- c2 
select distinct ho_ten from khach_hang;
-- c3
select ho_ten from khach_hang union select ho_ten from khach_hang;

-- cau 9
select month(ngay_lam_hop_dong) as thang, 
	count(month(ngay_lam_hop_dong)) as sl_kh_dat_phong
    from hop_dong
    where year(ngay_lam_hop_dong)=2021
	group by month(ngay_lam_hop_dong)
    order by month(ngay_lam_hop_dong);
-- cau 10
 select a.ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,
	sum(b.so_luong) as so_luong_dich_vu_di_kem
 from hop_dong a
 left join hop_dong_chi_tiet b on a.ma_hop_dong=b.ma_hop_dong
 group by a.ma_hop_dong;
 -- cau 11
 select a.ma_dich_vu_di_kem,ten_dich_vu_di_kem 
 from dich_vu_di_kem a
 inner join hop_dong_chi_tiet b on a.ma_dich_vu_di_kem=b.ma_dich_vu_di_kem
 inner join hop_dong c on b.ma_hop_dong=c.ma_hop_dong
 inner join khach_hang d on c.ma_khach_hang=d.ma_khach_hang
 where d.ma_loai_khach=1
 and d.diachi like '%Vinh%' or d.diachi like'%Quảng Ngãi';
 -- cau 12
 select a.ma_hop_dong,f.ho_ten,b.ho_ten,b.so_dien_thoai,c.ma_dich_vu,c.ten_dich_vu,sum(d.so_luong) as so_luong_dich_vu_di_kem
 from hop_dong a
 inner join khach_hang b on a.ma_khach_hang=b.ma_khach_hang
 inner join nhan_vien f on a.ma_nhan_vien=f.ma_nhan_vien
 inner join dich_vu c on a.ma_dich_vu = c.ma_dich_vu
 inner join hop_dong_chi_tiet d on d.ma_hop_dong=a.ma_hop_dong
 where year(ngay_lam_hop_dong)=2020
 and month(ngay_lam_hop_dong) between '9' and '12'
 and a.ma_hop_dong not in (
	select ma_hop_dong 
    from hop_dong
    where year(ngay_lam_hop_dong)=2021
		and month(ngay_lam_hop_dong) between '9' and '12'
 )
 group by a.ma_hop_dong;
 
 -- cau 13
 select  c.ma_dich_vu_di_kem,c.ten_dich_vu_di_kem,sum(b.so_luong) as so_luong_dich_vu_di_kem
 from hop_dong a
 inner join hop_dong_chi_tiet b on a.ma_hop_dong=b.ma_hop_dong
 inner join dich_vu_di_kem c on b.ma_dich_vu_di_kem=c.ma_dich_vu_di_kem
 group by c.ma_dich_vu_di_kem
 order by so_luong_dich_vu_di_kem desc
 limit 2;
 
 -- cau 14 
		select 	hop_dong.ma_hop_dong, loai_dich_vu.ten_loai_dich_vu
				, dich_vu_di_kem.ten_dich_vu_di_kem 
                , count(dich_vu_di_kem.ma_dich_vu_di_kem) as so_lan_su_dung
		from 	hop_dong 
		inner join 	dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
		inner join 	loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
		inner join 	hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
		inner join 	dich_vu_di_kem on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
		group by 	dich_vu_di_kem.ma_dich_vu_di_kem 
        having 	so_lan_su_dung =1
		order by hop_dong.ma_hop_dong;
        
-- cau 15
select 	nhan_vien.ma_nhan_vien, ho_ten, trinh_do.ten_trinh_do,bo_phan.ten_bo_phan,
	so_dien_thoai, dia_chi  
from 	nhan_vien 
inner join	(
			select  ma_nhan_vien, count(ma_nhan_vien) as so_hop_dong from hop_dong
			where 	year(ngay_lam_hop_dong) >= 2020 
					and year(ngay_lam_hop_dong) <= 2021
			group by ma_nhan_vien
            ) as tam
			on tam.ma_nhan_vien = nhan_vien.ma_nhan_vien
inner join 	trinh_do on trinh_do.ma_trinh_do = nhan_vien.ma_trinh_do
inner join 	bo_phan on bo_phan.ma_bo_phan = nhan_vien.ma_bo_phan
where 	tam.so_hop_dong <=3;

-- cau 16

delete from nhan_vien
where (
	select ma_nhan_vien
    from nhan_vien
    where ma_nhan_vien not in (
		select ma_nhan_vien
        from hop_dong
        where year(ngay_lam_hop_dong)>=2019
        and year(ngay_lam_hop_dong)>=2021
    )
);

-- câu 17
	update 	khach_hang
    set 	ma_loai_khach = 1
    where 	ma_khach_hang in (
					select 	khach_hang.ma_khach_hang 
                    from 	khach_hang
					inner join (
							select 	ma_khach_hang, sum(dich_vu.chi_phi_thue) as tong_thanh_toan 
                            from 	hop_dong
							inner join 	dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
							where 	year(ngay_ket_thuc) = 2021
							group by	 ma_khach_hang
                            ) as tam
					on tam.ma_khach_hang = khach_hang.ma_khach_hang
					where 	khach_hang.ma_loai_khach = 2 
							and tam.tong_thanh_toan >= 10000000
					);
-- cau 18
delete from khach_hang
where ma_khach_hang=(
	select ma_khach_hang
    from  hop_dong
    where  year(ngay_ket_thuc)<2021
);
-- cau 19
 update 	dich_vu_di_kem
    set 	gia = gia*2
    where	ma_dich_vu_di_kem in(
					select 	tam.ma_dich_vu_di_kem 
                    from 	dich_vu_di_kem inner join	(
								select  hop_dong_chi_tiet.ma_dich_vu_di_kem 
										,sum(hop_dong_chi_tiet.so_luong) as so_lan
								from 	hop_dong
								inner join 	hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
								where 		year(hop_dong.ngay_ket_thuc) = 2020
								group by 	hop_dong_chi_tiet.ma_hop_dong_chi_tiet
                                )as tam
					on dich_vu_di_kem.ma_dich_vu_di_kem = tam.ma_dich_vu_di_kem
					where tam.so_lan >= 10
					);
    
-- cau 20
 select ma_nhan_vien as id, ho_ten
			, email, so_dien_thoai, ngay_sinh, dia_chi  
	from 	nhan_vien 
    union all
    select 	ma_khach_hang, ho_ten, email
			, so_dien_thoai, ngay_sinh, diachi 
	from khach_hang
		
 
 


 