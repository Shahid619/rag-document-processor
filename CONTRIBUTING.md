# Contributing to RAG Document Processor

Thank you for your interest in contributing! This document provides guidelines and instructions for contributing to the RAG Document Processor project.

## Code of Conduct

Please be respectful and constructive in all interactions. We are committed to providing a welcoming and inclusive environment for all contributors.

## Getting Started

### Prerequisites

- Python 3.9 or higher
- Git
- Virtual environment tool (venv or conda)

### Development Setup

1. Fork the repository
2. Clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/rag-document-processor.git
   cd rag-document-processor
   ```

3. Create a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

4. Install development dependencies:
   ```bash
   pip install -r requirements.txt
   pip install -r requirements-dev.txt
   ```

5. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Workflow

### Code Style

- Follow PEP 8 guidelines
- Use type hints for all functions
- Maximum line length: 100 characters
- Use meaningful variable and function names

### Running Tests

```bash
# Run all tests
pytest

# Run with coverage
pytest --cov=rag_processor

# Run specific test file
pytest tests/test_module.py
```

### Code Quality Checks

```bash
# Format code
black .

# Lint code
ruff check . --fix

# Type checking
mypy .
```

## Commit Guidelines

- Use clear, descriptive commit messages
- Follow conventional commits format:
  - `feat:` for new features
  - `fix:` for bug fixes
  - `docs:` for documentation
  - `test:` for tests
  - `refactor:` for code refactoring
  - `chore:` for maintenance

Example:
```
feat: add semantic search capability
fix: resolve vector store connection timeout
docs: update installation instructions
```

## Pull Request Process

1. Ensure your code passes all tests and quality checks
2. Update documentation if needed
3. Add tests for new functionality
4. Create a descriptive pull request with:
   - Clear title and description
   - Reference to related issues
   - Summary of changes
   - Any breaking changes

5. Address review feedback promptly

## Areas for Contribution

### Bug Fixes
- Check existing issues for known bugs
- Create a test case that reproduces the bug
- Fix the bug and ensure tests pass

### Features
- Discuss major features in an issue first
- Implement with comprehensive tests
- Update documentation

### Documentation
- Improve README and guides
- Add code examples
- Fix typos and clarify explanations

### Tests
- Increase test coverage
- Add edge case tests
- Improve test documentation

## Reporting Issues

When reporting bugs, please include:
- Python version
- Operating system
- Steps to reproduce
- Expected behavior
- Actual behavior
- Error messages or logs

## Questions?

Feel free to:
- Open a GitHub Discussion
- Create an issue with the `question` label
- Check existing documentation

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

Thank you for contributing to RAG Document Processor!