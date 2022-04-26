FROM quay.io/pypa/manylinux2014_x86_64
ENV PATH=/opt/python/cp310-cp310/bin:$PATH
RUN /opt/python/cp310-cp310/bin/python -m venv venv --upgrade-deps && \
    venv/bin/pip install conan
COPY conanfile.py conanfile.py
RUN venv/bin/conan install --build -s compiler.version=10.2 .
RUN ./tesseract --version > /tmp/results.txt && \
  cat /tmp/results.txt && \
  if grep -q libopenjp2 /tmp/results.txt; then echo "found it"; else >&2 echo "Tesseract was not built with openjpeg "; exit 1; fi