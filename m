Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9390828A0B2
	for <lists+tipc-discussion@lfdr.de>; Sat, 10 Oct 2020 16:56:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kRGIU-00007G-Sq; Sat, 10 Oct 2020 14:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kRGIU-000073-Af
 for tipc-discussion@lists.sourceforge.net; Sat, 10 Oct 2020 14:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GPZfBtHCrZJ7+pWmrk37wsg5mKtpzb4EXvbxVu9BJl8=; b=S98AIp4pRvPo5bBRkz7lEpi2dR
 ejiT64Jt2Qjfomkw99CWe9fMJEdO2BGn256i/e4FbN2NCRBYcjbJaeaR3QrJ6A7UUS7g/z9LMrMJ9
 biCLnieVEPKB9Vgx9RCbJYZ3fw5N70QoU6jGry53ZbeUCUr4ZURYvi3MC4Z36DdMFlVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GPZfBtHCrZJ7+pWmrk37wsg5mKtpzb4EXvbxVu9BJl8=; b=X
 WFXQRR2QoYuUHVucC6FR0REc81TVBl8C9TTXcN929oQBlc9l/HeIld26Pyouz0hfbivx6HwBvR7aG
 P/i/bqIyhRLPrdWW8OT8CU8gxmbgBWDOnV2goVAF7FlAweXdEI3XeDB2J8KKFgqzwAgy1qRMsu7JU
 Cw9qG9TEIRj+n4UA=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kRGII-009gEM-Ld
 for tipc-discussion@lists.sourceforge.net; Sat, 10 Oct 2020 14:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602341776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=GPZfBtHCrZJ7+pWmrk37wsg5mKtpzb4EXvbxVu9BJl8=;
 b=OfOagaZJhgjPbga+7MLxpEOZRnsDucGn+rh5Oieewvker0vSlGJX6Goi0RQILd4wunSh3i
 wqNNGXvizhfBUJUMFcgFpqTmY1t6w1sud+boseAoCLtMQyJEWsL1a/MJ11FmS7ZpxdDEjT
 cP9xFOK7+XBfodE942xrAvlGliivX+g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-YEM7_edyO2exO8f0na5cOg-1; Sat, 10 Oct 2020 10:56:12 -0400
X-MC-Unique: YEM7_edyO2exO8f0na5cOg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FF1B101FFA1;
 Sat, 10 Oct 2020 14:56:10 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9519E100238C;
 Sat, 10 Oct 2020 14:56:08 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 10 Oct 2020 10:56:08 -0400
Message-Id: <20201010145608.1058917-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
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
X-Headers-End: 1kRGII-009gEM-Ld
Subject: [tipc-discussion] [net ] tipc: add stricter control of reserved
 service types
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

TIPC reserves 64 service types for current and future internal use.
Therefore, the bind() function is meant to block regular user sockets
from being bound to these values, while it should let through such
bindings from internal users.

However, since we at the design moment saw no way to distinguish
between regular and internal users the filter function ended up
with allowing all bindings of the types which were really in use
([0,1]), and block all the rest ([2,63]).

This is dangerous, since a regular user may bind to the service type
representing the topology server (TIPC_TOP_SRV == 1) or the one used
for indicating neigboring node status (TIPC_CFG_SRV == 0), and wreak
havoc for users of those services. I.e., practically all users.

The reality is however that TIPC_CFG_SRV never is bound through the
bind() function, since it doesn't represent a regular socket, and
TIPC_TOP_SRV can easily be filtered out, since it is the very first
binding performed when the system is starting.

We can hence block TIPC_CFG_SRV completely, and only allow TIPC_TOP_SRV
to be bound once, and the correct behavior is achieved. This is what we
do in this commit.

It should be noted that, although this is a change of the API semantics,
there is no risk we will break any currently working applications by
doing this. Any application trying to bind to the values in question
would be badly broken from the outset, so there is no chance we would
find any such applications in real-world production systems.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/socket.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index e795a8a2955b..67875a5761d0 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -665,6 +665,7 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
 	struct tipc_sock *tsk = tipc_sk(sk);
 	int res = -EINVAL;
+	u32 stype, dnode;
 
 	lock_sock(sk);
 	if (unlikely(!uaddr_len)) {
@@ -691,9 +692,10 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
 		goto exit;
 	}
 
-	if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
-	    (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
-	    (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
+	stype = addr->addr.nameseq.type;
+	if (stype < TIPC_RESERVED_TYPES &&
+	    (stype != TIPC_TOP_SRV ||
+	     tipc_nametbl_translate(sock_net(sk), stype, stype, &dnode))) {
 		res = -EACCES;
 		goto exit;
 	}
-- 
2.25.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
