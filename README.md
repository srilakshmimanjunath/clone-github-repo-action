# Clone Github Repository Action

Github Action to clone a public or private Github repository and access its content on other workflows.

## How to use this action?

To use this action to clone a PRIVATE repository, you need to create a [PERSONAL ACCESS TOKEN](https://github.com/settings/tokens) with REPOSITORY scopes.

Then, you can use the `cd <repository-name>` command to access the cloned repository content.

### For a public repository

```bash
- name: Clone GuillaumeFalourd/poc-github-actions PUBLIC repository
        uses: GuillaumeFalourd/clone-github-repo-action@main
        with:
          owner: 'GuillaumeFalourd'
          repository: 'poc-github-actions'
```

### For a private repository

```bash
      - name: Clone GuillaumeFalourd/formulas-training PRIVATE repository
        uses: GuillaumeFalourd/clone-github-repo-action@main
        with:
          owner: 'GuillaumeFalourd'
          repository: 'formulas-training'
          access-token: ${{ secrets.ACCESS_TOKEN }}
```

## Licensed

This repository uses the [Apache License 2.0](https://github.com/GuillaumeFalourd/aws-cliaction/blob/main/LICENSE)
