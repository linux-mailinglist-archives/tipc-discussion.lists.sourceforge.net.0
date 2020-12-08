Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A84EF2D3268
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi5I-000803-QU; Tue, 08 Dec 2020 18:51:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi5H-0007zr-65
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=51oMNhrOcRyGgobrK/lZ9V3/dMlW1UdBAbWqqxeEAAo=; b=g5qROLjjabyGkAMA1RROk2lAOq
 GlD4rhsU5XnwZg6lyy54KsKnh96DvCrhtLq67DHU3IUH5DuIW3KXXI0+oBEILIbYYv6Ma7chemEgq
 t3jK69/XlmR9z8LFm0v5lrPkKclw4yblfVjGmASb/N1pXPe3sdfn9y0mE1YcJ4iZzq2o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=51oMNhrOcRyGgobrK/lZ9V3/dMlW1UdBAbWqqxeEAAo=; b=C8V6CEQW7wqoXa77ZfH3CQA3XI
 qK27+kzUfXco7LWxvHVYGcSInowqpgHlFGO7+bI+ZdA1AAUntn4zGkoghl/3mFmiJ9EEwkI8W/gOW
 o9puUxLcif4HXTOkusLkCvV8ev5YqZDx9UfdSu/hHm/0RmCbwaS0RqZ3stfCcaA8efhw=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi5D-006v1h-4c
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453478;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=51oMNhrOcRyGgobrK/lZ9V3/dMlW1UdBAbWqqxeEAAo=;
 b=OL/EBAr87dRcqs0p+AI/D7xr8/z9wtdDxcn0Jiao6I1bKulLGTNW+zwhiFCDlMU0CucIal
 0BJWgKQTEKTqyupGIFGrgRQDkp2dmWtq0/5vZ/x0FT1XYUHrIg04jGrYQX28rTrrBFO6AN
 bfataRe6mvldCAaswKvFsBtcU3RxXZA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-ChgECWDgPVqwpZVvpbqzFw-1; Tue, 08 Dec 2020 13:50:48 -0500
X-MC-Unique: ChgECWDgPVqwpZVvpbqzFw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 480F01927800;
 Tue,  8 Dec 2020 18:50:47 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC3606091B;
 Tue,  8 Dec 2020 18:50:45 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:12 -0500
Message-Id: <20201208185012.265508-17-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-1-jmaloy@redhat.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi5D-006v1h-4c
Subject: [tipc-discussion] [net-next 16/16] tipc: remove some unnecessary
 warnings
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
Cc: xinl@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We move some warning printouts to more strategic locations to avoid
duplicates and yield more detailed information about the reported
problem.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_distr.c |  7 -------
 net/tipc/name_table.c | 36 +++++++++++++++++-------------------
 2 files changed, 17 insertions(+), 26 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index fe5f39792323..47f00e420377 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -253,13 +253,6 @@ static void tipc_publ_purge(struct net *net, struct publication *p, u32 addr)
 	if (_p)
 		tipc_node_unsubscribe(net, &_p->binding_node, addr);
 	spin_unlock_bh(&tn->nametbl_lock);
-
-	if (_p != p) {
-		pr_err("Unable to remove publication from failed node\n"
-		       " (type=%u, lower=%u, node=%u, port=%u, key=%u)\n",
-		       p->sr.type, p->sr.lower, p->sk.node, p->sk.ref, p->key);
-	}
-
 	if (_p)
 		kfree_rcu(_p, rcu);
 }
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 9085c41a1709..946d3ed5de5a 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -337,17 +337,22 @@ static bool tipc_service_insert_publ(struct net *net,
 	struct publication *_p;
 	u32 node = p->sk.node;
 	bool first = false;
+	u32 key = p->key;
 
 	sr = tipc_service_create_range(sc, p);
 	if (!sr)
-		goto  err;
+		return false;
 
 	first = list_empty(&sr->all_publ);
 
 	/* Return if the publication already exists */
 	list_for_each_entry(_p, &sr->all_publ, all_publ) {
-		if (_p->key == p->key && (!_p->sk.node || _p->sk.node == node))
+		if (_p->key == key && (!_p->sk.node || _p->sk.node == node)) {
+			pr_debug("Failed to bind duplicate %u,%u,%u/%u:%u/%u\n",
+				 p->sr.type, p->sr.lower, p->sr.upper,
+				 node, p->sk.ref, key);
 			return false;
+		}
 	}
 
 	if (in_own_node(net, p->sk.node))
@@ -360,10 +365,6 @@ static bool tipc_service_insert_publ(struct net *net,
 		tipc_sub_report_overlap(sub, p, TIPC_PUBLISHED, first);
 	}
 	return true;
-err:
-	pr_warn("Failed to bind to %u,%u,%u, no memory\n",
-		p->sr.type, p->sr.lower, p->sr.upper);
-	return false;
 }
 
 /**
@@ -473,18 +474,12 @@ struct publication *tipc_nametbl_insert_publ(struct net *net,
 {
 	struct tipc_service *sc;
 	struct publication *p;
-	u32 type = ua->sr.type;
 	bool res = false;
 
 	p = tipc_publ_create(ua, sk, key);
 	if (!p)
 		return NULL;
 
-	if (ua->sr.lower > ua->sr.upper) {
-		pr_debug("Failed to bind illegal {%u,%u,%u} from node %u\n",
-			 type, ua->sr.lower, ua->sr.upper, sk->node);
-		return NULL;
-	}
 	sc = tipc_service_find(net, ua);
 	if (!sc)
 		sc = tipc_service_create(net, ua);
@@ -512,15 +507,15 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 
 	sc = tipc_service_find(net, ua);
 	if (!sc)
-		return NULL;
+		goto exit;
 
 	spin_lock_bh(&sc->lock);
 	sr = tipc_service_find_range(sc, ua);
 	if (!sr)
-		goto exit;
+		goto unlock;
 	p = tipc_service_remove_publ(sr, ua, sk, key);
 	if (!p)
-		goto exit;
+		goto unlock;
 
 	/* Notify any waiting subscriptions */
 	last = list_empty(&sr->all_publ);
@@ -539,8 +534,14 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 		hlist_del_init_rcu(&sc->service_list);
 		kfree_rcu(sc, rcu);
 	}
-exit:
+unlock:
 	spin_unlock_bh(&sc->lock);
+exit:
+	if (!p) {
+		pr_err("Failed to remove unknown binding: %u,%u,%u/%u:%u/%u\n",
+		       ua->sr.type, ua->sr.lower, ua->sr.upper,
+		       sk->node, sk->ref, key);
+	}
 	return p;
 }
 
@@ -809,9 +810,6 @@ void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
 		skb = tipc_named_withdraw(net, p);
 		list_del_init(&p->binding_sock);
 		kfree_rcu(p, rcu);
-	} else {
-		pr_err("Failed to remove local publication {%u,%u,%u}/%u\n",
-		       ua->sr.type, ua->sr.lower, ua->sr.upper, key);
 	}
 	rc_dests = nt->rc_dests;
 	spin_unlock_bh(&tn->nametbl_lock);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
