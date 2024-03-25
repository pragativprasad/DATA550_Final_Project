report.html: Code/04_Render_Report.R report.Rmd
	Rscript Code/04_Render_Report.R
  
Output/Clinic_Obesity_Prevalence.rds: Code/01_Calculate_Obesity_Prevalence.R Data/synthetic_data.csv
	Rscript Code/01_Calculate_Obesity_Prevalence.R
  
Output/Table1.rds: Code/02_Make_Table1.R Data/synthetic_data.csv
	Rscript Code/02_Make_Table1.R

Output/Figure1.rds: Code/03_Make_Figure1.R Output/Clinic_Obesity_Prevalence.rds Data/synthetic_data.csv
	Rscript Code/03_Make_Figure1.R

.PHONY: clean
clean:
	rm Output/*.rds
	

	
