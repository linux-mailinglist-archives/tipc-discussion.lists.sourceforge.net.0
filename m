Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD2AD60EC
	for <lists+tipc-discussion@lfdr.de>; Mon, 14 Oct 2019 13:07:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iJyCf-0001Ll-0P; Mon, 14 Oct 2019 11:07:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iJyCb-0001LW-Pc
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 11:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IzdllL1whydVxgRP4pLD3mDzkYGlyAO3WT4nKhfBrko=; b=K/sKlW0lQqcQTB5sXrednJ0Kch
 mRYF8zqXHOqSVghhV0G/Y9EeWlFv903zdpct22hWpCGC+g/rWODj79SKcrOYz9r5HM/P4Udjo5cuJ
 gBHrmwk+69pVnD5y8gcEnL+Fw+z+zmDlwgZUVN20x+gKzHzo4MfkGc3WWj9121Vp7FpA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IzdllL1whydVxgRP4pLD3mDzkYGlyAO3WT4nKhfBrko=; b=l
 LzdXRtWAp9+u5WGVDQ34VUVva/6crtdvEa0bqxi+C8SdJuv6rSj1TLStd2+4HUd06S/MnY/RvseO0
 EIllBe19KsX2Nd/Lb2AO7TYu/V+Eo/6yMXinVGHgzFNMj/v+oZvJcMLXYdU0yHlv2lGj2ioFOi5GG
 rAkmlrvRAxHvZX6A=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iJyCZ-008cYX-LC
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 11:07:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 8310B48D2F;
 Mon, 14 Oct 2019 22:07:39 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:content-type:content-type
 :mime-version:x-mailer:message-id:date:date:subject:subject:from
 :from:received:received:received; s=mail_dkim; t=1571051259; bh=
 cT6ajYVYLx7Wueq1N7mpdtyrXApbj4tUP1c/O4bce+c=; b=N1IGjtnrXeTtH9Jx
 3mqvwYbW2tvkoo8CMgiNe6xvSQeNNf2jOFlusrWmueFVwBRfQLTfGVfMq5Q58/io
 3P0oL7kb2zY5CH6dc17GKTRi6VQvvuxVEdrCm0G62ZA6abNxMHmBHCCiykhd7ADp
 lCZ9WLsQhLOROzVDRRv5q4eITV4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dEDQ1repZRST; Mon, 14 Oct 2019 22:07:39 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 1FE3748D2C;
 Mon, 14 Oct 2019 22:07:38 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 2347E48BF5;
 Mon, 14 Oct 2019 22:07:38 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Mon, 14 Oct 2019 18:07:17 +0700
Message-Id: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1iJyCZ-008cYX-LC
Subject: [tipc-discussion] [PATCH RFC 0/5] TIPC encryption
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
