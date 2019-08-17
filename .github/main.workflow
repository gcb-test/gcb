workflow "Push workflow" {
  on = "push"
  resolves = [
    "hi",
  ]
}

workflow "Scheduled workflow" {
  on = "schedule(* * * * *)"
  resolves = [
    "hi",
  ]
}

action "hi" {
  uses = "actions/npm@master"
  args = "version"
}
