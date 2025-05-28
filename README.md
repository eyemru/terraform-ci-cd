# okta-cicd-config

This project manages Okta configuration as code and enables CI/CD-driven migration of Okta resources between environments (e.g., dev, staging, production).

## Project Structure

- `config/` — Okta configuration files (YAML/JSON for apps, groups, policies, etc.)
- `scripts/` — Automation and migration scripts (Python)
- `pipelines/` — CI/CD pipeline definitions (e.g., GitHub Actions workflows)
- `docs/` — Documentation and usage guides

## Getting Started

1. Clone this repository and install dependencies:
   ```sh
   pip install -r requirements.txt
   ```
2. Place Okta configuration files in the `config/` directory.
3. Use scripts in `scripts/` to validate, apply, or migrate configuration.
4. Set up your CI/CD provider using the templates in `pipelines/`.

## Requirements
- Python 3.13+
- Okta API token (set as environment variable)

## Goals
- Track Okta config in version control
- Enable automated, repeatable migrations
- Support multi-environment promotion (dev → prod)
- Provide clear audit trail and rollback capabilities

---

*See `docs/` for detailed usage and workflow examples.*
