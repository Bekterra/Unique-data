android <- read.csv("/Users/bekterra/Downloads/android_data(1).csv")

# Counting 'x' in each variable
a <- length(which(android$adobe.omniture == "x"))
a
b <- length(which(android$akamai.analytics == "x"))
b
c <- length(which(android$amazon.insights == "x"))
c

counts<- c(a,b,c)
typeof(counts)
barplot(counts, main="Number of 'x' in each variable", horiz=TRUE,
        names.arg=c("AdobeOm", "AkamaiAn", "AmazonIn"),
        col=c("purple","red","green"),cex.names=0.7,space=c(0,0,0))
# Computing unique value
a_uniq <- length(unique(android$adobe.omniture == "x"))
a_uniq
b_uniq <- length(unique(android$akamai.analytics == "x"))
b_uniq
c_uniq <- na.omit(length(unique(android$amazon.insights == "x")))
c_uniq
sd<- mean(a_uniq)
sd1<- mean(b_uniq)
sd3<- mean(c_uniq,na.rm=TRUE)

count_uniq <- c(a_uniq,b_uniq,c_uniq)
barplot(count_uniq, main="Number of unique 'x' in each variable", horiz=TRUE,
        names.arg=c("AdobeOm", "AkamaiAn", "AmazonIn"),
        col=c("yellow","red","black"),cex.names=0.7,space=c(0,0,0))
der<- na.omit(unique(android$amazon.insights == "x"))
der
