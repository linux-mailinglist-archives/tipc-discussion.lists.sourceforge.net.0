Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A1219571D
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Mar 2020 13:31:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jHo97-0005fT-4L; Fri, 27 Mar 2020 12:31:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jHo95-0005fI-AT
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 12:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gxPy43R+V78bzsY68l9frII3MUHq/IVgsQC2gebDlBM=; b=f3FBGge6S6KdvmVj3qgLSLgarQ
 4Wbga6u5tKGquvjvRyRKiIcQL9V6Ix4LEFM/SRhx5zTnYKddVGmvt4X/DF0KdiV/EDbgkfnPUWeT/
 BXe0fXKRqDghAhH4tWkeKDUbwMZQesipdSAJhbdA5M7ylqjaeq+cStgta/B8UHgBit/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gxPy43R+V78bzsY68l9frII3MUHq/IVgsQC2gebDlBM=; b=CM3SD2kk196rrdaWnB8Jf3lAdq
 WlvAfJRaBfEWanJChnq9GUeLofJ7FfbN45KCP51tuKrtYEZG28V4RSeGxX/hocx8EGX4/CxXEgRp0
 FW5+hkqXcwZUGcvd8PBLvA84aInGkPTX9js2Q3qFKcfjZM/4t25yP7Jcq9BtE2RwIFvo=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jHo90-00A3St-L0
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 12:31:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 340354E591;
 Fri, 27 Mar 2020 23:31:16 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1585312276; bh=4sM44
 7AQcBq/OECMoG3lHkVy1A/GxV9oL8F89Pjr8QM=; b=qjUafckkOGWBbkdxPSXJY
 k/a7fROSs1qBMKTp+S313WKbKarw43sOFSo78/NGMvULrX7sKGVb7Kzxcqe6Iq5z
 prlt5t6Lz/b9Q9AAqJWzUlquEX89krxCcfZDTDMp3g0OYX7JNNtxTRqK6i0zsFU6
 Kb7Y8F26LXq+zqxEve+jKU=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id SR2HZCU-cqfc; Fri, 27 Mar 2020 23:31:16 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id B56564E592;
 Fri, 27 Mar 2020 23:31:15 +1100 (AEDT)
Received: from localhost.localdomain (unknown [183.80.119.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id CB5714E591;
 Fri, 27 Mar 2020 23:31:13 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 27 Mar 2020 19:31:03 +0700
Message-Id: <20200327123103.4171-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: 0.1 (/)
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
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jHo90-00A3St-L0
Subject: [tipc-discussion] [net] tipc: fix incorrect increasing of link
 window
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
Cc: tipc-dek@dektech.com.au
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

In commit 16ad3f4022bb ("tipc: introduce variable window congestion
control"), we allow link window to change with the congestion avoidance
algorithm. However, there is a bug that during the slow-start if packet
retransmission occurs, the link will enter the fast-recovery phase, set
its window to the 'ssthresh' which is never less than 300, so the link
window suddenly increases to that limit instead of decreasing.

Consequently, two issues have been observed:

- For broadcast-link: it can leave a gap between the link queues that a
new packet will be inserted and sent before the previous ones, i.e. not
in-order.

- For unicast: the algorithm does not work as expected, the link window
jumps to the slow-start threshold whereas packet retransmission occurs.

This commit fixes the issues by avoiding such the link window increase,
but still decreasing if the 'ssthresh' is lowered.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 467c53a1fb5c..d4675e922a8f 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1065,7 +1065,7 @@ static void tipc_link_update_cwin(struct tipc_link *l, int released,
 	/* Enter fast recovery */
 	if (unlikely(retransmitted)) {
 		l->ssthresh = max_t(u16, l->window / 2, 300);
-		l->window = l->ssthresh;
+		l->window = min_t(u16, l->ssthresh, l->window);
 		return;
 	}
 	/* Enter slow start */
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
