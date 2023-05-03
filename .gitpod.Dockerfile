FROM gitpod/workspace-python-3.10:2023-01-02-17-16-30

# when changing this file, run `gp validate` to test the new image in the current workspace
# https://www.gitpod.io/docs/configure/workspaces/workspace-image#trying-out-changes-to-your-dockerfile

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint
