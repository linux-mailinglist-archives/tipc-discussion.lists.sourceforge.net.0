Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7905560A
	for <lists+tipc-discussion@lfdr.de>; Tue, 25 Jun 2019 19:37:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfpNb-0007t9-R4; Tue, 25 Jun 2019 17:37:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hfpNS-0007rX-Lt
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 17:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lEM7Je4rhOETOUZPdxrlLfv5tFvnnk7w3trQ71WsSmQ=; b=EanhHHbw7F8Bl8qXL+hwg+Hxss
 fG4FXa7GrZXbl3PLJ6e/CKJ2lkOzpGxEDc3ZbABALEx9BcPo40+42s/90vhwWhUjYZKtVD6NurJPD
 yvxA/MJu8lWf9eM2NNygl4rmBOzlrRxZ7sKi1M24n3hdZjY2wfuDLcHyxPgqntbl40NI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lEM7Je4rhOETOUZPdxrlLfv5tFvnnk7w3trQ71WsSmQ=; b=X
 4Y4E4KdEPIAXHXcQ9X6k23uZYnf4h2P+PT/XIjIHXaBQpPBtRnfFRkuyxxnbWKPg26TjhYmDF6YkR
 g30OjkJXmJt/WD5tunfbvmar1TaMxSgNALiv0UMJ76fx4sR8H1UoAaDzaWzbuFr76sH+vafvK9Dlm
 7dTe7dOFDnUmgG2w=;
Received: from sessmg22.ericsson.net ([193.180.251.58])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfpNX-009mk4-8K
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 17:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ericsson.com; s=mailgw201801;
 c=relaxed/relaxed; 
 q=dns/txt; i=@ericsson.com; t=1561484221; x=1564076221;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lEM7Je4rhOETOUZPdxrlLfv5tFvnnk7w3trQ71WsSmQ=;
 b=UD35IGKt2uyIPoE08gI4n0hmVSgqLJA24Bshmvh40BZ/hE0tOh48szA8hXDWPkg0
 8UIIMYRIxpHVWEQ3ZtGyKnN1bzXpnBoDVpqF+4ufzhl8RW2vCIorxQgc3jVQmN/l
 ftzMjIoFHgSIkEiX/IxIFXfVC7PVvXPLiFYZDB1fQ+g=;
X-AuditID: c1b4fb3a-6f1ff7000000189f-1b-5d125bbd5f31
Received: from ESESSMB502.ericsson.se (Unknown_Domain [153.88.183.120])
 by sessmg22.ericsson.net (Symantec Mail Security) with SMTP id
 7C.87.06303.DBB521D5; Tue, 25 Jun 2019 19:37:01 +0200 (CEST)
Received: from ESESBMB503.ericsson.se (153.88.183.170) by
 ESESSMB502.ericsson.se (153.88.183.163) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Tue, 25 Jun 2019 19:37:00 +0200
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.186) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 25 Jun 2019 19:37:00 +0200
From: Jon Maloy <jon.maloy@ericsson.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Tue, 25 Jun 2019 19:37:00 +0200
Message-ID: <1561484220-22814-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFLMWRmVeSWpSXmKPExsUyM2J7he7eaKFYg2kvRSxuNPQwW8w538Ji
 sWL3JFaLt69msVscWyBmseV8lsWV9rPsFo+vX2d24PDYsvImk8e7K2weuxd8ZvL4vEnOY/2W
 rUwBrFFcNimpOZllqUX6dglcGVOW/GArmC5a0dDznLmBcaNgFyMnh4SAicSNg1PYQWwhgaOM
 Eive+XUxcgHZ3xglXuzohkpcYJTYPy8DxGYT0JB4Oa2DEcQWETCWeLWykwmkgVngMaPEl/ur
 2EASwgLBEt8n7WYFsVkEVCWmrDgOFucVcJM4dOs2M8RmOYnzx38yQyxQlpj7YRoTRI2gxMmZ
 T1hAbGYBCYmDL14wT2Dkm4UkNQtJagEj0ypG0eLU4uLcdCMjvdSizOTi4vw8vbzUkk2MwBA9
 uOW31Q7Gg88dDzEKcDAq8fCujRSKFWJNLCuuzD3EKMHBrCTCuzRRIFaINyWxsiq1KD++qDQn
 tfgQozQHi5I473rvfzFCAumJJanZqakFqUUwWSYOTqkGxk7zPE9pszk65bUSpd17H1TMuRDM
 HbPP0qA+dGGq8pK/XY9FtUsq/U5M/R+7lOnLLcNjWp4fbOJ0rfnnx874ViQgcy3FMS/1x8kH
 T+yXcX7vVVEqi+bOebA/5obXZM11S/U6l/73mtJmuI17g6rQrPUf5TIvai+sf//Hem31fVb+
 y2t7z2x8o8RSnJFoqMVcVJwIADYYNLBNAgAA
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hfpNX-009mk4-8K
Subject: [tipc-discussion] [net-next 1/1] tipc: rename function
 msg_get_wrapped() to msg_inner_hdr()
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

We rename the inline function msg_get_wrapped() to the more
comprehensible msg_inner_hdr().

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/bcast.c | 4 ++--
 net/tipc/link.c  | 2 +-
 net/tipc/msg.h   | 4 ++--
 net/tipc/node.c  | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 6c997d4..1336f3c 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -323,7 +323,7 @@ static int tipc_mcast_send_sync(struct net *net, struct sk_buff *skb,
 
 	hdr = buf_msg(skb);
 	if (msg_user(hdr) == MSG_FRAGMENTER)
-		hdr = msg_get_wrapped(hdr);
+		hdr = msg_inner_hdr(hdr);
 	if (msg_type(hdr) != TIPC_MCAST_MSG)
 		return 0;
 
@@ -392,7 +392,7 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
 		skb = skb_peek(pkts);
 		hdr = buf_msg(skb);
 		if (msg_user(hdr) == MSG_FRAGMENTER)
-			hdr = msg_get_wrapped(hdr);
+			hdr = msg_inner_hdr(hdr);
 		msg_set_is_rcast(hdr, method->rcast);
 
 		/* Switch method ? */
diff --git a/net/tipc/link.c b/net/tipc/link.c
index aa79bf8..f8bf63b 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -732,7 +732,7 @@ static void link_profile_stats(struct tipc_link *l)
 	if (msg_user(msg) == MSG_FRAGMENTER) {
 		if (msg_type(msg) != FIRST_FRAGMENT)
 			return;
-		length = msg_size(msg_get_wrapped(msg));
+		length = msg_size(msg_inner_hdr(msg));
 	}
 	l->stats.msg_lengths_total += length;
 	l->stats.msg_length_counts++;
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 8de02ad..da509f0 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -308,7 +308,7 @@ static inline unchar *msg_data(struct tipc_msg *m)
 	return ((unchar *)m) + msg_hdr_sz(m);
 }
 
-static inline struct tipc_msg *msg_get_wrapped(struct tipc_msg *m)
+static inline struct tipc_msg *msg_inner_hdr(struct tipc_msg *m)
 {
 	return (struct tipc_msg *)msg_data(m);
 }
@@ -486,7 +486,7 @@ static inline void msg_set_prevnode(struct tipc_msg *m, u32 a)
 static inline u32 msg_origport(struct tipc_msg *m)
 {
 	if (msg_user(m) == MSG_FRAGMENTER)
-		m = msg_get_wrapped(m);
+		m = msg_inner_hdr(m);
 	return msg_word(m, 4);
 }
 
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 550581d..324a1f9 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1649,7 +1649,7 @@ static bool tipc_node_check_state(struct tipc_node *n, struct sk_buff *skb,
 	int usr = msg_user(hdr);
 	int mtyp = msg_type(hdr);
 	u16 oseqno = msg_seqno(hdr);
-	u16 iseqno = msg_seqno(msg_get_wrapped(hdr));
+	u16 iseqno = msg_seqno(msg_inner_hdr(hdr));
 	u16 exp_pkts = msg_msgcnt(hdr);
 	u16 rcv_nxt, syncpt, dlv_nxt, inputq_len;
 	int state = n->state;
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
