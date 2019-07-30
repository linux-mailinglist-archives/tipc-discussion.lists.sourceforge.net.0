Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 411E47A43B
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Jul 2019 11:34:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hsOWG-00040b-9w; Tue, 30 Jul 2019 09:34:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1hsOWE-00040T-R0
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 09:34:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mlggw+RJy1mzzCCu0myEPTSr5W1dzYIHHLqdfzJyTls=; b=aiW7HUBcyYPUATopapU+tkR2k1
 OjOqUBmnn9MN7hSUNV6yHXR+KN0HL46VlALNPPHrmGz3428/INCw1AmSatakHSuy/bVD133z2QFHw
 oz4dknoXf7djBqTW9+DK6as5zBEitKqOmCuF9088d3Z9j2yAH4OVnOZAGO7hRMjSukGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mlggw+RJy1mzzCCu0myEPTSr5W1dzYIHHLqdfzJyTls=; b=dUsUVhvuXswMGjvdNYiDkQtcEN
 rPRowTNQJm6A0pIg5zNTgK53qvXy+RdpzKzH+fyXII0TA7QBXIwf+tyh1yHH+6xBof3emy7wElmZs
 yzFCa4r0rGLfS6gNIOMlxAUp+VqftH19lQaZlW+LJXV7s+ug7oqp8qVpQYqSJzzOfLE4=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsOW9-0009mt-Tq
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 09:34:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id B8F7F47D67;
 Tue, 30 Jul 2019 19:33:53 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1564479233; bh=Si7et6CW+43ELU
 tw/lmdJmROBIqqI0JuyJkOBw5FKZE=; b=hYoP6GOTkxP649uuSdwnFYxdM27pCc
 xupNRfHe/VhR9tCl9mKTAPDDXS2FVz6h6ndu5Ot22ETtMWlI9sxiUiOf/ru9iyIe
 U4PQWZ2ZimTUd1RZiKKMIr8wYFTAmoAsm9r8aJY7BM5RWG+DDhwUmVApv9uOaRlM
 XKssrlTORgw2E=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5rnYcoMcFK-n; Tue, 30 Jul 2019 19:33:53 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 2EB8F47DD3;
 Tue, 30 Jul 2019 19:33:53 +1000 (AEST)
Received: from VNLAP298VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 9C50C47D67;
 Tue, 30 Jul 2019 19:33:51 +1000 (AEST)
From: "Hoang Le" <hoang.h.le@dektech.com.au>
To: "'tung quang nguyen'" <tung.q.nguyen@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>,
 "'Jon Maloy'" <jon.maloy@ericsson.com>, "'Jon Maloy'" <maloy@donjonn.com>,
 <ying.xue@windriver.com>
References: <1563505531-15432-1-git-send-email-jon.maloy@ericsson.com>
 <02dd01d542d6$b27eb2e0$177c18a0$@dektech.com.au>
 <016a01d5468e$9b934d00$d2b9e700$@dektech.com.au>
In-Reply-To: <016a01d5468e$9b934d00$d2b9e700$@dektech.com.au>
Date: Tue, 30 Jul 2019 16:33:48 +0700
Message-ID: <026d01d546b9$e684bad0$b38e3070$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLPnM81z1xTbz3fgHN+V9W4aeb3xgK4G4Z1Afc8xC+kyL3xMA==
Content-Language: en-us
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsOW9-0009mt-Tq
Subject: Re: [tipc-discussion] [net-next v2 1/1] tipc: reduce risk of wakeup
 queue starvation
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

Hi Jon,

Please ignore previous results because I'm wrong on testing ICMP starved by TIPC.

Regards,
Hoang
-----Original Message-----
From: Hoang Le <hoang.h.le@dektech.com.au> 
Sent: Tuesday, July 30, 2019 11:24 AM
To: 'tung quang nguyen' <tung.q.nguyen@dektech.com.au>; tipc-discussion@lists.sourceforge.net; 'Jon Maloy' <jon.maloy@ericsson.com>;
'Jon Maloy' <maloy@donjonn.com>; ying.xue@windriver.com
Subject: Re: [tipc-discussion] [net-next v2 1/1] tipc: reduce risk of wakeup queue starvation

Hi Jon,

I combine benchmark test with 50 connections and ping cmd from two nodes.
You can compare results from original code, your fix and Tung's fix as following:

Original code:
node1 ~ # ping -s 1400 10.0.0.2 -c 300
PING 10.0.0.2 (10.0.0.2): 1400 data bytes
1408 bytes from 10.0.0.2: seq=22 ttl=64 time=1.337 ms
1408 bytes from 10.0.0.2: seq=24 ttl=64 time=1.208 ms
1408 bytes from 10.0.0.2: seq=25 ttl=64 time=1.145 ms
1408 bytes from 10.0.0.2: seq=76 ttl=64 time=1.145 ms
1408 bytes from 10.0.0.2: seq=78 ttl=64 time=1.449 ms
1408 bytes from 10.0.0.2: seq=130 ttl=64 time=1.230 ms
1408 bytes from 10.0.0.2: seq=134 ttl=64 time=1.020 ms
1408 bytes from 10.0.0.2: seq=185 ttl=64 time=1.743 ms
1408 bytes from 10.0.0.2: seq=186 ttl=64 time=1.502 ms
1408 bytes from 10.0.0.2: seq=187 ttl=64 time=1.289 ms
1408 bytes from 10.0.0.2: seq=189 ttl=64 time=1.306 ms
1408 bytes from 10.0.0.2: seq=239 ttl=64 time=1.254 ms
1408 bytes from 10.0.0.2: seq=241 ttl=64 time=1.114 ms
1408 bytes from 10.0.0.2: seq=242 ttl=64 time=1.058 ms

--- 10.0.0.2 ping statistics ---
301 packets transmitted, 301 packets received, 0% packet loss
round-trip min/avg/max = 0.077/0.361/1.743 ms

- JON's fix
node1 ~ # ping -s 1400 10.0.0.2 -c 300
1408 bytes from 10.0.0.2: seq=22 ttl=64 time=1.013 ms
1408 bytes from 10.0.0.2: seq=87 ttl=64 time=2.468 ms

--- 10.0.0.2 ping statistics ---
300 packets transmitted, 300 packets received, 0% packet loss
round-trip min/avg/max = 0.119/0.323/2.468 ms
node1 ~ #

- Tung's fix
node1 ~ # ping -s 1400 10.0.0.2 -c 300
--- 10.0.0.2 ping statistics ---
300 packets transmitted, 300 packets received, 0% packet loss
round-trip min/avg/max = 0.101/0.303/0.864 ms

From ping statistics, I could see your solution starved twice and maximum time is 2.468 ms.
Then, we're not completely solve the issue yet. But test results from Tung's fix, I don't see a starvation happen.  
So, I think we can go ahead with Tung's code fixed. Please give me your idea.

Regards,
Hoang
-----Original Message-----
From: tung quang nguyen <tung.q.nguyen@dektech.com.au> 
Sent: Thursday, July 25, 2019 5:50 PM
To: 'Jon Maloy' <jon.maloy@ericsson.com>; 'Jon Maloy' <maloy@donjonn.com>; tipc-discussion@lists.sourceforge.net;
ying.xue@windriver.com
Subject: Re: [tipc-discussion] [net-next v2 1/1] tipc: reduce risk of wakeup queue starvation

Hi Jon,

Let's go for this way for now.

Thanks.

Best regards,
Tung Nguyen

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Friday, July 19, 2019 10:06 AM
To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com;
parthasarathy.bhuvaragan@gmail.com; tung.q.nguyen@dektech.com.au;
hoang.h.le@dektech.com.au; canh.d.luu@dektech.com.au;
tuong.t.lien@dektech.com.au; gordan.mihaljevic@dektech.com.au;
ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Subject: [net-next v2 1/1] tipc: reduce risk of wakeup queue starvation

In commit 365ad353c256 ("tipc: reduce risk of user starvation during
link congestion") we allowed senders to add exactly one list of extra
buffers to the link backlog queues during link congestion (aka
"oversubscription"). However, the criteria for when to stop adding
wakeup messages to the input queue when the overload abates is
inaccurate, and may cause starvation problems during very high load.

Currently, we stop adding wakeup messages after 10 total failed attempts
where we find that there is no space left in the backlog queue for a
certain importance level. The counter for this is accumulated across all
levels, which may lead the algorithm to leave the loop prematurely,
although there may still be plenty of space available at some levels.
The result is sometimes that messages near the wakeup queue tail are not
added to the input queue as they should be.

We now introduce a more exact algorithm, where we keep adding wakeup
messages to a level as long as the backlog queue has free slots for
the corresponding level, and stop at the moment there are no more such
slots or when there are no more wakeup messages to dequeue.

Fixes: 365ad35 ("tipc: reduce risk of user starvation during link
congestion")
Reported-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/link.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 66d3a07..f1d2732 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -853,18 +853,31 @@ static int link_schedule_user(struct tipc_link *l,
struct tipc_msg *hdr)
  */
 static void link_prepare_wakeup(struct tipc_link *l)
 {
+	struct sk_buff_head *wakeupq = &l->wakeupq;
+	struct sk_buff_head *inputq = l->inputq;
 	struct sk_buff *skb, *tmp;
-	int imp, i = 0;
+	struct sk_buff_head tmpq;
+	int avail[5] = {0,};
+	int imp = 0;
+
+	__skb_queue_head_init(&tmpq);
 
-	skb_queue_walk_safe(&l->wakeupq, skb, tmp) {
+	for (; imp <= TIPC_SYSTEM_IMPORTANCE; imp++)
+		avail[imp] = l->backlog[imp].limit - l->backlog[imp].len;
+
+	skb_queue_walk_safe(wakeupq, skb, tmp) {
 		imp = TIPC_SKB_CB(skb)->chain_imp;
-		if (l->backlog[imp].len < l->backlog[imp].limit) {
-			skb_unlink(skb, &l->wakeupq);
-			skb_queue_tail(l->inputq, skb);
-		} else if (i++ > 10) {
-			break;
-		}
+		if (avail[imp] <= 0)
+			continue;
+		avail[imp]--;
+		__skb_unlink(skb, wakeupq);
+		__skb_queue_tail(&tmpq, skb);
 	}
+
+	spin_lock_bh(&inputq->lock);
+	skb_queue_splice_tail(&tmpq, inputq);
+	spin_unlock_bh(&inputq->lock);
+
 }
 
 void tipc_link_reset(struct tipc_link *l)
-- 
2.1.4




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
