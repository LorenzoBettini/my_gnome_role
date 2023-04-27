FROM gitpod/workspace-python-3.9:2023-03-24-22-45-37

# when changing this file, run `gp validate` to test the new image in the current workspace
# https://www.gitpod.io/docs/configure/workspaces/workspace-image#trying-out-changes-to-your-dockerfile

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint
