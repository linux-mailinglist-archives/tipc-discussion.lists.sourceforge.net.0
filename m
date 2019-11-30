Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2A110DD5D
	for <lists+tipc-discussion@lfdr.de>; Sat, 30 Nov 2019 11:19:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iazqO-0005we-9w; Sat, 30 Nov 2019 10:19:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iazqK-0005wR-Gw
 for tipc-discussion@lists.sourceforge.net; Sat, 30 Nov 2019 10:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vri5Mx6ehYpxfF1zYMbbGY93wx9iSuipUMopdXkqaxA=; b=NsGnvz7Glqlfv+CCXH3GLoG14U
 FfQNY7CLvN+07XRMetnHsqCM8MQSTVMXXDHQ0AnNA4iT8ZDx7t81Q7vy+b3kEhNvsmCzjuvYQa8Bu
 PArveMSGu5cPhd8FVunVrHZZrqBQge46fZhiuSFgUjAnYkOVHJF9XA+xMmI9k6aLNo1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vri5Mx6ehYpxfF1zYMbbGY93wx9iSuipUMopdXkqaxA=; b=CPPxZlWYHZ/9E2jFec0ZbbELnp
 1fGKDRz9WEA4zOkRTsP1OKjDJrqIvWpkk7Dhupl9iBFBiUIBrqaN9afD0lTz42TFXjG1oE9rkKVv8
 s1fonOhEmhB3UBrpoJ++wCahEQZMDUvZzP1OgTe6ql2gtZtlVRlobkUNdPHdhwRCmelU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iazqG-000Rip-Lc
 for tipc-discussion@lists.sourceforge.net; Sat, 30 Nov 2019 10:19:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id E6B584BAA5;
 Sat, 30 Nov 2019 21:18:56 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1575109136; bh=Zuadp
 3eyRY/k1GaqYvp1G0dVLxG5tOzg4JJVOFOqkJo=; b=o+XFD/nniMANRJ0TZiBrg
 1h+yjaY8KNQM9JWZOPdt9voxzAP58aRj06itz9aOtfOI1+an6ky6o2/vJNZSyvVa
 lvPxplzxOTFLkeSxyrmyI4SRTEuUNSJtsvE2HkaO1GvroDp6ntCR9/SWEw9D4EPv
 F8NOxxFJfY1lgJ0V0Z4hwU=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id vORyF_j_OwvE; Sat, 30 Nov 2019 21:18:56 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 698A24BAA6;
 Sat, 30 Nov 2019 21:18:56 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 326984BAA5;
 Sat, 30 Nov 2019 21:18:55 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Sat, 30 Nov 2019 17:18:49 +0700
Message-Id: <20191130101849.28867-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1iazqG-000Rip-Lc
Subject: [tipc-discussion] [PATCH RFC] tipc: fix retrans failure due to
 wrong destination
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When a user message is sent, TIPC will check if the socket has faced a
congestion at link layer. If that happens, it will make a sleep to wait
for the congestion to disappear. This leaves a gap for other users to
take over the socket (e.g. multi threads) since the socket is released
as well. Also, in case of connectionless (e.g. SOCK_RDM), user is free
to send messages to various destinations (e.g. via 'sendto()'), then
the socket's preformatted header has to be updated correspondingly
prior to the actual payload message building.

Unfortunately, the latter action is done before the first action which
causes a condition issue that the destination of a certain message can
be modified incorrectly in the middle, leading to wrong destination
when that message is built. Consequently, when the message is sent to
the link layer, it gets stuck there forever because the peer node will
simply reject it. After a number of retransmission attempts, the link
is eventually taken down and the retransmission failure is reported.

This commit fixes the problem by rearranging the order of actions to
prevent the race condition from occurring, so the message building is
'atomic' and its header will not be modified by anyone.

Fixes: 365ad353c256 ("tipc: reduce risk of user starvation during link congestion")
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index a1c8d722ca20..9b0280a562a4 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1361,8 +1361,8 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	struct tipc_msg *hdr = &tsk->phdr;
 	struct tipc_name_seq *seq;
 	struct sk_buff_head pkts;
-	u32 dport, dnode = 0;
-	u32 type, inst;
+	u32 dport = 0, dnode = 0;
+	u32 type = 0, inst = 0;
 	int mtu, rc;
 
 	if (unlikely(dlen > TIPC_MAX_USER_MSG_SIZE))
@@ -1415,23 +1415,11 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		type = dest->addr.name.name.type;
 		inst = dest->addr.name.name.instance;
 		dnode = dest->addr.name.domain;
-		msg_set_type(hdr, TIPC_NAMED_MSG);
-		msg_set_hdr_sz(hdr, NAMED_H_SIZE);
-		msg_set_nametype(hdr, type);
-		msg_set_nameinst(hdr, inst);
-		msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
 		dport = tipc_nametbl_translate(net, type, inst, &dnode);
-		msg_set_destnode(hdr, dnode);
-		msg_set_destport(hdr, dport);
 		if (unlikely(!dport && !dnode))
 			return -EHOSTUNREACH;
 	} else if (dest->addrtype == TIPC_ADDR_ID) {
 		dnode = dest->addr.id.node;
-		msg_set_type(hdr, TIPC_DIRECT_MSG);
-		msg_set_lookup_scope(hdr, 0);
-		msg_set_destnode(hdr, dnode);
-		msg_set_destport(hdr, dest->addr.id.ref);
-		msg_set_hdr_sz(hdr, BASIC_H_SIZE);
 	} else {
 		return -EINVAL;
 	}
@@ -1442,6 +1430,22 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	if (unlikely(rc))
 		return rc;
 
+	if (dest->addrtype == TIPC_ADDR_NAME) {
+		msg_set_type(hdr, TIPC_NAMED_MSG);
+		msg_set_hdr_sz(hdr, NAMED_H_SIZE);
+		msg_set_nametype(hdr, type);
+		msg_set_nameinst(hdr, inst);
+		msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
+		msg_set_destnode(hdr, dnode);
+		msg_set_destport(hdr, dport);
+	} else { /* TIPC_ADDR_ID */
+		msg_set_type(hdr, TIPC_DIRECT_MSG);
+		msg_set_lookup_scope(hdr, 0);
+		msg_set_destnode(hdr, dnode);
+		msg_set_destport(hdr, dest->addr.id.ref);
+		msg_set_hdr_sz(hdr, BASIC_H_SIZE);
+	}
+
 	__skb_queue_head_init(&pkts);
 	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
