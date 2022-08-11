job "[[.my.job_name]]" {
  datacenters = ["dc1"]

  group "cache" {
    count = [[.my.count]]

    network {
      port "db" {
        to = 6379
      }
    }

    task "redis" {
      driver = "docker"

      config {
        image = "redis:[[.my.version]]"

        ports = ["db"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
