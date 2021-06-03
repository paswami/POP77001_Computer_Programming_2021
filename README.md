# Computer Programming for Social Scientists (Fall 2021)

## Lecture slides

All slides are written as Jupyter Notebooks are are available in `/slides`. To convert slides to PDF (adapted from [here](https://rise.readthedocs.io/en/stable/exportpdf.html)):

1. Generate the slides and serve them using nbconvert:

```jupyter nbconvert --to slides XX_week.ipynb --post serve```

It opens up a webpage in the browser at http://127.0.0.1:8000/XX_week.slides.html#/

2. Add `?print-pdf` to the query string as http://127.0.0.1:8000/XX_week.slides.html?print-pdf

Note that you need to remove the `#` at the end. The page will render the slides vertically.

3. Save to PDF in Chrome using the print option
