DOMAINS
nama = symbol
nim = integer
alamat = symbol
ttl = symbol
angkatan = integer

kondisi = cond*
cond = string

FACTS
orang(nama,nim,alamat,ttl,angkatan)
false(cond)
created(kondisi)

PREDICATES
nondeterm mulai				nondeterm pilih1i		nondeterm kell(char)
nondeterm hasil1 			nondeterm pilih1j		nondeterm maaf1
nondeterm maaf				nondeterm pilih1k
nondeterm tanya				nondeterm pilih1l
nondeterm terus11(char)			nondeterm pilih1m
nondeterm pilih1n			nondeterm tampil(kondisi)
nondeterm pilih1o			nondeterm terus12(char)	
nondeterm terus13(char)			nondeterm terus14(char)
nondeterm terus15(char)			nondeterm terus16(char)		
nondeterm terus17(char)			nondeterm pilih1p
nondeterm berdasarkan(char)		nondeterm terus10(char)
nondeterm pilih2			nondeterm terus9(char)
nondeterm terus2(char)			nondeterm terus1(char)			
nondeterm pilih1			nondeterm pilih3
nondeterm hasil(char)			nondeterm kel(char)
nondeterm terus(char)			nondeterm pilih1a
nondeterm pilih1b			nondeterm pilih1c
nondeterm pilih1d			nondeterm pilih1e
nondeterm pilih1f			nondeterm pilih1g
nondeterm pilih1h			nondeterm terus3(char)
nondeterm terus4(char)			nondeterm terus5(char)
nondeterm terus6(char)			nondeterm terus7(char)
nondeterm terus8(char)			aa(char,char)
nondeterm iya(char)			


CLAUSES
aa(Y,Y):- !.
aa(_,_):- fail.

created(["1. EKA WAHYU NINGSIH		1515015038",
	"2. MUHAMMAD FIRMAN ALWI	1515015045",
	"3. DUITA ROFIKA			1515015050"]).
	
%=====MULAI=====%
mulai:-
		write("\n"),
		write("Kelompok 9 : "),nl,
		created  ( Anggota),
		tampil( Anggota),
		write("\n\n\t\t=============================================================================\n"),
		write("\t\t\t\t\tS E L A M A T   D A T A N G   \n "),
		write("\n"),
		write("\t\t\t\t\t\t    D I \n "),
		write("\n"),
		write("\t\t        S I S T E M   P E N Y E L E K S I A N   P E N E R I M A A N   K A R Y A W A N   B A R U  \n\n"),
		write("\t\t=============================================================================\n"),
		write("\n"), 
		write("\t\tUNTUK MENJALANKAN PROGRAM, TEKAN TOMBOL 'Y'"),

		readchar(A),hasil(A).

		hasil(A):- aa(A,'Y'), hasil1.
		hasil(A):- aa(A,'y'), hasil1.
		hasil(_):- mulai.


%=====HASIL1=====%
		hasil1:-
		write("\n"),
		write("\n"),
		write("\t\tProgram ini akan menganalisa bidang apa yang akan anda tempati nantinya,  \n"),
		write("\t\tsesuai dengan pertanyaan - pertanyaan yang anda jawab. \n"),
		write("\t\tMaka jawablah pertanyaan dengan benar. \n"),
		write("\n"),
		write("\t\tAPAKAH ANDA INGIN MELANJUTKAN PROGRAM ?(Y/N)  \n"),

		readchar(A),terus(A).

		terus(A):- aa(A,'Y'),tanya.
		terus(A):- aa(A,'y'),tanya.
		terus(A):- aa(A,'N'),maaf.
		terus(A):- aa(A,'n'),maaf.
		terus(_):- hasil1.

%=====PERTANYAAN=====%
tanya:-
		write("\n"),
		write("\n"),
		write("\t\tPILIHAN YANG TERSEDIA"),
		write("\n"),
		write("\t\t 1. PENGISIAN PERTANYAAN. \n"),
		write("\t\t 2. INFORMASI. \n"),
		write("\t\t 3. DETAIL ANGGOTA KELOMPOK. \n"),
		write("\t\t Masukan pilihan \n"),

		readchar(A),terus1(A).

		terus1(A):- aa(A,'1'),pilih1.
		terus1(A):- aa(A,'2'),pilih2.
		terus1(A):- aa(A,'3'),pilih3.
		terus1(_):- tanya.

%====PILIH[1]=====%
pilih1:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda lulusun Strata 1? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),berdasarkan(A).

		berdasarkan(A):- aa(A,'Y'),pilih1a.
		berdasarkan(A):- aa(A,'y'),pilih1a.
		berdasarkan(A):- aa(A,'N'),maaf.
		berdasarkan(A):- aa(A,'n'),maaf.
		berdasarkan(_):- pilih1.


%=====PILIH1a=====%
pilih1a:-
		write("\n"),
		write("\n"),
		write("\t\tApakah umur anda antara 18-25 tahun ? \n "),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus2(A).

		terus2(A):- aa(A,'Y'),pilih1b.
		terus2(A):- aa(A,'y'),pilih1b.
		terus2(A):- aa(A,'N'),pilih1c.
		terus2(A):- aa(A,'n'),pilih1c.
		terus2(_):- pilih1a.

%=====PILIH1b=====%
pilih1b:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu melayani nasabah dengan prima?\n "),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus3(A).
	
		terus3(A):- aa(A,'Y'),pilih1d.
		terus3(A):- aa(A,'y'),pilih1d.
		terus3(A):- aa(A,'N'),maaf.
		terus3(A):- aa(A,'n'),maaf.
		terus3(_):- pilih1b.

%=====PILIH1c=====%
pilih1c:-
		write("\n"),
		write("\n"),
		write("\t\tApakah umur anda antara 26-35 tahun? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus4(A).

		terus4(A):- aa(A,'Y'),pilih1j.
		terus4(A):- aa(A,'y'),pilih1j.
		terus4(A):- aa(A,'N'),maaf.
		terus4(A):- aa(A,'n'),maaf.
		terus4(_):- pilih1c.

%=====PILIH1d=====%
pilih1d:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu melakukan pencatatan dan perkasan? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus5(A).

		terus5(A):- aa(A,'Y'),pilih1e.
		terus5(A):- aa(A,'y'),pilih1e.
		terus5(A):- aa(A,'N'),maaf.
		terus5(A):- aa(A,'n'),maaf.
		terus5(_):- pilih1d.

%=====PILIH1e=====%
pilih1e:-	
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu berkomunikasi dengan baik? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus6(A).

		terus6(A):- aa(A,'Y'),pilih1f.
		terus6(A):- aa(A,'y'),pilih1f.
		terus6(A):- aa(A,'N'),maaf.
		terus6(A):- aa(A,'n'),maaf.
		terus6(_):- pilih1e.

%=====PILIH1f=====%
pilih1f:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu mengoperasikan Microsoft Office dengan baik dan mengetahui rumus-rumus perhitungan pada excel? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus7(A).

		terus7(A):- aa(A,'Y'),pilih1g.
		terus7(A):- aa(A,'y'),pilih1g.
		terus7(A):- aa(A,'N'),maaf.
		terus7(A):- aa(A,'n'),maaf.
		terus7(_):- pilih1f.

%=====PILIH1g=====%
pilih1g:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu menganalisis permasalahan yang tiba-tiba terjadi terhadap customer yang ingin complain ? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus8(A).

		terus8(A):- aa(A,'Y'),pilih1h.
		terus8(A):- aa(A,'y'),pilih1h.
		terus8(A):- aa(A,'N'),maaf.
		terus8(A):- aa(A,'n'),maaf.
		terus8(_):- pilih1g.

%=====PILIH1h=====%
pilih1h:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mematuhi UU dalam dunia perbankan ? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus9(A).

		terus9(A):- aa(A,'Y'),pilih1i.
		terus9(A):- aa(A,'y'),pilih1i.
		terus9(A):- aa(A,'N'),maaf.
		terus9(A):- aa(A,'n'),maaf.
		terus9(_):- pilih1h.

%=====PILIH1i=====%
pilih1i:-
		write("\n"),
		write("\n\n"),
		write("\t\t\t\t================================================\n"),
		write("\t\t\t\t\t\tS E L A M A T ! ! !\n"),
		write("\t\t\t\t\tAnda diterima sebagai CUSTOMER SERVICE\n"),
		write("\t\t\t\t================================================\n\n"),
		write("\t\tApakah Anda Ingin Menganalisa Ulang? \n"),
		write("\t\tTekan Y untuk mengulang \n"),
		write("\t\tTekan X untuk exit \n"),

		readchar(A),terus10(A).

		terus10(A):- aa(A,'Y'),tanya.
		terus10(A):- aa(A,'y'),tanya.
		terus10(A):- aa(A,'X'),exit.
		terus10(A):- aa(A,'x'),exit.
		terus10(_):- maaf1.

%=====PILIH1j=====%
pilih1j:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu mendeteksi keaslian uang ? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus11(A).

		terus11(A):- aa(A,'Y'),pilih1k.
		terus11(A):- aa(A,'y'),pilih1k.
		terus11(A):- aa(A,'N'),maaf.
		terus11(A):- aa(A,'n'),maaf.
		terus11(_):- pilih1j.

%=====PILIH1k=====%
pilih1k:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu menghitung uang secara manual ataupun menggunakan alat?\n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus12(A).

		terus12(A):- aa(A,'Y'),pilih1l.
		terus12(A):- aa(A,'y'),pilih1l.
		terus12(A):- aa(A,'N'),maaf.
		terus12(A):- aa(A,'n'),maaf.
		terus12(_):- pilih1k.

%=====PILIH1l=====%
pilih1l:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu menangani uang sesuai dalam ketentuan yang berlaku? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus13(A).

		terus13(A):- aa(A,'Y'),pilih1m.
		terus13(A):- aa(A,'y'),pilih1m.
		terus13(A):- aa(A,'N'),maaf.
		terus13(A):- aa(A,'n'),maaf.
		terus13(_):- pilih1l.

%=====PILIH1m=====%
pilih1m:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mampu melaksanakan program anti pencucian uang dan pencegahan pendanaan terorisme? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus14(A).

		terus14(A):- aa(A,'Y'),pilih1n.
		terus14(A):- aa(A,'y'),pilih1n.
		terus14(A):- aa(A,'N'),maaf.
		terus14(A):- aa(A,'n'),maaf.
		terus14(_):- pilih1m.

%=====PILIH1n=====%
pilih1n:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda memiliki pengetahuan mengenai server? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus15(A).

		terus15(A):- aa(A,'Y'),pilih1o.
		terus15(A):- aa(A,'y'),pilih1o.
		terus15(A):- aa(A,'N'),maaf.
		terus15(A):- aa(A,'n'),maaf.
		terus15(_):- pilih1n.

%=====PILIH1o=====%
pilih1o:-
		write("\n"),
		write("\n"),
		write("\t\tApakah anda mematuhi UU dalam dunia perbankan? \n"),
		write("\t\tPILIH YES OR NO ?  (Y/N) \n"),

		readchar(A),terus16(A).

		terus16(A):- aa(A,'Y'),pilih1p.
		terus16(A):- aa(A,'y'),pilih1p.
		terus16(A):- aa(A,'N'),maaf.
		terus16(A):- aa(A,'n'),maaf.
		terus16(_):- pilih1o.

%=====PILIH1p=====%
pilih1p:-
		write("\n"),
		write("\n"),
		write("\t\t\t\t================================================\n"),
		write("\t\t\t\t\t\tS E L A M A T ! ! !\n"),
		write("\t\t\t\t\tAnda diterima sebagai TELLER\n"),
		write("\t\t\t\t================================================\n\n"),
		write("\t\tApakah Anda Ingin Menganalisa Ulang? \n\n"),
		write("\t\tTekan Y untuk mengulang \n"),
		write("\t\tTekan X untuk exit \n"),

		readchar(A),terus17(A).

		terus17(A):- aa(A,'Y'),tanya.
		terus17(A):- aa(A,'y'),tanya.
		terus17(A):- aa(A,'x'),exit.
		terus17(A):- aa(A,'X'),exit.
		terus17(_):- maaf1.
	
 tampil ([H|T]):-
      not(false(H)),
      write(H),nl,
      tampil(T).
      
      tampil([H|_]):-
      assertz(false(H)).
	
%=====PILIH2=====%
pilih2:-
		write("\n"),
		write("\n"),
		write("\t\tSistem ini dipergunakan untuk penyeleksian karyawan baru yang ingin bekerja \n\n"),
		write("\t\tsesuai dengan syarat-syarat yang dimilikinya dan ketentuan-ketentuan yang berlaku \n \n"),
		write(" \t\tTEKAN TOMBOL 'B' JIKA INGIN KEMBALI KE MENU UTAMA.\n"),
		write(" \t\tTEKAN TOMBOL 'X' JIKA ANDA INGIN KELUAR.\n"),
		readchar(A),iya(A).

		iya(A):- aa(A,'B'),tanya.
		iya(A):- aa(A,'b'),tanya.
		iya(A):- aa(A,'X'),exit.
		iya(A):- aa(A,'x'),exit.
		iya(_):- maaf1.

%=====ORANG=====%
orang(eka, 1515015038,sungai_siring,samarinda_13_maret_1998,2015).
orang(firman, 1515015045,sungai_siring,samarinda_23_april_1997,2015).
orang(duita, 1515015050,juanda,biduk_biduk_31_desember_1997,2015).

%=====PILIH3=====%
pilih3:-
		write("\n"),
		write("\n"),
		orang(Nama, NIM, Alamat, Ttl, Angkatan),
		write("\t\tNama	: ",Nama),nl,
		write("\t\tNIM	: ",Nim),nl,
		write("\t\tAlamat	: ",Alamat),nl,
		write("\t\tTTL	: ",Ttl),nl,
		write("\t\tAngkatan	: ",Angkatan),nl,nl,
		fail.
		pilih3.

%=====MAAF=====%
maaf:-
		write("\n"),
		write("\n"),
		write(" \t\tMaaf program ini hanya mengajukan pertanyaan sesuai dengan syarat yang harus dimiliki. \n"),
		write(" \t\tMaka dari itu jika pilihan anda tidak ada yang cocok dengan syarat yang dimiliki. \n"),
		write(" \t\tMohon maaf, anda ditolak menjadi karyawan di bank ini. \n\n"),
		write(" \t\tTEKAN 'B' JIKA INGIN KEMBALI KE MENU UTAMA.\n"),
		write(" \t\tTEKAN 'X' JIKA ANDA INGIN KELUAR.\n"),
		readchar(A),kel(A).

		kel(A):- aa(A,'B'),hasil1.
		kel(A):- aa(A,'b'),hasil1.
		kel(A):- aa(A,'X'),exit.
		kel(A):- aa(A,'x'),exit.
		kel(_):- maaf1.

%=====MAAF1=====%
maaf1:-
		write("\n"),
		write("\n"),
		write("\t\t\t\t================================================\n"),
		write(" \t\t\t\t\t\t W A R N I N G !!! \n"),
		write("\t\t\t\t Maaf pilihan anda tidak sesuai, Silahkan pilih ulang !!! \n"),
		write("\t\t\t\t================================================\n\n"),
		write("\t\t TEKAN 'B' JIKA INGIN KEMBALI KE MENU UTAMA.\n"),
		write("\t\t TEKAN 'X' JIKA ANDA INGIN KELUAR.\n"),
		readchar(A),kell(A).

		kell(A):- aa(A,'B'),hasil1.
		kell(A):- aa(A,'b'),hasil1.
		kell(A):- aa(A,'X'),exit.
		kell(A):- aa(A,'x'),exit.
		kell(_):- maaf1.

GOAL
mulai.