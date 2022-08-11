job "init_[[.my.job_name]]_[[.my.version ]]" {
  type        = "batch"
  datacenters =  ["dc1"]

  group "init" {
    task "init" {
      driver = "docker"

      config {
        image   = "alpine:3"
        command = "echo"
        args    = ["init"]
      }
    }
  }
}
