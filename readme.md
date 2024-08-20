# CALOR proceedings source files

compile the latex source files with:
```
./compile.sh
```
from the top directory of the git repo.


## HGCal plots:
public repo here

ssh://git@gitlab.cern.ch:7999/cms-rc/cmsdpgplots/hgcalplots.git

econ and roc plots here:
hgcalplots/content/HGCAL-DP-2024_002/

displayed here:
https://cmsdpgplots.web.cern.ch/#/hgcal

## Latex style files

macro-latex-web-conf.zip
was taken from https://indico.cern.ch/event/1339557/page/32174-proceedings


## remove blank page at end of file:

from command line (output file name must be different):
`pdftk proc.pdf cat 1-4 output proc_4.pdf`


