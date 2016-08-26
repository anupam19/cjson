### COPYRIGHT NOTICE

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# cjson
This is fork of https://github.com/DaveGamble/cJSON.git repo. This is structurised and fixed to use this as shared library for different projects.

## project structure :
```
├── app
│   ├── cJSON_Utils.c
│   ├── cJSON_Utils.h
│   ├── Makefile
│   └── test_utils.c
├── includes
│   └── cJSON.h
├── LICENSE
├── Makefile
├── README.md
├── src
│   └── cJSON.c
└── test
    ├── Makefile
    ├── test.c
    └── test_files
        ├── test1
        ├── test2
        ├── test3
        ├── test4
        ├── test5
        └── test6
```
## Build :
```
Go to top-root directory of the project and do 'make'.
'make' will also build 'app' and 'test' applications.
'make install' will install shared library and headers.
'make uninstall' will uninstall installed libraries and headers from your machine.
```
