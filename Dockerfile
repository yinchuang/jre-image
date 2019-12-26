# =============================================================================
#
# CentOS-7 7.6.1810 x86_64
# 
# =============================================================================
FROM centos:centos7.6.1810

RUN \
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo && \
    curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD jre-8u231-linux-x64.tar.gz /usr/local/ 
ADD apache-skywalking-agent-6.5.0.tar.gz /opt/

ENV JRE_HOME /usr/local/jre1.8.0_231/
ENV PATH $PATH:$JRE_HOME/bin
