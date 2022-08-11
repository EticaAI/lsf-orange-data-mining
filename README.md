# Lexicographī Sine Fīnibus dictiōnāriīs cum Orange Data Mining
This repository contains `.ows` [Orange3](https://orangedatamining.com/)
workflow files for some use cases.

> **PROTIP: consider also the <https://orangedatamining.com/workflows/> and the Youtube Channel <https://www.youtube.com/channel/UClKKWBe2SCAEyv7ZNGhIe4g>**


## How to use the files

Each `.ows` requires Orange3 installed. The next steps explain one way to do it

### Setup
- https://orangedatamining.com/download/

```bash
# Minimal
pip install orange3

# Additional
pip install Orange3-Geo
pip install Orange3-Timeseries
pip install orange3-text

# @TODO explain how to install https://github.com/fititnt/orange3-hxl

```

### Download caches (optional)

```bash
./999999999/0/download-test-datasets.sh
```

### Running Orange3

```bash
orange-canvas
```

<!--
 ## Internal notes

- https://stackoverflow.com/questions/tagged/orange
- https://datascience.stackexchange.com/questions/24781/use-feature-constructor-in-orange-to-extract-number-from-string
- https://orange3.readthedocs.io/projects/orange-visual-programming/en/latest/widgets/data/featureconstructor.html


- UN OCHA / Country and Territory
  - https://proxy.hxlstandard.org/data.csv?dest=data_edit&filter01=cut&cut-skip-untagged01=on&strip-headers=on&url=https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fd%2F1NjSI2LaS3SqbgYc0HdD8oIb7lofGtiHgoKKATCpwVdY%2Fedit%23gid%3D1088874596
- 1603_16_1_0
  - https://raw.githubusercontent.com/MDCIII/1603_16_1/main/1603/16/1/0/1603_16_1_0.no1.tm.hxl.csv
- 1603_9966_1_0
  - https://raw.githubusercontent.com/MDCIII/1603_9966_1/main/1603/9966/1/0/1603_9966_1_0.no1.tm.hxl.csv

-->

## Preparing new release

> Why? Orange working files store base64 encoded data with
  `<properties format="pickle"></properties>`. This command remove them
  and save on the git tracked files.

```bash
./999999999/0/prepare-orange-files.sh
```

# To Dos

For sake of allow comparisons, regardless of have very detailed tables (such as by year 1960-2020) to allow comparisons, is necessary to know baselines (likely last year, even if approximate) for features such as:

## Tier 1
- **Surface area (sq. km)**
  - <https://data.worldbank.org/indicator/AG.SRF.TOTL.K2>
  - area (P2046) <https://www.wikidata.org/wiki/Property:P2046>
- **Total population**
  - <https://data.worldbank.org/indicator/SP.POP.TOTL>
  - population (P1082) <https://www.wikidata.org/wiki/Property:P1082>
- **GDP (current US$)**
  - <https://data.worldbank.org/indicator/NY.GDP.MKTP.CD>
  - nominal GDP (P2131) https://www.wikidata.org/wiki/Property:P2131
  - nominal GDP per capita (P2132) <https://www.wikidata.org/wiki/Property:P2132>

## Tier 2

- **Literacy rate**
  - literacy rate (P6897) <https://www.wikidata.org/wiki/Property:P6897>
  - <https://data.worldbank.org/indicator/SE.ADT.LITR.ZS>
    - Note to self: strange. It's incomplete
- **Unemployment**
  - unemployment rate (P1198) https://www.wikidata.org/wiki/Property:P1198
  - <https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS>
    - This other migth be relevant: <https://data.worldbank.org/indicator/SL.EMP.TOTL.SP.ZS>
- **Arable land (% of land area)**
  - https://data.worldbank.org/indicator/AG.LND.ARBL.ZS

## Tier 3
> Not sure about these ones

- **Location, continent**
  - continent (P30) <https://www.wikidata.org/wiki/Property:P30>
- **rural population**
  - <https://data.worldbank.org/indicator/SP.RUR.TOTL>
  - rural population (P6344) <https://www.wikidata.org/wiki/Property:P6344>
- **urban population (P6343)**
  - <https://www.wikidata.org/wiki/Property:P6343>


<!--

- https://www.wikidata.org/wiki/Q155
  - time of discovery or invention (P575) <https://www.wikidata.org/wiki/Property:P575>
    - Maybe this could be used as proxy for data of past cononization

-->


# License

[![Public Domain Dedication](img/public-domain.png)](UNLICENSE)

The [EticaAI](https://github.com/EticaAI) has dedicated the work to the
[public domain](UNLICENSE) by waiving all of their rights to the work worldwide
under copyright law, including all related and neighboring rights, to the extent
allowed by law. You can copy, modify, distribute and perform the work, even for
commercial purposes, all without asking permission.