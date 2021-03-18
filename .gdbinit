# ~/.gdbinit

# pretty print
python
import sys
sys.path.insert(0, '/usr/share/gcc-8/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end

set print element 0
set print array on
set print pretty on
set print object on
set print vtbl on
set print symbol on
set auto-solib-add on

# for tvm PrettyPrint
define pp
  print tvm::PrettyPrint($arg0).data()
