# nomad-pack-with-init

Sample Nomad Pack that runs a batch initialization task every time the app
version changes.

### Example

```console
$ git clone https://github.com/lgfa29/nomad-pack-with-init.git
Cloning into 'nomad-pack-with-init'...
remote: Enumerating objects: 8, done.
remote: Counting objects: 100% (8/8), done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 8 (delta 0), reused 8 (delta 0), pack-reused 0
Receiving objects: 100% (8/8), 6.85 KiB | 1.71 MiB/s, done.

$ cd nomad-pack-with-init

$ nomad-pack run -var job_name=example -var version=4 -var count=2 .
  Evaluation ID: 07d878ea-6ab8-321e-2fee-c6118bb02856
  Job 'example' in pack deployment 'nomad-pack-with-init' registered successfully
  Evaluation ID: 338c68b8-270c-2ec5-7c9d-3da0d0fd3efe
  Job 'init_example_4' in pack deployment 'nomad-pack-with-init' registered successfully
Pack successfully deployed. Use . to manage this deployed instance with plan, stop, destroy, or info


$ nomad-pack run -var job_name=example -var version=7 -var count=2 .
  Evaluation ID: b3be1034-44e5-18ca-c206-ff189c9e7d36
  Job 'init_example_7' in pack deployment 'nomad-pack-with-init' registered successfully
  Evaluation ID: ecc41e26-8a3f-de00-e866-c6ba634fa112
  Job 'example' in pack deployment 'nomad-pack-with-init' registered successfully
Pack successfully deployed. Use . to manage this deployed instance with plan, stop, destroy, or info
```
