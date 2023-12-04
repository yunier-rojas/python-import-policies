from click.testing import CliRunner
from importlinter.cli import lint_imports_command


def test_import_with_allow_rules_should_succeed():
    runner = CliRunner()
    result = runner.invoke(lint_imports_command, ["--config", "tests/allow-rules.ini"])
    assert result.exit_code == 0, result.output


def test_import_with_disallow_rules_should_fail():
    runner = CliRunner()
    result = runner.invoke(lint_imports_command, ["--config", "tests/disallow-rules.ini"])
    assert result.exit_code == 1, result.output

