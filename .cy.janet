(param/set :root :default-shell "/usr/bin/zsh")

(key/action
  action/new-project-shell
  "create a new shell in the current project"
  (def parent (tree/parent (pane/current)))
  (def path (cmd/path (pane/current)))
  (def shell (cmd/new parent :path path :name (path/base path)))
  (pane/attach shell)
)

(key/action
  action/new-project
  "Create a new project."
  (def path (cmd/path (pane/current)))
  (def projects (group/mkdir :root "/projects"))
  (def project (group/new projects :name (path/base path)))
  (def editor
    (cmd/new project
             :path path
             :name "editor"
             :restart true))
  (pane/send-keys editor @[(os/getenv "EDITOR" "vim") "enter"])
  (def shell
    (cmd/new project
             :path path
             :name "shell"
             :restart true))
  (pane/attach editor)
)

(key/bind :root ["ctrl+a" "N"] (fn []
    (action/new-project-shell)
    (action/rename-pane)
))

(key/bind :root ["ctrl+a" "R"] action/reload-config)
(key/bind :root ["ctrl+a" "r"] action/rename-pane)
(key/bind :root ["ctrl+a" ":"] action/jump-group-pane)
(key/bind :root ["ctrl+a" "["] action/prev-pane)
(key/bind :root ["ctrl+a" "]"] action/next-pane)
