FROM rustlang/rust:nightly-slim
RUN apt-get update
RUN apt-get install -y gnuplot
ADD entrypoint.sh entrypoint.sh
LABEL "com.github.actions.name"="Rust Benchmark Gnuplot"
LABEL "com.github.actions.description"="Adds Gnuplot to Rust image prior to running cargo bench"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="orange"
LABEL "repository"="http://github.com/gnuplot-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="phillyfan1138 <danstahl1138@gmail.com>"
ENTRYPOINT ["/entrypoint.sh"]