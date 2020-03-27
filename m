Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 389B81956A7
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Mar 2020 12:56:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jHnbY-0003yU-3m; Fri, 27 Mar 2020 11:56:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jHnbX-0003yH-8q
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 11:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YjIrq/7dyB2/KyDVmYbBZ4ZzSKlF/Z7Ugoh3i8wnDLM=; b=X8n+jfzTlFScODiTYHuo4SZ4xg
 ypl6uAMOvAOcXSziz3/iy4MNnR0CePmdHYd6KvqfN1LzJ0flP94RskqbvEP8I8Pn+sh/yutWrFEbB
 L+VkQ6OzguRys94ehlJqRwcZdtQ+zmB4DoJvnbr1SqgDPl7ZsGYSptO26O7VAcK3pjYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YjIrq/7dyB2/KyDVmYbBZ4ZzSKlF/Z7Ugoh3i8wnDLM=; b=IifpDsbQ6EVTk7V/32x70jpsxm
 DsudqjwdicOfux1rlL004eTNwiiM2zB7rQKii4uaeoYYI+oeuT2P+2rO2neU8w58RyIOX0agh3/Du
 AQ6xThd0n+XJvIn3JmLM3lTomwVomGg+Ti8guU79gauxLPp77ANWNE/QOpJE9RQ+tpI0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jHnbU-00A0GH-JA
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 11:56:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 793294E58E;
 Fri, 27 Mar 2020 22:56:38 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1585310198; bh=g0joG
 tlAbvEXLuxl0uSX7dyI+8E5u+o7cSFasgxTa18=; b=CwCUbfcXy52FjdZW66AmB
 ZqF9yDSbiIc7Vd8Xqk/7HCK+74EIo45I4DE3LlIzHF0aXv/TU7RNkIxAfmz++/GM
 7JfAaRxGwgKCSZ/RNzvjO3W+CIGYx1lfik7Tuz8aisFGYUoF41gnyzzIx/FZyol6
 RArRHeYwfaVDfW8cy/az8E=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xUEDo_R4uHV6; Fri, 27 Mar 2020 22:56:38 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 8766A4E590;
 Fri, 27 Mar 2020 22:56:37 +1100 (AEDT)
Received: from localhost.localdomain (unknown [183.80.119.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id A82C34E58E;
 Fri, 27 Mar 2020 22:56:35 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 27 Mar 2020 18:56:26 +0700
Message-Id: <20200327115628.3269-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
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
X-Headers-End: 1jHnbU-00A0GH-JA
Subject: [tipc-discussion] [PATCH RFC 2/4] tipc: add back link trace events
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

In the previous commit ("tipc: add Gap ACK blocks support for broadcast
link"), we have removed the following link trace events due to the code
changes:

- tipc_link_bc_ack
- tipc_link_retrans

This commit adds them back along with some minor changes to adapt to
the new code.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c  |  3 +++
 net/tipc/trace.h | 13 ++++++++-----
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 1b60ba665504..405ccf597e59 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1517,6 +1517,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
 	bool is_uc = !link_is_bc_sndlink(l);
 	bool bc_has_acked = false;
 
+	trace_tipc_link_retrans(r, acked + 1, acked + gap, &l->transmq);
+
 	/* Determine Gap ACK blocks if any for the particular link */
 	if (ga && is_uc) {
 		/* Get the Gap ACKs, uc part */
@@ -2423,6 +2425,7 @@ int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
 	if (less(acked, r->acked) || (acked == r->acked && !gap && !ga))
 		return 0;
 
+	trace_tipc_link_bc_ack(r, acked, gap, &l->transmq);
 	tipc_link_advance_transmq(l, r, acked, gap, ga, xmitq, &unused, &rc);
 
 	tipc_link_advance_backlog(l, xmitq);
diff --git a/net/tipc/trace.h b/net/tipc/trace.h
index 4d8e00483afc..e7535ab75255 100644
--- a/net/tipc/trace.h
+++ b/net/tipc/trace.h
@@ -299,8 +299,10 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
 		__entry->from = f;
 		__entry->to = t;
 		__entry->len = skb_queue_len(tq);
-		__entry->fseqno = msg_seqno(buf_msg(skb_peek(tq)));
-		__entry->lseqno = msg_seqno(buf_msg(skb_peek_tail(tq)));
+		__entry->fseqno = __entry->len ?
+				  msg_seqno(buf_msg(skb_peek(tq))) : 0;
+		__entry->lseqno = __entry->len ?
+				  msg_seqno(buf_msg(skb_peek_tail(tq))) : 0;
 	),
 
 	TP_printk("<%s> retrans req: [%u-%u] transmq: %u [%u-%u]\n",
@@ -308,15 +310,16 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
 		  __entry->len, __entry->fseqno, __entry->lseqno)
 );
 
-DEFINE_EVENT(tipc_link_transmq_class, tipc_link_retrans,
+DEFINE_EVENT_CONDITION(tipc_link_transmq_class, tipc_link_retrans,
 	TP_PROTO(struct tipc_link *r, u16 f, u16 t, struct sk_buff_head *tq),
-	TP_ARGS(r, f, t, tq)
+	TP_ARGS(r, f, t, tq),
+	TP_CONDITION(less_eq(f, t))
 );
 
 DEFINE_EVENT_PRINT(tipc_link_transmq_class, tipc_link_bc_ack,
 	TP_PROTO(struct tipc_link *r, u16 f, u16 t, struct sk_buff_head *tq),
 	TP_ARGS(r, f, t, tq),
-	TP_printk("<%s> acked: [%u-%u] transmq: %u [%u-%u]\n",
+	TP_printk("<%s> acked: %u gap: %u transmq: %u [%u-%u]\n",
 		  __entry->name, __entry->from, __entry->to,
 		  __entry->len, __entry->fseqno, __entry->lseqno)
 );
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
