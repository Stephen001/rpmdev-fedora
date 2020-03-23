FROM fedora:rawhide

RUN dnf install -y rpmdevtools createrepo gnupg2 && dnf clean all
RUN rpmdev-setuptree
ENTRYPOINT ["rpmbuild"]
