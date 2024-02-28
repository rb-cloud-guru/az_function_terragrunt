
#path to root HCL
include {
    path = find_in_parent_folders()
}

#current path
terraform {
  source = "../eventsub"
}

#dependencies
dependencies {
  paths = ["../rg", "../func"]
}

#dependencies in order
dependency "rg" { 
  config_path = "../rg"
  skip_outputs = false
  mock_outputs = {
    rg_id = "randdomrg"
  }
}

dependency "func" {
  config_path = "../func"
  skip_outputs = false
  mock_outputs = {
    func_id = "dummyfunctionid"
  }
}

#inputs
inputs = {
  rg_id = dependency.rg.outputs.rg_id
  function_id = dependency.func.outputs.func_id
}