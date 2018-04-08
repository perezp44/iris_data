#- simplmente crear iris en diferentes formatos para practicar importación de datos en curso R
iris <- iris

library(readr)
write_csv(iris, "./data/iris.csv")


library(xlsx)
write.xlsx(iris, "./data/iris.xlsx")


library(haven)
write_sav(iris, "./data/iris.sav")


library(foreign)
write.dta(iris, "./data/iris.dta")
#write_sas(mtcars, "./data/mtcars.sas") 


save(iris,  file = "./data/iris.RData")

write_rds(iris, "./data/iris.rds")


library(rio)
#install_formats()
#library(rmatio)
#export(iris, "./data/iris.csv")    # comma-separated values
#export(iris, "./data/iris.rds")    # R serialized
#export(iris, "./data/iris.sav")    # SPSS
export(iris, "./data/iris.json")    # JSON
export(iris, "./data/iris.arff")    # Weka Attribute-Relation File Format
export(iris, "./data/iris.xml")     # XML
#export(iris, "./data/iris.mat")     # Matlab




#--------------------- te vas a TERMINAL y haces esto para subir cambios
git remote add origin https://github.com/perezp44/iris_data.git
git add -A
git commit --all --message "first commit"
git push -u origin master


#- para cargar los datos del repo iris_data

url <- "https://raw.githubusercontent.com/perezp44/iris_data/master/data/iris.csv"

library(readr)
iris_imp_csv <- read_csv(url)

library(rio)
iris_csv_rio <- import(url)   # comma-separated values
