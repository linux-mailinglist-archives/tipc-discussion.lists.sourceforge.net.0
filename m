Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FB3F3F67
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 06:05:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSwSj-0005Z7-Fd; Fri, 08 Nov 2019 05:05:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iSwSi-0005Z0-Fc
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 05:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vqc6LXAdriXARLtllZ1RaRQ73jkzDRJjrmwrZNFCewk=; b=YikdMxyMvXlGyd+RAtK9KPo8Xh
 YqfIbNzkn1xnNoXZtuCB4rtvG5EWAYApcHB9xn1CuJCSW6n47asGkjd7xEZfJb9A4mYoJNMD/aFD4
 trG+MrtvnAdBV7pBcTmhNWZ0oF20sfWwrIYL5qzoe/pZRXYYFBm/i7D3zmRpoFfLlp2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vqc6LXAdriXARLtllZ1RaRQ73jkzDRJjrmwrZNFCewk=; b=I
 5uX2AHh8V+KIwsGO0exb2NG8Imd9M1CY+yaet6bJDvUvwD7kODWw++MT+WnaUeNWtEvjp9Fi2jxnF
 vRKP9lAJZ9jFb1GZInKvjXkyo8wfzjyg221yCWNoapI7ngY8utJKB8mzBxmyY8p4DKPrK9NbFpE2C
 CD4slrjWftxx+wy8=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSwSg-005xL3-4y
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 05:05:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 965A94AB12;
 Fri,  8 Nov 2019 16:05:22 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:content-type:content-type
 :mime-version:x-mailer:message-id:date:date:subject:subject:from
 :from:received:received:received; s=mail_dkim; t=1573189522; bh=
 2z8NoLGLbEpW9K61LvRG5hEo89RzfwjjpFFMZD7V3oc=; b=TfYxcrmUPYkvRT47
 3Zv47gT2HQ7ySUKwg4aEegtWN1dkOYHNBI4DzDsSyk2o88g6qdGBalGxbsQvq4Zz
 G76XMBWshKlwaSErWSHLOHXY+WxtrpcijEDsiDK77hpsneNAyG+UuhhKy3dxezVf
 D5KynF35djuSyv1YjxiLl8sPHX4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3b7x4rY802Rv; Fri,  8 Nov 2019 16:05:22 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 30D574AB15;
 Fri,  8 Nov 2019 16:05:21 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 73BE24AB12;
 Fri,  8 Nov 2019 16:05:20 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri,  8 Nov 2019 12:05:07 +0700
Message-Id: <20191108050512.4156-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1iSwSg-005xL3-4y
Subject: [tipc-discussion] [net-next v2 0/5] TIPC Encryption
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

v2: add select crypto 'aes(gcm)' for TIPC_CRYPTO in Kconfig

Tuong Lien (5):
  tipc: add reference counter to bearer
  tipc: enable creating a "preliminary" node
  tipc: add new AEAD key structure for user API
  tipc: introduce TIPC encryption & authentication
  tipc: add support for AEAD key setting via netlink

 include/uapi/linux/tipc.h         |   21 +
 include/uapi/linux/tipc_netlink.h |    4 +
 net/tipc/Kconfig                  |   15 +
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
 net/tipc/node.c                   |  325 +++++-
 net/tipc/node.h                   |   13 +
 net/tipc/sysctl.c                 |   11 +
 net/tipc/udp_media.c              |    1 +
 20 files changed, 2651 insertions(+), 71 deletions(-)
 create mode 100644 net/tipc/crypto.c
 create mode 100644 net/tipc/crypto.h

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
