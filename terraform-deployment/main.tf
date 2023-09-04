// This is a template file for a basic deployment.
// Modify the parameters below with actual values
module "sample-qs" {
  // location of the module - can be local or git repo
  source = "./modules/sample-module"

  # - Cognito -
  # Admin Users to create
  sample_admin_cognito_users = {
    Hemanthc : {
      username       = "Hemanthc"
      given_name     = "admin"
      family_name    = "c"
      email          = "hemanthchitt@gmail.com"
      email_verified = true // no touchy
    },

  }
  # Standard Users to create
  sample_standard_cognito_users = {
    DefaultStandardUser : {
      username       = "default"
      given_name     = "Default"
      family_name    = "User"
      email          = "example@example.com"
      email_verified = true // no touchy
    }
  }

}
