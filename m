Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D778EC8CA
	for <lists+tipc-discussion@lfdr.de>; Fri,  1 Nov 2019 20:00:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iQc9i-0001Ev-Vj; Fri, 01 Nov 2019 19:00:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iQc9i-0001Ep-E2
 for tipc-discussion@lists.sourceforge.net; Fri, 01 Nov 2019 19:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MvczsbcpNhFSvAqygk0AptnTEnUcWsUw2t2SrmQbKAY=; b=ZGjOuEO98Zr0cyeIWiyRZUAVIE
 VjRCK0YuMyFXusWy2drzS9pY0Tvj6Zk2WrRpz2XlmW6/Ux8nrDQoWwHqxykxeGyjVoibOTUyEfg6N
 AW5zszJhwkV5s+KQmYNydLpqSkNKr88Mtb8t9IHctYYGdZHdLmyqmBddm6GroCu8EKcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MvczsbcpNhFSvAqygk0AptnTEnUcWsUw2t2SrmQbKAY=; b=nHlEVxW5/oIQTJ59uQ5t9pj+w5
 d1ySP7TcD/AcN+krc8yoJ0sEAnCWNgSnv3au71wZlP+g15/IborgLzt/6pdlK7lS7Q2hsqc61CYsS
 gSRyQArJMSArEeEBe+Yr3tI9iJ6lIxMwFlvkX/PgswDyb4ZR/KyJ0gHMGKNdEyIPgLUE=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iQc9e-00D0Ya-MJ
 for tipc-discussion@lists.sourceforge.net; Fri, 01 Nov 2019 19:00:18 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xA1EJw4e018012
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Fri, 1 Nov 2019 07:19:59 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.80]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Fri, 1
 Nov 2019 07:19:57 -0700
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jon.maloy@ericsson.com"
 <jon.maloy@ericsson.com>, "maloy@donjonn.com" <maloy@donjonn.com>
Thread-Topic: [PATCH RFC 0/5] TIPC encryption
Thread-Index: AQHVgn+fHPaWVdObT2a4RHFa8G9pE6d2Z7UQ
Date: Fri, 1 Nov 2019 14:19:57 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CA75E6D@ALA-MBD.corp.ad.wrs.com>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.16.215]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iQc9e-00D0Ya-MJ
Subject: Re: [tipc-discussion] [PATCH RFC 0/5] TIPC encryption
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Good job. 

This is a big and complex feature. Particularly for most of users who might not consider to use this feature, please consider to give them a choice to completely disable it by adding a new kernel option like TIPC_CRYPTO.

Thanks,
Ying

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Monday, October 14, 2019 7:07 PM
To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com; Xue, Ying
Subject: [PATCH RFC 0/5] TIPC encryption

This series provides TIPC encryption feature, kernel part. There will be
another one in the 'iproute2/tipc' for user space to set key.

Tuong Lien (5):
  tipc: add reference counter to bearer
  tipc: enable creating a "preliminary" node
  tipc: add new AEAD key structure for user API
  tipc: introduce TIPC encryption & authentication
  tipc: add support for AEAD key setting via netlink

 include/uapi/linux/tipc.h         |   21 +
 include/uapi/linux/tipc_netlink.h |    4 +
 net/tipc/Makefile                 |    2 +-
 net/tipc/bcast.c                  |    2 +-
 net/tipc/bearer.c                 |   52 +-
 net/tipc/bearer.h                 |    6 +-
 net/tipc/core.c                   |   10 +
 net/tipc/core.h                   |    4 +
 net/tipc/crypto.c                 | 1986 +++++++++++++++++++++++++++++++++++++
 net/tipc/crypto.h                 |  166 ++++
 net/tipc/link.c                   |   16 +-
 net/tipc/link.h                   |    1 +
 net/tipc/msg.c                    |   24 +-
 net/tipc/msg.h                    |   44 +-
 net/tipc/netlink.c                |   16 +-
 net/tipc/node.c                   |  314 +++++-
 net/tipc/node.h                   |   10 +
 net/tipc/sysctl.c                 |    9 +
 net/tipc/udp_media.c              |    1 +
 19 files changed, 2604 insertions(+), 84 deletions(-)
 create mode 100644 net/tipc/crypto.c
 create mode 100644 net/tipc/crypto.h

-- 
2.13.7


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
