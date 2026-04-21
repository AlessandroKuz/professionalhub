# ══════════════════════════════════════════════════════════════════════════════
# ProfessionalHub — justfile
# ══════════════════════════════════════════════════════════════════════════════
#
# Usage:   just <recipe>
# Help:    just           (lists all recipes with their comments)
# Dry run: just --dry-run <recipe>
#
# Install just on Arch: sudo pacman -S just
# Install just on Debian/Ubuntu: sudo apt install just
# Requires: just, uv, mkdocs, docker, docker compose v2
# ══════════════════════════════════════════════════════════════════════════════


# ── Variables ─────────────────────────────────────────────────────────────────
# just variables use := and are interpolated with {{ }} in recipes.
# No $ escaping needed — shell commands use $ freely without conflicts.

uv      := "uv"
run     := uv + " run"
manage  := run + " manage.py"
dc      := "docker compose"

# ── Default: list all recipes ──────────────────────────────────────────────────
# Running bare `just` lists all recipes and their doc-comments automatically.
# No grep/awk trick needed — this is built into just.

# List all recipes — run `just` with no arguments to invoke this
default:
    @just --list --list-heading $'ProfessionalHub - available recipes:\n'


# ── Dependencies ──────────────────────────────────────────────────────────────

# Install all dependencies from uv.lock (reproducible environment)
install:
    {{ uv }} sync

# Upgrade all dependencies to latest compatible versions and update uv.lock
upgrade:
    {{ uv }} sync --upgrade
    @echo "→ uv.lock has been updated. Review the diff before committing."


# ── Development Server ────────────────────────────────────────────────────────

# Start the ASGI dev server via uvicorn (auto-reloads on file changes)
run:
    {{ run }} uvicorn config.asgi:application --reload \
        --reload-include "*.html" \
        --reload-include "*.css" \
        --reload-include "*.scss" \
        --reload-include "*.js"


# ── Static Files & Linting ────────────────────────────────────────────────────

# Run Ruff linter — reports issues without modifying files
lint *args:
    {{ run }} ruff check {{ if args == "" { "." } else { args } }}

# Run Ruff linter and automatically fix all auto-fixable issues
lint-fix:
    {{ run }} ruff check --fix .

# Run Ruff formatter — reformats source code according to style rules
format *args:
    {{ run }} ruff format {{ if args == "" { "." } else { args } }}

# ── Docs ──────────────────────────────────────────────────────────────────────

# Serve docs locally with at http://127.0.0.1:8000
docs:
    {{ run }} mkdocs serve

# Serve docs locally with live reload at http://127.0.0.1:8000
docs-lr:
    {{ run }} mkdocs serve --livereload

# Build static docs site into site/
docs-build:
    {{ run }} mkdocs build

# Deploy docs to GitHub Pages
docs-deploy:
    {{ run }} mkdocs gh-deploy --force


# ── Testing ───────────────────────────────────────────────────────────────────

# Run the full test suite
test *args:
    {{ run }} pytest {{ args }}

# Run the full test suite with verbose output (shows each test name)
test-verbose *args:
    {{ run }} pytest -v {{ args }}

# Run tests and display a per-file line coverage report
test-coverage:
    {{ run }} pytest --cov=. --cov-report=term-missing

# Run lint + format check + full test suite — your pre-push safety net
ci:
    {{ run }} ruff check .
    {{ run }} ruff format --check .
    {{ run }} pytest


# ── Deployment (Docker) ───────────────────────────────────────────────────────
# Docker is used exclusively for deployment. There is one compose file.
# All commands here operate on docker-compose.yml.

# Build Docker images (run after changing Dockerfile or adding dependencies)
build:
    {{ dc }} build

# Build images and start all containers in the background
up:
    {{ dc }} up -d --build

# Stop and remove all containers (named volumes are preserved)
down *args:
    {{ dc }} down {{ args }}

# Stream live logs from all running containers (Ctrl+C to stop)
logs *args:
    {{ dc }} logs -f {{ args }}

# Show the status and port bindings of all containers
ps:
    {{ dc }} ps

# Open an interactive bash shell inside the running web container
exec:
    {{ dc }} exec /bin/bash

# Full deployment cycle: rebuild images, restart containers, migrate, compile translations
deploy: build
    {{ dc }} up -d


# ── Cleanup ───────────────────────────────────────────────────────────────────

# Remove Python bytecode caches and compiled translation files
clean:
    find . -type d -name __pycache__ -exec rm -rf {} +
    find . -name "*.pyc" -delete
    find . -name "*.mo" -delete
    @echo "→ Workspace cleaned."
