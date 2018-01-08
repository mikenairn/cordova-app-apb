FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGNvcmRvdmEtYXBwLWFwYgpkZXNjcmlwdGlvbjogU2V0cyB1cCBh\
IENvcmRvdmEgQXBwIHJlcHJlc2VudGF0aW9uLgpiaW5kYWJsZTogRmFsc2UKYXN5bmM6IG9wdGlv\
bmFsCnRhZ3M6IAogIC0gbW9iaWxlCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBDb3Jkb3ZhIEFw\
cAogIGNvbnNvbGUub3BlbnNoaWZ0LmlvL2ljb25DbGFzczogaWNvbiBpY29uLWNvcmRvdmEKcGxh\
bnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogU2V0cyB1cCBhIENvcmRvdmEg\
QXBwIHJlcHJlc2VudGF0aW9uLgogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9CiAgICBw\
YXJhbWV0ZXJzOiAKICAgIC0gbmFtZTogYXBwTmFtZQogICAgICByZXF1aXJlZDogVHJ1ZQogICAg\
ICBkZWZhdWx0OiBteWFwcAogICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6IHlvdXIgbmV3\
IGFwcHMgbmFtZQo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY mobile /usr/bin
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
