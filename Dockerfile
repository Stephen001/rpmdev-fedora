FROM fedora:rawhide

RUN dnf install -y rpmdevtools createrepo gnupg2 rpm-sign && dnf clean all
RUN rpmdev-setuptree
ENTRYPOINT ["rpmbuild"]
