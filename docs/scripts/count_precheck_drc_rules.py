import csv

from pathlib import Path

# Get absolute path relative to this script file
script_dir = Path(__file__).parent.resolve()
csv_dir = (script_dir / "../verification/drc/tables").resolve()

# Match all relevant CSV files
csv_files = list(csv_dir.glob("precheck_drc_*.csv"))

total = 0
for path in csv_files:
    with path.open(encoding="utf-8") as f:
        reader = csv.reader(f)
        count = len(list(reader))
        total += count

# Output snippet to be included in the RST
output_path = csv_dir / "_precheck_drc_rule_count.rst"
with output_path.open("w", encoding="utf-8") as out:
    out.write(f"Total: **{total}**\n")


# SG13CMOS5L: the SG13G2 set without the excluded rules, plus its forbidden layers
def count_rows(name):
    with (csv_dir / name).open(encoding="utf-8") as f:
        return len(list(csv.reader(f)))


cmos5l_total = (
    total
    - count_rows("cmos5l_precheck_excluded.csv")
    + count_rows("cmos5l_precheck_forbidden.csv")
)
output_path = csv_dir / "_cmos5l_precheck_rule_count.rst"
with output_path.open("w", encoding="utf-8") as out:
    out.write(f"SG13CMOS5L total: **{cmos5l_total}**\n")
