name "ossec_client"
description "OSSEC Client Agents"
run_list("recipe[ossec::client]")
override_attributes(
  "ossec" => {
    "conf" => {
      "agent" => {
        "syscheck" => {
          "frequency" => 321
        }
      }
    }
  }
)
