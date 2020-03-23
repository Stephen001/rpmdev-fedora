FROM fedora:31

RUN dnf install -y rpmdevtools createrepo gnupg2 && dnf clean all
RUN rpmdev-setuptree
ENTRYPOINT ["rpmbuild"]
