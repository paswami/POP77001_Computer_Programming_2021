# Computer Programming for Social Scientists (Fall 2021)

## Setting up virtual environment

1. Install `venv` module: `sudo apt install python3-venv`
2. Create virtual environment (names `venv` here) by running `python3 -m venv venv` in project root folder
3. Activate virtual environment `source venv/bin/activate`
4. Install Jupyter Notebook: `python -m pip install jupyter`
5. Install [RISE](https://github.com/damianavila/RISE) (Reveal.js - Jupyter/IPython Slideshow Extension): `python -m pip install RISE`

For managing dependencies:

6. Install [pip-tools](https://github.com/jazzband/pip-tools): `python -m pip install pip-tools`
7. Add main dependencies in `requirements.in`:

```
jupyter
RISE
```

8. Run `pip-compile requirements.in` to produce `requirements.txt`, which contains an exhaustive list of all dependencies.

## Lecture slides (HTML)

All slides are written as Jupyter Notebooks are are available in `/lectures`. To convert slides to HTML: `jupyter nbconvert --to slides lectures/XX_week.ipynb`

## Lecture slides (PDF)

To convert slides to PDF:

### Method 1 (URL links are unwrapped and printed in full)

Conversion method adapted from [here](https://rise.readthedocs.io/en/stable/exportpdf.html#using-nbconvert):

1. Generate the slides and serve them using nbconvert:

```
jupyter nbconvert --to slides XX_week.ipynb --post serve
```

It opens up a webpage in the browser at http://127.0.0.1:8000/XX_week.slides.html#/

2. Add `?print-pdf` to the query string as http://127.0.0.1:8000/XX_week.slides.html?print-pdf

Note that you need to remove the `#` at the end. The page will render the slides vertically.

3. Save to PDF in Chrome using the print option

### Method 2 (More engaged, requires installation of Node.js)

Conversion method adapted from [here](https://rise.readthedocs.io/en/stable/exportpdf.html#using-decktape):

1. Install Node.js: `sudo apt install nodejs npm`
2. Set up `~/.npmrc` as described [here](https://medium.com/@ExplosionPills/dont-use-sudo-with-npm-5711d2726aa3) and add the directory to `$PATH`.
3. Install [decktape](https://github.com/astefanutti/decktape): `npm install -g decktape`
4. Start the Jupyter Notebook server: `jupyter notebook`
5. Run decktape with:

```
decktape rise http://127.0.0.1:8888/notebooks/lectures/XX_week.ipynb?token=XXXXX lectures/XX_week.pdf
```
