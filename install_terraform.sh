#On Ubuntu (i.e windows users), run the following commands on your terminal line by line:

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform

#to confirm terraform has been installed, check the version 
terraform -v


#on Mac, run the following commands on your terminal line by line:

brew tap hashicorp/tap

brew install hashicorp/tap/terraform

#to confirm terraform has been installed, check the version 
terraform -v
