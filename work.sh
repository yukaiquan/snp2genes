# 编译为linux平台
cargo build --release --target x86_64-unknown-linux-musl
# 编译为windows平台
cargo build --release
# 编译为mac平台
cargo build --release --target x86_64-apple-darwin
# 测试
.\target\release\snp_loc_gene.exe -i .\example\test.gff3 -l .\example\testSnpLoc.txt -o .\example\test.out -p 2000
./snp_loc_gene -i test.gff3 -l testSnpLoc.txt -o test.out -p 2000