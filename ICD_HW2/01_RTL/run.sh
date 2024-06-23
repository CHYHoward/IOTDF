vcs -f rtl_01.f -full64 -R +v2k -debug_access+all +define+p1+F1 | tee compile_log.txt
vcs -f rtl_01.f -full64 -R +v2k -debug_access+all +define+p1+F2 | tee compile_log.txt
vcs -f rtl_01.f -full64 -R +v2k -debug_access+all +define+p2+F1 | tee compile_log.txt
vcs -f rtl_01.f -full64 -R +v2k -debug_access+all +define+p2+F2 | tee compile_log.txt