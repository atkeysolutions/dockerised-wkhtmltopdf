# dockerised-wkhtmltopdf
A dockerised wkhtmltopdf with bundled fonts which fixes problems the bluesky app had with the normal version.

## Installation

1. Install Docker
2. `docker pull blueskyeducation/wkhtmltopdf`

## To use it with the bluesky education app 

1. Install it (see above)
2. Download the `wkhtmltopdf` replacement shell script, make it executable and put it in your path. For example:
  ```
  curl https://raw.githubusercontent.com/kevtufc/dockerised-wkhtmltopdf/master/wkhtmltopdf > wkhtmltopdf
  sudo install wkhtmltopdf /usr/local/bin
  rm wkhtmltopdf
  ```

3. Put `WKHTMLTOPDF_BIN='/usr/local/bin/wkhtmltopdf'` in your `.env`
