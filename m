Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12284357669
	for <lists+tipc-discussion@lfdr.de>; Wed,  7 Apr 2021 22:59:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lUFGk-0000ae-IB; Wed, 07 Apr 2021 20:59:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lUFGW-0000Z3-BH
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5NDiobMT3PbSypiM0jXZJ9FOfPVwn3taQD5p9WaLIto=; b=CH9FF6ej/yII2TdQxcqr6iNueo
 ebQt9t1WitQ8PdFwRqquHJaUD3fDRetE/EKrOcmcsJDwCUAJd2lLMdrlPkbdWRC3abTJ+VM3KgWkv
 wfpdOoYpjUiNY6zb3TaI8mLBO/f3cm3OGiScY3x6Bw1pDePe+3W/PHuB9gzrpfq9qj54=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5NDiobMT3PbSypiM0jXZJ9FOfPVwn3taQD5p9WaLIto=; b=Wm84AD/YXp1dLR5WdrFLGUxsqg
 QITFDWDsz4URT8JSCJNnZ9nZtWFJFW9BPeY0xdRhJUByZgNPotoQHn1Z7rR/dGXhZsrx+r5IMqOSo
 QBtqg5HFss34TU7idMBff4ho+EmUBDR6WyGQBgQJqgu7rI9tvyBBnzMHU4gNICbp6az0=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUFGQ-000nQJ-SG
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617829136;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5NDiobMT3PbSypiM0jXZJ9FOfPVwn3taQD5p9WaLIto=;
 b=VkNxHwiR622l0+2Mt8rQvq8Lt1DD5OS8MPMy6MbYQxRXpo68kjJhS9LanEf8McM/WaCLj/
 HVXnBtHkmqHSUUHzMn97Z/NZQoPQQJBy7Ce6/UhvFMNENYXDtLRRdxBsmyWKHcb27swInA
 TzRwLWn2+QNoL+rATfWda86xg+jLs5Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-567-_DP6iv_eNg2q3tx5ExaKKA-1; Wed, 07 Apr 2021 16:58:54 -0400
X-MC-Unique: _DP6iv_eNg2q3tx5ExaKKA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9FDF84BA40;
 Wed,  7 Apr 2021 20:58:52 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 02CBC5D9D0;
 Wed,  7 Apr 2021 20:58:49 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed,  7 Apr 2021 16:58:35 -0400
Message-Id: <20210407205836.3187340-3-jmaloy@redhat.com>
In-Reply-To: <20210407205836.3187340-1-jmaloy@redhat.com>
References: <20210407205836.3187340-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUFGQ-000nQJ-SG
Subject: [tipc-discussion] [net-next v2 2/3] tipc: refactor function
 tipc_sk_anc_data_recv()
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
Cc: lxin@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We refactor tipc_sk_anc_data_recv() to make it slighltly more
comprehensible, but also to prepare for some additions to the
code in a future commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 85 +++++++++++++++++++++--------------------------
 1 file changed, 38 insertions(+), 47 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 12a97755bc80..61aefb9f6fd8 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1730,67 +1730,58 @@ static void tipc_sk_set_orig_addr(struct msghdr *m, struct sk_buff *skb)
 static int tipc_sk_anc_data_recv(struct msghdr *m, struct sk_buff *skb,
 				 struct tipc_sock *tsk)
 {
-	struct tipc_msg *msg;
-	u32 anc_data[3];
-	u32 err;
-	u32 dest_type;
-	int has_name;
-	int res;
+	struct tipc_msg *hdr;
+	u32 data[3] = {0,};
+	bool has_addr;
+	int dlen, rc;
 
 	if (likely(m->msg_controllen == 0))
 		return 0;
-	msg = buf_msg(skb);
 
-	/* Optionally capture errored message object(s) */
-	err = msg ? msg_errcode(msg) : 0;
-	if (unlikely(err)) {
-		anc_data[0] = err;
-		anc_data[1] = msg_data_sz(msg);
-		res = put_cmsg(m, SOL_TIPC, TIPC_ERRINFO, 8, anc_data);
-		if (res)
-			return res;
-		if (anc_data[1]) {
-			if (skb_linearize(skb))
-				return -ENOMEM;
-			msg = buf_msg(skb);
-			res = put_cmsg(m, SOL_TIPC, TIPC_RETDATA, anc_data[1],
-				       msg_data(msg));
-			if (res)
-				return res;
-		}
+	hdr = buf_msg(skb);
+	dlen = msg_data_sz(hdr);
+
+	/* Capture errored message object, if any */
+	if (msg_errcode(hdr)) {
+		if (skb_linearize(skb))
+			return -ENOMEM;
+		hdr = buf_msg(skb);
+		data[0] = msg_errcode(hdr);
+		data[1] = dlen;
+		rc = put_cmsg(m, SOL_TIPC, TIPC_ERRINFO, 8, data);
+		if (rc || !dlen)
+			return rc;
+		rc = put_cmsg(m, SOL_TIPC, TIPC_RETDATA, dlen, msg_data(hdr));
+		if (rc)
+			return rc;
 	}
 
-	/* Optionally capture message destination object */
-	dest_type = msg ? msg_type(msg) : TIPC_DIRECT_MSG;
-	switch (dest_type) {
+	/* Capture TIPC_SERVICE_ADDR/RANGE destination address, if any */
+	switch (msg_type(hdr)) {
 	case TIPC_NAMED_MSG:
-		has_name = 1;
-		anc_data[0] = msg_nametype(msg);
-		anc_data[1] = msg_namelower(msg);
-		anc_data[2] = msg_namelower(msg);
+		has_addr = true;
+		data[0] = msg_nametype(hdr);
+		data[1] = msg_namelower(hdr);
+		data[2] = data[1];
 		break;
 	case TIPC_MCAST_MSG:
-		has_name = 1;
-		anc_data[0] = msg_nametype(msg);
-		anc_data[1] = msg_namelower(msg);
-		anc_data[2] = msg_nameupper(msg);
+		has_addr = true;
+		data[0] = msg_nametype(hdr);
+		data[1] = msg_namelower(hdr);
+		data[2] = msg_nameupper(hdr);
 		break;
 	case TIPC_CONN_MSG:
-		has_name = !!tsk->conn_addrtype;
-		anc_data[0] = msg_nametype(&tsk->phdr);
-		anc_data[1] = msg_nameinst(&tsk->phdr);
-		anc_data[2] = anc_data[1];
+		has_addr = !!tsk->conn_addrtype;
+		data[0] = msg_nametype(&tsk->phdr);
+		data[1] = msg_nameinst(&tsk->phdr);
+		data[2] = data[1];
 		break;
 	default:
-		has_name = 0;
-	}
-	if (has_name) {
-		res = put_cmsg(m, SOL_TIPC, TIPC_DESTNAME, 12, anc_data);
-		if (res)
-			return res;
+		has_addr = false;
 	}
-
-	return 0;
+	if (!has_addr)
+		return 0;
+	return put_cmsg(m, SOL_TIPC, TIPC_DESTNAME, 12, data);
 }
 
 static struct sk_buff *tipc_sk_build_ack(struct tipc_sock *tsk)
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
