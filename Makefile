.PHONY: setup test clean

setup:
	@echo "🔧 Running setup.sh..."
	bash setup.sh

test:
	@echo "🚀 Running test_dashboard.sh..."
	bash test_dashboard.sh

clean:
	@echo "🧹 Running cleanup.sh..."
	bash cleanup.sh
