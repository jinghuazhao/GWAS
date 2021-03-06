Shrine et al. (2019). **New genetic signals for lung function highlight pathways and chronic obstructive pulmonary disease associations across multiple ancestries**. *Nature Genetics* 51, 481–493

### Rationale for high yield of significant SNPs

1. implication of multiple molecules in each pathway will be needed to build an accurate picture of the pathways underpinning development of COPD.
2. not all proteins identified will be druggable.
3. combining information across multiple variants can improve prediction of disease susceptibility.

### Aims

1. to generate a high yield of genetic markers associated with lung function; 
2. to confirm and fine-map previously reported lung function signals; 
3. to investigate the putative causal genes and biological pathways through which lung function–associated variants act, and their wider pleiotropic effects on other traits;
4. to generate a weighted genetic risk score for lung function and test its association with COPD susceptibility in individuals of European and other ancestries.

### Materials

* Outcome
  * FEV1. forced expired volume in 1 second.
  * FVC. forced vital capacity.
  * FEV1/FVC.
  * PEF. Peak expiratory flow.
* Data. 321,047 UKB (ST1) + 79,055 SpiroMeta (ST2, ST3)

Full information regarding UKB and SpiroMeta are described in Methods section.

### Methods

* **association model**. LMM with BOLT-LMM. The variants included in the mixed model were extracted from the genotyped variants by applying the following filters: missingness < 5%, minor allele frequency > 1%, HWE p > 10-6, pruning for LD r2 < 0.2.
* **putative causal genes**. ANNOVAR, SIFT, PolyPhen-2|CADD/VEP, PATHMM. 99\% credible set, deleterious, eQTL (lung, blood, GTEx), pQTL (INTERVAL) excluding HLA region
* **explained heritabilities (assuming h2=0.4)**. Approximated by sum of the variances of regression terms.
* **Tiers of signals** (19,819,130 SNPs).

tiers | stage | P      | UKB   | SpiroMeta  | counts | follow-up  | Suppl.
------|-------|--------|-------|------------|--------|------------|---------
1     |  two  | 5e-9   | <5e-9 | <1e-3      | 99     |  yes       | SF2/ST4
2     |  one  | 5e-9   | <1e-3 | <1e-3      | 40     |  yes       | SF2/ST4
3     |  one  | 5e-9   | >1e-3 | >1e-3      | 323 + 5 (chromosome X)  |  no  | ST5

* **joint/conditional analysis**. 
> All SNPs ±1Mb were extracted around each sentinel variant. GCTA was then used to perform stepwise conditional
analysis in order to select independently associated SNPs within each 2Mb region using the single SNP association
statistics combined with LD information from reference genotypes representative of the samples in the association
testing. For UK Biobank the same genotype data as used for the initial discovery association testing was used as an
LD reference; for SpiroMeta, genotypes from 48,943 unrelated participants2 formed the LD reference set.

> where sentinel variants for two signals for different phenotypes were in high LD (r2 > 0.5), we retained the most significant variant; where two signals were in moderate LD (0.1 > r2 > 0.5), we retained variants if, after conditional analysis, they still met the tier 1 or tier 2 threshold; for signals in low LD (r2 < 0.1) we retained both variants. We then used the same criteria to identify a subset of new signals that were distinct from previously published independent signals (see below)
* **association of (LD-pruned) previously reported signals** for any of three criteria: 
  * the previously reported sentinel was associated (P < 1e−5) with any lung function trait in UK Biobank;
  * a proxy for the previously reported sentinel with r2 > 0.5 was associated (P < 1e−5) with any lung function trait in UK Biobank; 
  * a proxy for the previously reported sentinel with r2 > 0.1 was associated with any lung function trait meeting tier 1 or tier 2 criteria (SF3).
* **Pathway analysis**. ConsensusPathDB.
* **Functional enrichment analysis**.
  * LD-score regression
  * 424 DNase I hypersensitive site hotspots derived from 55 tissues on the RoadMap Epigenomic and ENCODE projects through GARFIELD.
  * DeepSEA. chromatic effect in lung-related cell lines.
* **Drug targets**. Drug-Gene Interaction Database, http://www.dgidb.org.
* **GRS**.
  * UKB and China Kadoorie Biobank.
  * Interaction with smoking.
  * GRS ~ COPD in addtional five COPD case-control studies.
* **Pleiotropy and PheWAS**. 279 loci on 2,411 traits.

Only rs193686 was associated with smoking behaviour.

### Findings

* 279 signals (ST9)
* 107 putative causal genes identified (Table 1).
* Heritability \& interaction with ever-smoking. 140 previously identified and 1e-5 in UKB as 5.0\%, 3.4\%, 9.2\% and 4.5\% vs 139 new signals (Figure 1) 4.3\%, 3.3\%, 3.9\% and 3.3\%. No interaction found.
* Pathway results in ST15.
* Functional enrichment showed heritabilities are enriched in histone marks
* Genetic correlations. Genome-wide genetic correlation between UK Biobank and SpiroMeta was calculated using LDSC and was 0.993 for FEV1, 0.979 for FVC, 0.946 for FEV1/FVC and 0.964 for PEF.
* GRS.
  * ~ decrease in lung function and increase in COPD (Figure 3a).
  * Effect sizes were similar in COPD case-control studies (Figure 3b, ST20)
  * similarity in deciles (Figure 3c).
  * 279 GRS ~ respiratory traits (Figure 5a) and celiac disease (Figure 5b).
* PheWAS (Figure 4, ST23). 85 ~ standing height but no correlation with GIANT data.

### Highlights

* doubled the number of SNPs.
* first study on PEF, 133/279 associated.
* SNP-smoking interaction study.
* GRS predictive of lung function and also COPD.
* eQTL/pQTL-related work.
* PheWAS.

### Additional information

**Heritabilities**

The following paper gave SNP-based heritability estimates of FEV1, FVC and FEV/FVC as 0.50, 0.54 ans 0.66, respectively.

Klimentidis YC, Vazquez AI, de Los CG, Allison DB, Dransfield MT, Thannickal VJ (2013).
“Heritability of Pulmonary Function Estimated from Pedigree and Whole-Genome Markers.”
*Frontiers in Genetics*, 4, 174. doi:10.3389/fgene.2013.00174.

**CLARITE**

https://github.com/HallLab/clarite.

Publicly available data, https://github.com/chiragjp/nhanes_scidata.

> Using CLARITE, we performed and sought replication of an EWAS in the National Health and Nutrition Examination Survey
(NHANES) (N overall discovery=9063, N overall replication=9874) for body mass index (BMI) and over 300 environment variables,
adjusting for sex, age, race, socioeconomic status, and survey year. Seventeen BMI results replicated at a Bonferroni corrected p <
0.05. The top replicating results were g-tocopherol (vitamin E) and serum iron levels. Results of this EWAS are important to
consider for metabolic trait analysis, as BMI is tightly associated with these phenotypes, and as such, exposures predictive of BMI
may be useful for covariate and/or interaction assessment of metabolic-related traits. CLARITE allows improved data quality for
EWAS, gene-environment interactions, and phenome-wide association studies, by establishing a standardized and high-throughput
quality control pipeline.

**Framingham Study** (Apr 17, 2019)

> The long-running Framingham Heart Study has received a $38 million grant to continue for another six years, the Boston Globe reports.

> "This will let us do deep phenotyping," Vasan Ramachandran, the study's principal investigator at Boston University tells the Globe. "Technology has changed. When this study began, we could measure a few proteins circulating in the blood. Now we have screening where we can measure up to 1,300 proteins."

> The study began in 1948 when it recruited 5,209 men and women between ages of 30 and 62 to examine factors that influence risk of heart disease, and, as BU notes in a press release, contributed to findings that smoking and obesity contribute to cardiovascular disease risk, while physical activity may be protective. It adds that the study is now following the children and grandchildren of the original enrollees.

> With these new funds, Ramachandran says the study will examine the contribution of aging to health and disease, the Globe adds, noting that it will focus not only on the heart, but also the brain and liver.


### Implementations

**inverse Normal transformation**

from GLGC/GIANT analysis plan,
```text
in SAS:
	proc rank data=mydata out=inv normal=blom;
	var x;
	run;
 
in R:
	#if you have missing data 
	y <- qnorm((rank(x,na.last="keep”)-0.5)/sum(!is.na(x))) 

in STATA:
	pctile pvariable = variable, nquantiles(N+1) genp(percent_variable) 
	gen inv_normal_variable=invnormal(percent_variable/100)
```
coded as follows,

**R**
```r
invnormal <- function(x) qnorm((rank(x,na.last="keep")-0.5)/sum(!is.na(x)))
```
**SAS**
```sas
/*on x by b*/
proc rank data=r out=check normal=blom;
     var x;
     ranks r;
     by b;
run;
```
**Stata**
```stata
/*from regression -- clumsy with groups*/
local N1=e(N)+1
pctile px=x, nq(`N1') genp(p)
replace xinv=invnormal(p/100)
```

### summary statitics

/scratch/jhz22/COPD
