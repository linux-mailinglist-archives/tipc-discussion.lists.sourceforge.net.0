Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CDF166E9F
	for <lists+tipc-discussion@lfdr.de>; Fri, 21 Feb 2020 05:49:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1j50Fg-0003WU-ES; Fri, 21 Feb 2020 04:49:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1j50Fd-0003WG-7A
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Feb 2020 04:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ouu19d6RDcA02/cYk4cxsnF2VrizEhxuYcb355LUrDI=; b=Zb+kp0TGZiOBPu1WQxFKSfnVX4
 xfUO9MSl/xU4cZPY2LRoTygnox7tW70iqQb7EwYCRW6a8l4aiO4NB794fBENhcijIL5VuUFGAz9bl
 vwXeGqs+JGXZbz1aOPtHF3pnJ5ZDI89Xow1mky1O9Dq8Es7bRwtsxJmwMeKItLZm1Hvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ouu19d6RDcA02/cYk4cxsnF2VrizEhxuYcb355LUrDI=; b=K
 OYiN0SsCSC4Zw3uif2zPjQWFH1xNNNhldZwzvcVE+rbktUHUuCaluHwYKLyZ2HDZFZ0JOKcGn4209
 59dr1t2whAGZ3VJMDonpqIljy19k1kNTa+QD81F+xG15plGLTchLwxxXkvBuLpDbKdY/SAft1pX01
 af5QiqPbvQZ+cZzY=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j50FZ-00ClqA-7q
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Feb 2020 04:49:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 86EFE4D2BF;
 Fri, 21 Feb 2020 15:49:08 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1582260548; bh=D1gMPQmLONsA/6E9F8qOLj1cb8yRV9d99
 Xu9I6TPhaM=; b=DIddapI2UKgW9N5SaHeKy7qv7rmudSTzfdMRHMjwMI21W1CwB
 jP4p5N5CP1ePOjJOIssDh5uqWNBT2tLRlf/2LZbsmX2h6vkLK+8Xlf5gTU8+ZsNA
 QIVUA1gnc9dfQenbn7HMklq3W3+lBa6388+IBC7hWffWPV8ucVJUHsqxTw=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id E9koJjtge4SN; Fri, 21 Feb 2020 15:49:08 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id F28E44D2C0;
 Fri, 21 Feb 2020 15:49:07 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id B25594D2BF;
 Fri, 21 Feb 2020 15:49:06 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
Date: Fri, 21 Feb 2020 11:48:59 +0700
Message-Id: <20200221044859.5391-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1j50FZ-00ClqA-7q
Subject: [tipc-discussion] [net-next] tipc: simplify trivial boolean return
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

Checking and returning 'true' boolean is useless as it will be
returning at end of function

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/msg.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 0d515d20b056..4d0e0bdd997b 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -736,9 +736,6 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
 	msg_set_destport(msg, dport);
 	*err = TIPC_OK;
 
-	if (!skb_cloned(skb))
-		return true;
-
 	return true;
 }
 
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
