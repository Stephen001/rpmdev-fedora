FROM fedora:rawhide

RUN dnf install -y rpmdevtools && dnf clean all
RUN rpmdev-setuptree
ENTRYPOINT ["rpmbuild"]
