Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6746C326DF2
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2sx-0002B9-BP; Sat, 27 Feb 2021 16:56:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2sw-0002Aw-IS
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Djk5xY8uiR6BVEMj3HP67DfRH36khi96vN/+NFg/+V8=; b=a8SVkVPAvgU/LNY1yeTktExnOB
 42PT7DiUu/TKsEVbMlhiIcvos5YwlVheLo9NIINbHGrMEvAeLMBdg4+etLcy7hs/jP7YTU9ia0Ah2
 08L6pmmYnIXKxkKiKcNhFpVeABPcZb/MjrSh0sfBJWVZlmTvtJj1X4GICiJsHj1wEMtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Djk5xY8uiR6BVEMj3HP67DfRH36khi96vN/+NFg/+V8=; b=Z1PDZ86q956W2CxfkgECj/MM9X
 Hg/rLlLMGnd+qYI7iKucMWEbjXbiueYHKaT5VsXmgO0G6KpgD6Vjb9eRTlFWR6oyMPgDoHdXdfdg4
 ZEawNEmhaNhMnDzaLlmAencKma3+mbU+LjEDuBEOUkbpYsI9kPwwbyYRn1CGuDJJ+mXk=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lG2sq-0002GR-9V
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444954;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Djk5xY8uiR6BVEMj3HP67DfRH36khi96vN/+NFg/+V8=;
 b=B6QY0kaRZJiiHiP/4mwBXidWIPfdPpaIqGqpD9w/BIqpH80aUFUKkNUFn//hDvRd5oF88Z
 nPJZwEadFPROa9g8l/9NwU38kGVw7lYG3gUdMR2HWWECZFKVK3NMuZlT0iOyeqRBbql5a8
 O9X2rTUOqPpdZ5XGwdYApvBIkKLM1K8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-ytolm2W-NaG6Myo2cq-EHg-1; Sat, 27 Feb 2021 11:55:49 -0500
X-MC-Unique: ytolm2W-NaG6Myo2cq-EHg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33EC4803F48;
 Sat, 27 Feb 2021 16:55:48 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E849C62A02;
 Sat, 27 Feb 2021 16:55:46 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:28 -0500
Message-Id: <20210227165542.3781624-3-jmaloy@redhat.com>
In-Reply-To: <20210227165542.3781624-1-jmaloy@redhat.com>
References: <20210227165542.3781624-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
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
X-Headers-End: 1lG2sq-0002GR-9V
Subject: [tipc-discussion] [net-next v2 02/16] tipc: move creation of
 publication item one level up in call chain
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

We instantiate struct publication in tipc_nametbl_insert_publ()
instead of as currently in tipc_service_insert_publ(). This has the
advantage that we can pass a pointer to the publication struct to
the next call levels, instead of the numerous individual parameters
we pass on now. It also gives us a location to keep the contents of
the additional fields we will introduce in a later commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c | 65 +++++++++++++++++++++----------------------
 1 file changed, 32 insertions(+), 33 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index c2410ba7be5c..c37cef09b54c 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -327,49 +327,48 @@ static struct service_range *tipc_service_create_range(struct tipc_service *sc,
 	return sr;
 }
 
-static struct publication *tipc_service_insert_publ(struct net *net,
-						    struct tipc_service *sc,
-						    u32 type, u32 lower,
-						    u32 upper, u32 scope,
-						    u32 node, u32 port,
-						    u32 key)
+static bool tipc_service_insert_publ(struct net *net,
+				     struct tipc_service *sc,
+				     struct publication *p)
 {
 	struct tipc_subscription *sub, *tmp;
 	struct service_range *sr;
-	struct publication *p;
+	struct publication *_p;
+	u32 node = p->sk.node;
 	bool first = false;
+	bool res = false;
 
-	sr = tipc_service_create_range(sc, lower, upper);
+	spin_lock_bh(&sc->lock);
+	sr = tipc_service_create_range(sc, p->sr.lower, p->sr.upper);
 	if (!sr)
-		goto  err;
+		goto  exit;
 
 	first = list_empty(&sr->all_publ);
 
 	/* Return if the publication already exists */
-	list_for_each_entry(p, &sr->all_publ, all_publ) {
-		if (p->key == key && (!p->sk.node || p->sk.node == node))
-			return NULL;
+	list_for_each_entry(_p, &sr->all_publ, all_publ) {
+		if (_p->key == p->key && (!_p->sk.node || _p->sk.node == node))
+			goto exit;
 	}
 
-	/* Create and insert publication */
-	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
-	if (!p)
-		goto err;
-	/* Suppose there shouldn't be a huge gap btw publs i.e. >INT_MAX */
-	p->id = sc->publ_cnt++;
-	if (in_own_node(net, node))
+	if (in_own_node(net, p->sk.node))
 		list_add(&p->local_publ, &sr->local_publ);
 	list_add(&p->all_publ, &sr->all_publ);
+	p->id = sc->publ_cnt++;
 
 	/* Any subscriptions waiting for notification?  */
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper, TIPC_PUBLISHED,
-					p->sk.ref, p->sk.node, p->scope, first);
+		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
+					TIPC_PUBLISHED, p->sk.ref, p->sk.node,
+					p->scope, first);
 	}
-	return p;
-err:
-	pr_warn("Failed to bind to %u,%u,%u, no memory\n", type, lower, upper);
-	return NULL;
+	res = true;
+exit:
+	if (!res)
+		pr_warn("Failed to bind to %u,%u,%u\n",
+			p->sr.type, p->sr.lower, p->sr.upper);
+	spin_unlock_bh(&sc->lock);
+	return res;
 }
 
 /**
@@ -482,6 +481,10 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
 	struct tipc_service *sc;
 	struct publication *p;
 
+	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
+	if (!p)
+		return NULL;
+
 	if (scope > TIPC_NODE_SCOPE || lower > upper) {
 		pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
 			 type, lower, upper, scope);
@@ -490,14 +493,10 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
 	sc = tipc_service_find(net, type);
 	if (!sc)
 		sc = tipc_service_create(type, &nt->services[hash(type)]);
-	if (!sc)
-		return NULL;
-
-	spin_lock_bh(&sc->lock);
-	p = tipc_service_insert_publ(net, sc, type, lower, upper,
-				     scope, node, port, key);
-	spin_unlock_bh(&sc->lock);
-	return p;
+	if (sc && tipc_service_insert_publ(net, sc, p))
+		return p;
+	kfree(p);
+	return NULL;
 }
 
 struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
