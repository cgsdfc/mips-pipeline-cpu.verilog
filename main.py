import os
from pathlib import Path as P

COMMENT_CHARS = "//"
lic = P("./LICENSE").read_text().splitlines()
lic = [" ".join([COMMENT_CHARS, line]) for line in lic]
lic = "\n".join(lic) + "\n\n"

import itertools

for f in itertools.chain(
    P("./src").rglob("*.v"),
):
    # code = lic + f.read_text()
    # f.write_text(code)
    print(f)
    os.system('/opt/verilog-format/verilog-format -f {}'.format(f))
