rm(list = ls(all=TRUE))

library(stringr)
setwd("/Users/mro/Downloads/Certificates/nloutput/")
setwd("/Users/mro/Downloads/Certificates/ukoutput/")

folders = c("lettera/",
            "letterb/",
            "letterc/",
            "letterd/",
            "lettere/",
            "letterf/",
            "letterg/",
            "letterh/",
            "letteri/",
            "letterj/",
            "letterk/",
            "letterl/",
            "letterm/",
            "lettern/",
            "lettero/",
            "letterp/",
            "letterq/",
            "letterr/",
            "letters/",
            "lettert/",
            "letteru/",
            "letterv/",
            "letterw/",
            "letterxyz/",
            "numbers/")

files = c()
for(i in 1:length(folders)){
  vectoroffiles = paste(folders[i], list.files(folders[i]), sep = "/")
  files = c(files, vectoroffiles)
}

output = data.frame(matrix(ncol = 10))
colnames(output) = c("domain",
                     "subject",
                     "issuer", 
                     "digest", 
                     "type", 
                     "tempkey", 
                     "mskey", 
                     "cipher", 
                     "pukey", 
                     "certificate")
pb = txtProgressBar(min = 0, max = length(files), initial = 0) 
for (i in 3:length(files)) {
  # read in data
  x = readLines(paste(files[i]))

  # get queried domain name
  domain = unlist(strsplit(files[i], "_"))[1]
  
  # get actual source domain name
  subject = x[grep("subject", x)]
  subject = substr(subject, unlist(gregexpr('CN', subject))+5, nchar(subject))
  
  # issuer 
  issuer = x[grep("issuer", x)]
  issuer = substr(issuer, unlist(gregexpr('CN', issuer))+5, nchar(issuer))
  
  # digest 
  digest =  x[grep("Peer signing digest", x)]
  digest = substr(digest, unlist(gregexpr('digest: ', digest))+8, nchar(digest))
  if(length(digest) == 0){digest = 0}
  
  # type 
  type =  x[grep("Peer signature type", x)]
  type = substr(type, unlist(gregexpr('type: ', type))+6, nchar(type))
  if(length(type) == 0){type = 0}
  
  # temp key 
  tempkey =  x[grep("Server Temp Key:", x)]
  tempkey = substr(tempkey, unlist(gregexpr('Key: ', tempkey))+5, nchar(tempkey))
  if(length(tempkey) == 0){tempkey = 0}
  
  if(length(tempkey)==0){
    tempkey = "UNKNOWN"
  }
  
  if(grepl("ECDH", tempkey, fixed = TRUE) | grepl("DH", tempkey, fixed = TRUE)){
    # master key
    mskey =  x[grep("Master-Key:", x)]
    mskey = substr(mskey, unlist(gregexpr('Key: ', mskey))+5, nchar(mskey))
    if(length(mskey) == 0){mskey = 0}
  } else if(grepl("X25519", tempkey, fixed = TRUE) | grepl("UNKNOWN", tempkey, fixed = TRUE)){ # this is for testing
    mskey = 0
  } else {
    mskey = 0
    #break
  }
  
  # cypher
  cipher = x[grep("Cipher is", x)]
  
  # public key 
  pukey = x[grep("Server public key", x)]
  pukey = substr(pukey, unlist(gregexpr('key', pukey))+7, nchar(pukey)-4)
  if(length(pukey) == 0){pukey = 0}

  # get certificate
  cert.start = grep("BEGIN CERTIFICATE", x)+1
  cert.end = grep("END CERTIFICATE", x)-1
  certificate = str_c(x[cert.start:cert.end], collapse = "")
  
  combine = cbind(domain, subject, issuer, digest, type, tempkey, mskey, cipher, pukey, certificate)
  output = rbind(output, combine)
  
  setTxtProgressBar(pb,i)
}
close(pb)

uniqueaddresses = output[!duplicated(output$subject),]
collisions = uniqueaddresses[duplicated(uniqueaddresses$certificate),]

write.table(output, "ukoutput.csv", 
            row.names = F, col.names= F, 
            sep = ",")



collisions = output[duplicated(output$certificate),]

