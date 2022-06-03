
library(caesar)

enc = function(x)
{
    ec = caesar::seed_cipher(x,seed = 500,decrypt = FALSE)
 return(ec)   
}
dec = function(x)
{
    dc = caesar::seed_cipher(x,seed = 500 ,decrypt = TRUE)
 return(dc)   
}

flag=TRUE
while(flag){
cat("\n\t\tWelcome to Text Encryption Program \n")
cat("\n")
print("[1] To Encrypt Text")
print("[2] To Decrypt Text")
print("[3] Exit")
ch = readline(prompt="Enter ur choice: : ")

switch (ch,
  '1' = {
       ptxt = readline(prompt="Enter a secrect message: ")
       enctxt = lapply(ptxt, enc)
       print(paste("Your encrypted Text: ",noquote(enctxt)),quote = FALSE)
      },
  '2' = {
       key = readline(prompt="Enter a text to decrypt: ")
       dctxt = lapply(key, dec)
       print(paste("Your decrypted Text: ",noquote(dctxt)),quote = FALSE)
       
      },
  '3' = {
        print("Author: MG",quote=FALSE)
        print("Date: 26 May 22",quote=FALSE)
        print("Program END",quote=FALSE)
        flag=FALSE},
  print("Invalid Choice....!! Try again..!!")  # default
)

}