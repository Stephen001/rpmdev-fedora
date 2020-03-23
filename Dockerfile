FROM fedora:31

RUN dnf install -y rpmdevtools && dnf clean all
RUN rpmdev-setuptree
ENTRYPOINT ["rpmbuild"]
