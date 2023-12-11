Terraform connectivity forGCP Cloud and provisioning the aws services in high level
============================================================================
Pre-Requisites:
=============
1. Download and Install  GCP SDK in you local host.  (link to download :  https://cloud.google.com/sdk/docs/install)
2. Validate the Google cli or SDK installed or not through termianal by running the command  gcloud -v -- command 
      Note : set up the environemntal home path for gcloud sdk location
3. Create a Project
4. Create a service acccount for the specific project by assigning the roles permission ( ex: reader editior owner admin etc)
5. after creating the serivce account create a key and download it (it will be in json format)

ex: it looks below details like this

{
  "type": "service_account",
  "project_id": "durable-bond-407612",
  "private_key_id": "dd4b8c72278139d10c16fcf38ce5be6bba041b59",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDo0jFAfFWitlZa\nS11DZSlV0S+34lZIHUxwwKCyFnfqucCq/xIIyWeZr+qAd31JVNypYxilYC3/6Dlm\nv2Cahdr76iLFTUewb+YIMH83OXVN+v/aApY9i16LB8tdWW3Twxmg9xGLifrcWeKB\nMQfhGPiyqT72N+fjs/SD0yBAwkv5AOdpK19nnzjxVGVA2kUGKx11VTVFw3+0WPF/\nFDAe0I/LRio6X4TWPblwncVbr4j5JshQDyXdWmIYs96jYLuruN6/39DhRgKPJxZ+\nGpzBVLi8LystVAgOmYoF3BgLIl+lZQeqqWDHDneDXiU9fm9D7atBLaSS2okJbc8/\n8gqHVjdbAgMBAAECggEAU5OQxptbimt2GDfRpO3dpsbPIG2Jl52c4STlCsjyBzrj\nJP8nlCvoms0Bm1hJi1eBVvUR1dvu51yProiovw+qCqCEFtulDns80lfGcyaXK4Uc\n7z/aewFa0QHdSQdfW5M/0f6fN74yZYOGweW99FoofMowpeZvwdfJwMC7ZUPaTeoL\n3l7pt7ow05973Kn0EyZGQIvgPVBmjakzofGu2ja7EHm8TEpJG5a4V1rnn19pdjwy\ngica4CMfJn4TWEcnRRTqV5wWuQx54uuCS61G7CR/PHrzbh6XRXag15eOSxAVcCQy\nhVXLcKppCG5AhIzoeIomqKSM7Dq7NsraCjTFPIjh8QKBgQD2u+XLWWPAi1EvT18a\nBxvtO3n9MvuCnvlDxANHx1ZBfbuiXdK7N7n6fYrqFRCglOIbcJd/LAEx96CcUnvO\npss7lVOaiDD8pLQsrowqsElCxCBKwaIzhZikd2/1DtYBgmaeRFwHQMcEP6B9cejr\ng0LTSuCIHBFnyGLY6gNgKbuI/QKBgQDxkIkyDJRNLcuArSWWUfkghp0ToP8YJ/vh\nZ995i+52tDYEFdiSzJbPqay7scsDOr90dYG88WW7OMMQR1W1G23qab5DkU4ZAjiI\nBBjrAsCwer5rUsD753TpqswXd1JClQPS009zyaNAIkFP7byXFZSWr47MD/rzqlqg\ny4KCOF29NwKBgDE4lsUUVhQJNu7rNJuqo2WWIeXjD82lDTD5n3XoTErQXGgts2Zp\n3Y4dEWNVRHXkfZ7fvTk/fBWNwtqskcpN9+kxBvajCLK94LuxLoEtnc/V9GM1cbg5\nhJP6x7jpdsPiUbptBLbls04jq06bNM4W53PjUhuVDdvYW+/N71J1wNW5AoGBAOWy\nJxLFLVs5+XDQs5X9OmO4PLJGe2oP0w1hhPkBmu2arGY0E6x7B8hMsegDxmO6wARQ\nG956t95PugPHoPLGMz0b8YQ0LcvP9cs4Ai2tf2YQQPKyTLj7PItYEhsaJckUAv+8\nWKdkC2xXZj1HdPVA2vpx0tmtNFXwHZ8aBG4ohNH/AoGAPmUHLeJeRENRxAaZdHLn\nS+yV36CqhqZG1MvaV6Hf/hLivhLQ54YXLEwwiohI9GkZrJJmRHrSSbK8ki0QKxYH\nuFvcq4hs211OVDctrxKqwDby45Rg1bzLlqV9YKfFlIeh9ex3mxNxPPgaSjhVQQXH\n2mHqQWYytvUe89Dz7GlEIsE=\n-----END PRIVATE KEY-----\n",
  "client_email": "vishwa@durable-bond-407612.iam.gserviceaccount.com",
  "client_id": "102680050741894512569",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/vishwa%40durable-bond-407612.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

provider "google" {
    credentials = file("durable-bond-407612-dd4b8c722781.json")
    project = "durable-bond-407612"
    region = "asia-south1"
}

resource "google_storage_bucket" "demo" {
    name = "frist-tf-bucket"
    location = "asia-south1"
}

