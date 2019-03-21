# test-cwl

Dependencies are installed with [cwldep]https://github.com/common-workflow-language/cwldep)

```
cd workflows/

cwldep add --install-to ../tools/RetroPath2 rp2-to-rp2path.cwl https://raw.githubusercontent.com/ibisba/RetroPath2-cwl/0.0.1/tools/RetroPath2.cwl^C

cwldep add --install-to ../tools/rp2paths rp2-to-rp2path.cwl https://raw.githubusercontent.com/ibisba/rp2paths-cwl/1.0.2-1/tools/rp2paths.cwl
```

