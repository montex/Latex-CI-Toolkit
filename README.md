# LaTeX CI Toolkit

This repository contains my personal toolkit for automating the compilation of
LaTeX documents using Docker and CI scripts.

## Contents

- `latex-commit-diff`: This script leverages `latexdiff` to create a PDF with tracked changes between two commits of the same LaTeX document. By default, it compares the current working directory with the last _tag_ in the repository. A custom reference can be specified using the `BASELINE` environment variable, or adding the reference commit/tag to a `.diffref` file in the repository root.

- `Dockerfile`: Defines a Docker image with a full LaTeX distribution and necessary tools, including the `latex-commit-diff` script.

- `examples-ci/`: A directory containing example CI configurations. For now, it only includes a GitLab CI example.

- `README.md`: This documentation file.

## Usage

```bash
export BASELINE=<commit>
export TEXFILES=<file1.tex> <file2.tex> ...
latex-commit-diff
```

## Contact

For questions or suggestions, feel free to [contact me](mailto:leonardo.montecchi@ntnu.no).

## License

This project is licensed under the GPL-3.0 License. See the [LICENSE](LICENSE) file for details.

(c) 2019-2024 Leonardo Montecchi.