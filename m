Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C28AFEFBC2
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 11:51:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRwQo-0007qy-Ba; Tue, 05 Nov 2019 10:51:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iRwQn-0007qW-73
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 10:51:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4BnBG63DC91I4vJSJIBy5M1tdTAOemIiKMmtnOWafrU=; b=jahWmb41JT6djnQYYbW1DITGpB
 MF9je8l3SIAzG5rmDQYiSKm+TJf3sTN19Vi+7qc4H4NhzCP/Bbb1wxtDy/j5bP8kcaM6rMzRJBz5n
 LzJcQjvD3FAwYpD+UuxuIfldh1pp1WYGAiXrXwdAXUA5pWaknYQQuiK/p6v192U/7Ve0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4BnBG63DC91I4vJSJIBy5M1tdTAOemIiKMmtnOWafrU=; b=D
 WE/oCxy7BYFbcTc3NVD85u9p3MV//dYYMk4rrWG2mtRq0s/vBk848vExDQJ1yL+WWEDhQ8tnkTReg
 FtlTj2gk6FStXpNBlVt4O25PE0VZ8wvt7x80yL9X5BzK8rrnZRbB5Ex5oX621mMkot3wg+eS/aVFC
 3hpKKCayFlhjS8Lo=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRwQl-0014SI-KE
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 10:51:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id AD6124AA05;
 Tue,  5 Nov 2019 21:51:12 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:content-type:content-type
 :mime-version:x-mailer:message-id:date:date:subject:subject:from
 :from:received:received:received; s=mail_dkim; t=1572951072; bh=
 N0BYWTtQ+3Os5h1fuq0T8T7CXAWAVgZCFf56CogQLQw=; b=N7ecetgR7PJmBgP9
 +bTVmkfaOQagrf3LekDLfcJQGETLCawd6A8T4ErYQvigp9yY3z70lRXjDBBPo4yy
 xQ4XBLsEHcgxzGK2/ku4po/hUfvzN4zFMq96csAUXQC+La7bps0ULK7DIkh8qS85
 DJ2SgNJ7TIeC82DxuaHYBUDfX68=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id KHqtEshXYCD4; Tue,  5 Nov 2019 21:51:12 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 5ACD74AA0A;
 Tue,  5 Nov 2019 21:51:12 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 56AD84AA05;
 Tue,  5 Nov 2019 21:51:11 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue,  5 Nov 2019 17:50:51 +0700
Message-Id: <20191105105056.15779-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1iRwQl-0014SI-KE
Subject: [tipc-discussion] [PATCH v2 0/5] TIPC encryption
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
 include/uapi/linux/tipc_netlink.h |    8 +
 net/tipc/Kconfig                  |   12 +
 net/tipc/Makefile                 |    1 +
 net/tipc/bcast.c                  |    2 +-
 net/tipc/bearer.c                 |   54 +-
 net/tipc/bearer.h                 |   11 +-
 net/tipc/core.c                   |   18 +
 net/tipc/core.h                   |    8 +
 net/tipc/crypto.c                 | 1986 +++++++++++++++++++++++++++++++++++++
 net/tipc/crypto.h                 |  167 ++++
 net/tipc/link.c                   |   19 +-
 net/tipc/link.h                   |    1 +
 net/tipc/msg.c                    |   15 +-
 net/tipc/msg.h                    |   46 +-
 net/tipc/netlink.c                |   20 +-
 net/tipc/node.c                   |  347 ++++++-
 net/tipc/node.h                   |   13 +
 net/tipc/sysctl.c                 |   11 +
 net/tipc/udp_media.c              |    1 +
 20 files changed, 2694 insertions(+), 67 deletions(-)
 create mode 100644 net/tipc/crypto.c
 create mode 100644 net/tipc/crypto.h

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
