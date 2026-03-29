***Settings***
Resource        ../resources/login.robot
Resource        ../resources/cart.robot
Resource        ../resources/catlog.robot
Suite Setup     Open Login Page
Suite Teardown  Close Browser
*** Test Cases ***
login check
    Login With Credentials
    close popup
#    change account

cart flow
#     quick add to cart
#    add to cart by search
    add to cart by catalog
#     Go Home
service check
      services
      customer arg
      Consignment Issue and indirectCustomer-agree
catagories Flow
     user management
     invoice
     report
     template
     sellout

signoff
      close