#histograma - numarul de studenti si ani de studiu
lvlEdu = CollegeDistance$education

hist(lvlEdu, main="Histograma anilor de studiu",
      xlab="Numar de ani de educatie",
      ylab="Numar de elevi", 
      col="pink", 
      ylim=c(0, 2000))


# barplot(table(SuperMarket_Analysis$Gender),main = "Reprezentarea Genului", xlab ="Genul", ylab="Frecventa", ylim =c(0,600), col = "blue")
liveUrban = table(CollegeDistance$urban)
barplot(liveUrban, main="Studenti ce traiesc in orase",
        xlab="Raspuns",
        ylab="Numar de respondenti",
        #ylim=c(0, 500),
        col="red")

studentEth = table(CollegeDistance$ethnicity)
pie(studentEth,
    main="Etnicitatea studentilor")

#plot(SuperMarket_Analysis$Gross_income ~ SuperMarket_Analysis$Sales, xlab ="Gross Income", ylab="Sales",ylim=c(0,600000), main ="Gross Income versus Sales")
plot(CollegeDistance$education ~ CollegeDistance$wage)

parrentsCollegeStatus = table(c(CollegeDistance$mcollege, CollegeDistance$fcollege))
barplot(parrentsCollegeStatus,
        main="Studenti cu ambii parinti absolventi de facultate",
        xlab = "Raspunsuri",
        ylab = "Numar de raspunsuri",
        col = "green",
        names.arg = c("Nu", "Da"))

boxplot(CollegeDistance$wage ~ CollegeDistance$home,
        main="Persoane care isi detin casa si salariul pe ora",
        xlab = "Isi detin casa?",
        ylab = "Salariul pe ora",
        names = c("Inchiriaza", "Detin"),
        col="brown")
