# WP docker build container for GitLab CI

this simple container extends [edbizarro/gitlab-ci-pipeline-php:7.1-alpine](https://github.com/edbizarro/gitlab-ci-pipeline-php) to support building front end assets, including imagemin for image optimisation, and deploying via the [Dploy](https://www.npmjs.com/package/dploy) npm module.

## Dploy usage tips

The dploy script uses git to check revisions, and smartly deploy your code. In order to deploy build artifacts such as a dist folder or vendor folder that you do not include in your repo, use the `includes` object matching the folders you require.

--

## license

Copyright 2018 Paul van Zyl

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
