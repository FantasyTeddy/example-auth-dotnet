.PHONY: help prepare format lint test start

help:
	@echo "Usage:"
	@echo "  make start     Start the development server"
	@echo "  make prepare   Restore dependencies"
	@echo "  make format    Format code"
	@echo "  make lint      Check code formatting"
	@echo "  make test      Run tests"

prepare:
	dotnet restore

format:
	dotnet format

lint:
	dotnet format --verify-no-changes

test:
	dotnet test

start:
	dotnet restore
	dotnet run
