Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 586F0F3D87
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 02:42:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iStIO-0007Sh-1P; Fri, 08 Nov 2019 01:42:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iStIL-0007SD-VM
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 01:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I02IxSy+36hHJkXdbcYsuB/HVhOfEEWG+1zeo/F7a4U=; b=nLnJCiA00NXWHMjEMRDoFIWLXN
 n1YNIF2kkbv+zrovU35Lqs/QFMtIUBYj6Mjr1E3xKiUcZxPv26Oh3ZVIBQ24aUENDdLMucO904gKc
 AduOsl9nDKOMVTh745W0YxTpTPtqP5kn3gZI/okWLki2zJHkHmorNOyOpmG3rfX3Gnn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=I02IxSy+36hHJkXdbcYsuB/HVhOfEEWG+1zeo/F7a4U=; b=Z
 SDyjQ8x7888pZBUfzassHm0gAogZayTxbbt4Hm6p4X0F7FKe+z7DANXCXd9qYzzuyZ/v2qTFH28Fc
 bjOe/ZCBLZBHwKXKyYaFge9TsgUGxlBSWsXnl2tyJy7CUipDM9wmo3E2wD85FiWzzf+/sJoY95R6y
 6QfxHuXXo2yBq6Wk=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iStIH-004LUP-Ad
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 01:42:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id AAB354AAF9;
 Fri,  8 Nov 2019 12:42:22 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:content-type:content-type
 :mime-version:x-mailer:message-id:date:date:subject:subject:from
 :from:received:received:received; s=mail_dkim; t=1573177342; bh=
 IDkTtv+ILuf3FTx/DkLP+64qVDFT6Kp4xx6nQNFPRQw=; b=ZHXnezixSFoeaSAg
 yS2xlCpLWexQdyyUYM9aiiGFopY8y88Amj9z4KatXHcgzqX8V2o1LkqWtcUlrtD6
 /Hz9Xmnhp/FeypTJcho+XrfrWSv2DthzDOyNzj92pLMQdZQAAWYQMlzrnNFw27wt
 brvRvFynhLdQPEAbeRFKjx8wFqo=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id vPRcPVpPBqft; Fri,  8 Nov 2019 12:42:22 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 22A104AAFC;
 Fri,  8 Nov 2019 12:42:21 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id C3FAE4AAF9;
 Fri,  8 Nov 2019 12:42:20 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri,  8 Nov 2019 08:42:08 +0700
Message-Id: <20191108014213.32219-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iStIH-004LUP-Ad
Subject: [tipc-discussion] [net-next 0/5] TIPC encryption
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

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
 net/tipc/Kconfig                  |   12 +
 net/tipc/Makefile                 |    1 +
 net/tipc/bcast.c                  |    2 +-
 net/tipc/bearer.c                 |   49 +-
 net/tipc/bearer.h                 |    6 +-
 net/tipc/core.c                   |   14 +
 net/tipc/core.h                   |    8 +
 net/tipc/crypto.c                 | 1986 +++++++++++++++++++++++++++++++++++++
 net/tipc/crypto.h                 |  167 ++++
 net/tipc/link.c                   |   19 +-
 net/tipc/link.h                   |    1 +
 net/tipc/msg.c                    |   15 +-
 net/tipc/msg.h                    |   46 +-
 net/tipc/netlink.c                |   18 +-
 net/tipc/node.c                   |  329 +++++-
 net/tipc/node.h                   |   13 +
 net/tipc/sysctl.c                 |   11 +
 net/tipc/udp_media.c              |    1 +
 20 files changed, 2648 insertions(+), 75 deletions(-)
 create mode 100644 net/tipc/crypto.c
 create mode 100644 net/tipc/crypto.h

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
