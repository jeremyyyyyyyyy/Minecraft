# Minecraft
# version: "3"

services:
    minecraft-server:
        build: 
         context: .
         args:
             RAM_AMOUNT: ${RAM_AMOUNT}            # mise en place de la variable RAM 5G

        tty: true
        restart: unless-stopped                   # je souhaites avoir la main sur ce paramètre alors je le met en "manuel"
        volumes:
          - .server-data:/server                   
          -  plugins:/plugins
        ports:
          - 25565:25565
          environnement :
           EULA: "TRUE"
           TYPE: "VANILLA"
           OPS: "RongeMonBambou"
           ENABLE_WHITELIST: "TRUE"
           ENFORCE_WHITELIST: "TRUE"
           
        

        container_name:  ${CONTAINER_NAME}        
                
volumes:
   server-data:
     extrenal: true 
  