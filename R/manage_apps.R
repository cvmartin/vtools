# Manage apps

deploy_app <- function(folder, user = "ubuntu") {
  command <- sprintf("sudo cp -R /home/%s/%s /srv/shiny-server",
                     user,
                     folder)
  system(command)

}

remove_app <- function(app) {
  command <- sprintf("sudo rm -r /../srv/shiny-server/%s",
                     app)
  system(command)
}

