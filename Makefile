.PHONY: help install install-dev test test-cov lint format clean build

help:
	@echo "RAG Document Processor - Development Commands"
	@echo ""
	@echo "Available commands:"
	@echo "  make install          Install project dependencies"
	@echo "  make install-dev      Install development dependencies"
	@echo "  make test             Run tests with pytest"
	@echo "  make test-cov         Run tests with coverage report"
	@echo "  make lint             Run linting checks (ruff, black, mypy)"
	@echo "  make format           Format code with black and ruff"
	@echo "  make clean            Remove build artifacts and cache files"
	@echo "  make build            Build distribution packages"

install:
	pip install -r requirements.txt

install-dev:
	pip install -r requirements.txt
	pip install -r requirements-dev.txt

test:
	pytest

test-cov:
	pytest --cov=rag_processor --cov-report=html --cov-report=term

lint:
	@echo "Running ruff..."
	ruff check .
	@echo "Running black check..."
	black --check .
	@echo "Running mypy..."
	mypy . || true

format:
	@echo "Formatting with black..."
	black .
	@echo "Fixing with ruff..."
	ruff check . --fix

clean:
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name '*.pyc' -delete
	find . -type d -name '.pytest_cache' -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name '.mypy_cache' -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name '.ruff_cache' -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name 'htmlcov' -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name '.coverage' -delete
	rm -rf build/ dist/ *.egg-info/ 2>/dev/null || true

build: clean
	python -m build

.DEFAULT_GOAL := help