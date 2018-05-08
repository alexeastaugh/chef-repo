name "ossec_server"
description "OSSEC Server"
run_list("recipe[ossec::server]")
override_attributes(
  "ossec" => {
    "conf" => {
      "server" => {
        "global" => {
          "email_to" => "alex.eastaugh@gmail.com",
          "smtp_server" => "smtp.gmail.com"
        }
      }
    }
  }
)
