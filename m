Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0CD714EA
	for <lists+tipc-discussion@lfdr.de>; Tue, 23 Jul 2019 11:19:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hpqxY-00024H-3t; Tue, 23 Jul 2019 09:19:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Zhe.He@windriver.com>) id 1hpqxW-000246-Od
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Jul 2019 09:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3IgTfx0rQUokBWsDds0/pACj2DFuujdA0EXSfGKgqpM=; b=Z2OgAsoYMzQXTAX2XA8MA32Jdw
 2f5Zq0jY9xX+C4mF7wyGHLAsqOjINeVesbSZecreVdQCFemIf/Yc3sa8vDeAoycOYDG/bBn6dwsAQ
 voVSpnUJIWgoBHD2l6LMLaCTwy8Uv2fTcVWDK9KEllAPyrtGcjfZ9O/ld6SBlHr4t3SA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3IgTfx0rQUokBWsDds0/pACj2DFuujdA0EXSfGKgqpM=; b=M
 AxElgHu1HAVMmOKhi46/ZK6apsjYW1jJtzbjjckgeqTy7F9zePIhkopLH1TAtCj+uS3A4sQrS+VEf
 YT9Xrx3KwnbIICJvzV1gpa2pyuvdoYDe4wBTwJTyO4ChawnS8Cry9tYdu1Izpf3UIhf+KqBaAxNCW
 qB7Yj4RQP2P+RmD0=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hpqxT-00C042-Sa
 for tipc-discussion@lists.sourceforge.net; Tue, 23 Jul 2019 09:19:46 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6N9J75I012364
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
 for <tipc-discussion@lists.sourceforge.net>; Tue, 23 Jul 2019 02:19:28 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.468.0; Tue, 23 Jul 2019 02:19:00 -0700
From: <zhe.he@windriver.com>
To: <tipc-discussion@lists.sourceforge.net>
Date: Tue, 23 Jul 2019 17:18:58 +0800
Message-ID: <1563873538-193562-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hpqxT-00C042-Sa
Subject: [tipc-discussion] [tipc-tipcutils][PATCH] test: ptts: Set recv
 buffer size too max to receive as many packets as possible
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

From: He Zhe <zhe.he@windriver.com>

Flooding multicast may make the rcv buffer overrun and is considered premature
messages later and thus cause the following error.

"Ignoring premature msg 16, currently handling 12"

This patch sets SO_RCVBUF the of socket to max int value to receive as many
packets as possible, and give a hint to user when possible overrun occurs. Note
that the value of SO_RCVBUF will be limited up to
min(INT_MAX/2, sysctl_rmem_max) in kernel.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 test/ptts/tipc_ts_server.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/test/ptts/tipc_ts_server.c b/test/ptts/tipc_ts_server.c
index a286daa..cc69e6e 100644
--- a/test/ptts/tipc_ts_server.c
+++ b/test/ptts/tipc_ts_server.c
@@ -641,8 +641,9 @@ void server_mcast
 				if (rc < 0)
 					err("multicast message not received");
 				if (msgno != *(int*) buf) {
-					dbg1("Ignoring premature msg %u, currently handling %u\n",
-					       *(int*)buf, msgno);
+					dbg1("Ignoring premature msg %u, currently handling %u\n"
+                                             "You can enlarge /proc/sys/net/core/rmem_max and try again\n",
+                                             *(int*)buf, msgno);
 					continue;
 				}
 				rc = recvfrom(sd[i], buf, expected_szs[numSubTest], 
@@ -687,8 +688,21 @@ void server_test_multicast(void)
 	FD_ZERO(&readfds);
 
 	for (i = 0; i < TIPC_MCAST_SOCKETS; i++) {
+		int optval = (int)(~0U >> 1);
+		socklen_t optlen = sizeof(optval);
+		int rc = 0;
+
 		sd[i] = createSocketTIPC (SOCK_RDM);
 		FD_SET(sd[i], &readfds);
+
+		/*
+                 * Flooding multicast may make the rcv buffer overrun and is considered premature msg later.
+                 * Set SO_RCVBUF to max int value to receive as many as possible.
+                 * Note that it will be limited up to min(INT_MAX/2, sysctl_rmem_max) in kernel.
+                 */
+		rc = setsockopt(sd[i], SOL_SOCKET, SO_RCVBUF, (const char*)&optval, optlen);
+		if(rc != 0)
+			strerror(errno);
 	}
 
 	server_bindMulticast(  0,  99, sd[0]);
-- 
2.7.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
