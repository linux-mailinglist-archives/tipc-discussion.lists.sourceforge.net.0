Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB90F3D86
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 02:42:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iStIN-0006E0-Ev; Fri, 08 Nov 2019 01:42:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iStIL-0006Dp-3r
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 01:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q9q1T+d+FFt9n9itdBYdd/vFXMzhYTvWRh8Aryuo81w=; b=KwiEo6g/4yoCODPlPu/uAJuxEt
 AJTnabgWWl7p9KJH3b3HAGLyCdT1rEVAAlrEu/pubLD/EuxHpvmqscO1n+8Wq5UYreT5iVz4XasVL
 PS6VY/rwDfPIZAY9i8sZqkhjdq7Es7ChlvLsd7aaNuj/z6qPJeFr9v2gTjVd+axdYoz8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q9q1T+d+FFt9n9itdBYdd/vFXMzhYTvWRh8Aryuo81w=; b=I9lVMjEB+VdpPz64AeIWzh6Ujm
 8s4BzYE0hyhcz1Fygfj5QN3nx+hrNRb4Tc5cP/P2x2ui+HqxuH1Gwm+HvZT5pQpsGob8NP/IQmLgJ
 uBwoCICW3XZDxOQdUoFGjhtNrNl0J2zUxTTMg0oaNIW+NtGRXHM84aFJGIFmBz+rA4aI=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iStIH-004LUR-9J
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 01:42:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 4F77E4AAFB;
 Fri,  8 Nov 2019 12:42:23 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1573177343; bh=WsAHGtvnt886PVnpqF4ThKKTW7gJtIaWyQTSJX5MOGk=; b=S
 ugZYM7dt8Clz6R3i6wGBpPqr86x2OR0roch29fWQVbrST3qtKJwaqUthrW7iPmaK
 nm7GiBGA8aUMHk/EQj6fOsgf69nHhv6f5ZXpPI9C9r2z55ScsdOKwClyGeSEVbE8
 MlnzDulVjAHELZmhxgIK97F/k0T+SoS5wGAJXOwePE=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yO1Y6oMCNFM8; Fri,  8 Nov 2019 12:42:23 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 347784AAFC;
 Fri,  8 Nov 2019 12:42:23 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 1D9194AAFB;
 Fri,  8 Nov 2019 12:42:21 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri,  8 Nov 2019 08:42:09 +0700
Message-Id: <20191108014213.32219-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20191108014213.32219-1-tuong.t.lien@dektech.com.au>
References: <20191108014213.32219-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iStIH-004LUR-9J
Subject: [tipc-discussion] [net-next 1/5] tipc: add reference counter to
 bearer
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

As a need to support the crypto asynchronous operations in the later
commits, apart from the current RCU mechanism for bearer pointer, we
add a 'refcnt' to the bearer object as well.

So, a bearer can be hold via 'tipc_bearer_hold()' without being freed
even though the bearer or interface can be disabled in the meanwhile.
If that happens, the bearer will be released then when the crypto
operation is completed and 'tipc_bearer_put()' is called.

Acked-by: Ying Xue <ying.xue@windreiver.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/bearer.c | 14 +++++++++++++-
 net/tipc/bearer.h |  3 +++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 0214aa1c4427..6e15b9b1f1ef 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -315,6 +315,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	b->net_plane = bearer_id + 'A';
 	b->priority = prio;
 	test_and_set_bit_lock(0, &b->up);
+	refcount_set(&b->refcnt, 1);
 
 	res = tipc_disc_create(net, b, &b->bcast_addr, &skb);
 	if (res) {
@@ -351,6 +352,17 @@ static int tipc_reset_bearer(struct net *net, struct tipc_bearer *b)
 	return 0;
 }
 
+bool tipc_bearer_hold(struct tipc_bearer *b)
+{
+	return (b && refcount_inc_not_zero(&b->refcnt));
+}
+
+void tipc_bearer_put(struct tipc_bearer *b)
+{
+	if (b && refcount_dec_and_test(&b->refcnt))
+		kfree_rcu(b, rcu);
+}
+
 /**
  * bearer_disable
  *
@@ -369,7 +381,7 @@ static void bearer_disable(struct net *net, struct tipc_bearer *b)
 	if (b->disc)
 		tipc_disc_delete(b->disc);
 	RCU_INIT_POINTER(tn->bearer_list[bearer_id], NULL);
-	kfree_rcu(b, rcu);
+	tipc_bearer_put(b);
 	tipc_mon_delete(net, bearer_id);
 }
 
diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
index ea0f3c49cbed..faca696d422f 100644
--- a/net/tipc/bearer.h
+++ b/net/tipc/bearer.h
@@ -165,6 +165,7 @@ struct tipc_bearer {
 	struct tipc_discoverer *disc;
 	char net_plane;
 	unsigned long up;
+	refcount_t refcnt;
 };
 
 struct tipc_bearer_names {
@@ -210,6 +211,8 @@ int tipc_media_set_window(const char *name, u32 new_value);
 int tipc_media_addr_printf(char *buf, int len, struct tipc_media_addr *a);
 int tipc_enable_l2_media(struct net *net, struct tipc_bearer *b,
 			 struct nlattr *attrs[]);
+bool tipc_bearer_hold(struct tipc_bearer *b);
+void tipc_bearer_put(struct tipc_bearer *b);
 void tipc_disable_l2_media(struct tipc_bearer *b);
 int tipc_l2_send_msg(struct net *net, struct sk_buff *buf,
 		     struct tipc_bearer *b, struct tipc_media_addr *dest);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
