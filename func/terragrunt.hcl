
#path to root HCL
include {
    path = find_in_parent_folders()
}

#current path
terraform {
  source = "../func"
}

#dependencies
dependencies {
  paths = ["../rg", "../sa", "../monitor"]
}

#dependencies in order
dependency "rg" { 
  config_path = "../rg"
  skip_outputs = false
  mock_outputs = {
    rg_id = "/subscriptions/244d"
  }
}

#dependencies in order
dependency "sa" { 
  config_path = "../sa"
  skip_outputs = false
  mock_outputs = {
    account_name = "somename"
    pri_access_key = "number3"
  }
}

dependency "monitor" {
  config_path = "../monitor"
  skip_outputs = false
  mock_outputs = {
    instrumentation_key = "sampledata"
    connection_string = "sampledata2"
  }
}

#inputs
inputs = {
  instrumentation_key = dependency.monitor.outputs.instrumentation_key
  connection_string = dependency.monitor.outputs.connection_string
  account_name = dependency.sa.outputs.account_name
  pri_access_key = dependency.sa.outputs.pri_access_key
  rg_id = dependency.rg.outputs.rg_id
}