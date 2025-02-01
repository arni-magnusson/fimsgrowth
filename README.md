# fimsgrowth

An R package can have one DLL, so multiple models (von Bertalanffy, GCM, etc.)
need to be combined into a single DLL.

The [unmarked](https://cran.r-project.org/package=unmarked) package demonstrates
how this can be done in a TMB package. The `unmarked_TMBExports.cpp` file
combines the models,

```cpp
#include "tmb_pcount.hpp"
#include "tmb_multinomPois.hpp"
#include "tmb_distsamp.hpp"
#include "tmb_gdistremoval.hpp"
#include "tmb_IDS.hpp"
#include "tmb_goccu.hpp"
```

and then decides which C++ function should be run:

```cpp
template<class Type>
Type objective_function<Type>::operator() () {
  DATA_STRING(model);
  if(model == "tmb_occu") {
    return tmb_occu(this);
  } else if(model == "tmb_pcount") {
    return tmb_pcount(this);
  } else if(model == "tmb_multinomPois"){
    return tmb_multinomPois(this);
  } else if(model == "tmb_distsamp"){
    return tmb_distsamp(this);
  } else if(model == "tmb_gdistremoval"){
    return tmb_gdistremoval(this);
  } else if(model == "tmb_IDS"){
    return tmb_IDS(this);
  } else if(model == "tmb_goccu"){
    return tmb_goccu(this);
  }
  return 0;
}
```
