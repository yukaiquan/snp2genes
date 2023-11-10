# Genes from SNP Location

##### 🙈: **禹开权**

##### 📧: **1962568272**[@qq.com](/qq.com)

## Description

This script takes a list of SNPs Location and GFF file and returns a list of genes that are located in the vicinity of the SNPs.

## Usage

```bash
# linux
./snp_loc_gene -i test.gff3 -l testSnpLoc.txt -o test.out -p 2000
```

-i : GFF file </br>
-l : SNP Location file </br>
-o : Output file </br>
-p : Distance from SNP to search for genes </br>
-m : mode of search (default: all) </br>

## Input

### GFF file

```gff
chr1A	EVM	CDS	516539	517162	.	-	0	ID=CDS1.A.satnudSFS1A01G007004.1;Parent=A.satnudSFS1A01G007004.1
chr1A	EVM	exon	516539	517162	.	-	.	ID=exon1.A.satnudSFS1A01G007004.1;Parent=A.satnudSFS1A01G007004.1
chr1A	EVM	gene	524843	526291	.	+	.	ID=A.satnudSFS1A01G007003
chr1A	EVM	mRNA	524843	526291	.	+	.	ID=A.satnudSFS1A01G007003.1;Parent=A.satnudSFS1A01G007003
chr1A	EVM	CDS	524843	526291	.	+	0	ID=CDS1.A.satnudSFS1A01G007003.1;Parent=A.satnudSFS1A01G007003.1
chr1A	EVM	exon	524843	526291	.	+	.	ID=exon1.A.satnudSFS1A01G007003.1;Parent=A.satnudSFS1A01G007003.1
chr1A	EVM	gene	627235	634575	.	+	.	ID=A.satnudSFS1A01G007002
```

### SNP Location file

```txt
chr1A	515678
```

## Output

```txt
A.satnudSFS1A01G007004	515678-517162	chr1A	515678
```

## Help

```bash
# linux
$.\snp_loc_gene.exe -h
# windows
snp_loc_gene.exe -h


Welcome to use snp loc gene! Author: Yu kaiquan <1962568272@qq.com>
snpLocGene 0.1.0
Yu kaiquan <1962568272@qq.com>
extract snp location which in gene

USAGE:
    snp_loc_gene.exe [OPTIONS] --input <FILE> --location <FILE> --output <FILE>

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

OPTIONS:
    -i, --input <FILE>                gff file
    -l, --location <FILE>             snp location file
    -m, --gene position mode <STR>    mode: [all|sense] (default all)
    -o, --output <FILE>               output file
    -p, --pos_length <INT>            pos length (default 1000000)
```

## Online

if you want to use this script online, please visit [http://www.waooat.cn/toolkit/snp2genelist/](http://www.waooat.cn/toolkit/snp2genelist/)
