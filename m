Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AD474C29
	for <lists+tipc-discussion@lfdr.de>; Thu, 25 Jul 2019 12:50:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hqbKD-00061u-7f; Thu, 25 Jul 2019 10:50:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1hqbKB-00061S-KU
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Jul 2019 10:50:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KchImbG4t6nkhqZZSDbv8fnuuwT0fsS7FLMf0Bjzsaw=; b=ZcknZMYpTnjbFgULBmYw9ekWvg
 GxylKHoZtluOgQssAClEIGE2z8Z7XZOF6Y65rNQ6k+OgEs1TdHRtlIqMq/EIvfEMy5eKtIeIolOso
 oB1IlPuw2KU6Ztb8UpUvqqhGqIJYiifNL27rMoUedADQp+jIBzj/Ob/4UMvJ+7Oc3ezA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KchImbG4t6nkhqZZSDbv8fnuuwT0fsS7FLMf0Bjzsaw=; b=RoOncKwLmPUECHre6QRbwE6FAQ
 LWAWqyBN8DjIqa/lo5M7G+UB0ec/PW5kTOV9hBodyuq4Lq5/ElbmTN/L0/Jz36jYxgTeHkpSX+3R8
 etDG48s92ZjZQUDzkU4sxCXZ9OM84hW1tTUcdvO5dq3qqrtyjeQzU6SDX86QTnJ+VTDA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqbK4-000LYK-Pz
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Jul 2019 10:50:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 9B63046609;
 Thu, 25 Jul 2019 20:49:59 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1564051799; bh=mH8wV6FHxP/110
 ShelKWuwF16pMZ7vIApmGZu2GcFt8=; b=qTPRZ35lP8jn6bKvYvRxY/LTlKM2rv
 lLLnLkZ43StrP7JQPmedYWZyyRQQdwjcrRI8q4GFXm7QFAnRvZGqQrOjvv3SsDBC
 VThj3ZvpCjkLReVSYe5ZJPzSXe6jD6QXtNUImRj8qh8+06fdzuWAvQzD/KMQbMaH
 8GWFjDoQIL8dc=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hlJJtQSVEL90; Thu, 25 Jul 2019 20:49:59 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 466594660A;
 Thu, 25 Jul 2019 20:49:59 +1000 (AEST)
Received: from VNLAP253VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id A646446609;
 Thu, 25 Jul 2019 20:49:57 +1000 (AEST)
From: "tung quang nguyen" <tung.q.nguyen@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, "'Jon Maloy'" <maloy@donjonn.com>,
 <tipc-discussion@lists.sourceforge.net>, <ying.xue@windriver.com>
References: <1563505531-15432-1-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1563505531-15432-1-git-send-email-jon.maloy@ericsson.com>
Date: Thu, 25 Jul 2019 17:49:52 +0700
Message-ID: <02dd01d542d6$b27eb2e0$177c18a0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLPnM81z1xTbz3fgHN+V9W4aeb3xqTmc3MA
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqbK4-000LYK-Pz
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
