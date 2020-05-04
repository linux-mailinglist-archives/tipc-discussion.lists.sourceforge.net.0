Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D85601C3888
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 May 2020 13:44:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jVZWi-0004jQ-HQ; Mon, 04 May 2020 11:44:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jVZWh-0004j6-BL
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 11:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=77M1ybv25aI7KzbbU86EojSljv+xWFs/Dp8pJc+Q6Wg=; b=ZyZrZEi/JMu0OfrWY4x1oqyHz/
 tpSVZ6d+aJ+QB2ZA3eIYb1nUxVDdp/r8wFH/NZqRRdhSNir1TN08Iz2QMG6/6Ad4WMAv4nilJJnSI
 JCslFzL2jtqJPRaJocnTUWk28nUWvS9rrX5roExBwYshFpi6jrSImU28zXhqFOkAxRaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=77M1ybv25aI7KzbbU86EojSljv+xWFs/Dp8pJc+Q6Wg=; b=hyGt6Nh3ELf2pxC/hjwL9EXYny
 tjpDldWnXIrKpa3GJjDq6SvoZvxnhoZ60f54HUTUQ7+zWU8OK/MQUluSvG/m9/bD86ievP65bBqa7
 5S160VgXIBwbJ2Ib6wk7hvP9LvAr+NGg+2UQ5NPH1oPtJwdD4z3YZCBr9GT/F2BQPCVE=;
Received: from mail-eopbgr70139.outbound.protection.outlook.com
 ([40.107.7.139] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jVZWe-006gie-Sn
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 11:44:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LUAIRWdgBrxc80HLBD5W0iPI5ozz4xai+CMFA+uwz/G2dtx8V3ji3M8ji867miGgyfBzncXbc6oBoiXt8NU9Uu6J63s4txHHNfn969qaVDIaABrrZKP7T1K5xa4vTuAfL6CGGa6lprpft8oTI4dWC1RvPsI1coBJ5lEsQoOtIccv3XuAx7vqUPJvbILNWaG6VflRxQyR4ksRplWXBfN9XpnoVZ8AI1xAEnSZE+PA7NI3K7w+jdTmyUIyHCf6MdseB2u9ChnVPALhKg/SmJztrtdfBU/ORtFz7yvrm3sMmT3yuLTq9lM6IctFnV/mZlnfGp2SON80KehzwTYYWQhcwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=77M1ybv25aI7KzbbU86EojSljv+xWFs/Dp8pJc+Q6Wg=;
 b=BFKbSWhoOFabkqkbZ39FYVPZlH27/xYI8Oj/Q6z25aqmXLc47oCO8GrS+0XWad/tcpe15UbJH7e9TmORMF6o1f7r5t5HGBFV2VSxvm8R8SWnWmIRVst/Ei6StauQpD67HiBF8086HxrjpxfNWq+xEiFXspfgq+c7mAY7udcIhLg21OmDhgY5XwTJY21RbTWAnpP+thCa0RsBLgxQs138SAxYMbehATI5rGDwOgH53o/ZF+GcM2iGFOatk1c0shiVI5ttBtPGaWYqH/v9BTs8pYU7PiIT6Vxj0NFcmJUDWo9DVoboCMmByNLcC5Ks+B/qDFdEOnku4otgWMo4ijGC3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=77M1ybv25aI7KzbbU86EojSljv+xWFs/Dp8pJc+Q6Wg=;
 b=jdQhwnu280tswvzZitN4XnQeTTxEdbyaphMyBzgTiwnzoe69BLQkgmuzc4uK6f5R3cgUe+Hqf+zpuLc05ZLCuEAq1bQM6XkQWrl7YxrHnq/SxDHCXLpD1IP/q2hUwh9KDG8qlYr5BtOB5lK5xbErElsD2raDhLHLHBEfiKMOVwE=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4021.eurprd05.prod.outlook.com (2603:10a6:209:1f::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Mon, 4 May
 2020 11:28:40 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2958.029; Mon, 4 May 2020
 11:28:40 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon,  4 May 2020 18:28:26 +0700
Message-Id: <20200504112826.11186-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: HK2PR02CA0211.apcprd02.prod.outlook.com
 (2603:1096:201:20::23) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 HK2PR02CA0211.apcprd02.prod.outlook.com (2603:1096:201:20::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2958.19 via Frontend Transport; Mon, 4 May 2020 11:28:38 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35eb8225-85a6-4af1-e227-08d7f01e4b7d
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4021:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB40211394322A73EC01A5CA7EE2A60@AM6PR0502MB4021.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03932714EB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jq7AHIs4+XzNFNn5fAAzYR4vRohiwqaIUFUupswD23cMZ2j5VvSM3K86zsz+mTv4Hw+9/iNldKzRlQl0El12ovjT2OLO8AXtv1EyzFjBeexpYaL9fNfi4qKSDLZ1lXPMk2rMX4SPg8OGE3Hr2Fyxna244A692isO2A61ycXFnt+s76GuckXTD+mM12OgJQpT8uU03oiG3qc1YlZP4Nw8MF3IeyOFxCaUZHfQJ1bRhpDIwffS19/rm0asB/Fk9hNjJ6+8Ed3ME07FzB5FMngPm4GnGmLnuU7NYhhGnBd+p8BIFGTdXpGaaQ8Dgyk61MA6MWRHn+j9uP5liYs0gfwcUcfoYwHj8Kw6MOGGLmK4KY4uQ3LlMNHefQSrpl0JCTNiDZb23a0DooxW4BNFstOjoB4ta2mNrGSyX8nbQ+E4GXN7F/diFSNDeQBforukD1/W
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(366004)(396003)(39850400004)(2616005)(26005)(16526019)(316002)(956004)(36756003)(8936002)(7696005)(86362001)(6666004)(186003)(107886003)(103116003)(508600001)(8676002)(1076003)(2906002)(4326008)(5660300002)(66476007)(66556008)(55016002)(52116002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 5Ghs+o/215j+VzPlzHErcypQ4lSTTOD2CgKqmwrGQLRepw0EFIFdswMORAuslzriMoKttl7RJrwFvoUYtP38oibQb7kzibQzBJpwXgmxryoF/PkbW9AdFhzUxycLo4QAwmPc8lZ/tB1wniTC5A15bVOAukZu5TltyDikk17IxAPA0mKfrOIsVrq9c37+bpARHY+oouKVFqDgC7r5sz4j3ncFuXsoSk09axjMAt/S0hINKYAk55uBpYdMCBpa69B7mSE2P0HPuE3RUkEx0mmqB5YpvxAWlyinGSb1kMslpMxHxvJfSHdIjuAx81wAUucPpWl6ll4BpqNSQS6O50yTdWaLrAcyfdTSzgM16vQ18skcMcexLmw37FFwroqjbJnYtVwkMJYjDJ1uwJYF2p+KHxpJiRDkIUBn4y1+OmIPu4Cp46r5f/cKzL0zmhDucGDVcJ0A6Zckm5Y/HCa2SZsiCywFpsKFHrxmZPA5+nc14syzD7OFYzlZSeYgrF9O58h66J/NDD2dVAfJm4lX399hnCBfLs4T4ghDs9Yq9j8hmjR82mzXN18XvAbkRy9PNnh+mfLQKsRdKwNxTIUG9EIcO/1InfSOSf4PBNoV8fbYJx2bc/tAPY929i3PoZfvvAtnMAtJzD+mVyp5ZqDx8Avee4bJcvMdGU6PPnyVnAt6PBwNRMparaj8bfAUR8gi/80ATiVrvF/6wCsmW1znAIXus1iF44NK9peFpXNph+Rge4fKWKocxrlN9u9wzpAUxuwWjIIcIi3Tm0samZkIGxTte49iAEpL17OdJOqASf8ECbo=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 35eb8225-85a6-4af1-e227-08d7f01e4b7d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2020 11:28:40.6408 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4iuXNdCT33Gqz+nDARQGM2b9n7o6rCyICt0UdRat+u3GVs3WGrOeE2xLhNmajrGjjQSqBBSi4+GrO2ia5oZYmHSM23++CnKBYRhUd4kxLLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4021
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.139 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVZWe-006gie-Sn
Subject: [tipc-discussion] [RFC PATCH 2/2] tipc: add test for Nagle
 algorithm effectiveness
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When streaming in Nagle mode, we try to bundle small messages from user
as many as possible if there is one outstanding buffer, i.e. not ACK-ed
by the receiving side, which helps boost up the overall throughput. So,
the algorithm's effectiveness really depends on when Nagle ACK comes or
what the specific network latency (RTT) is, compared to the user's
message sending rate.

In a bad case, the user's sending rate is low or the network latency is
small, there will not be many bundles, so making a Nagle ACK or waiting
for it is not meaningful.
For example: a user sends its messages every 100ms and the RTT is 50ms,
then for each messages, we require one Nagle ACK but then there is only
one user message sent without any bundles.

In a better case, even if we have a few bundles (e.g. the RTT = 300ms),
but now the user sends messages in medium size, then there will not be
any difference at all, that says 3 x 1000-byte data messages if bundled
will still result in 3 bundles with MTU = 1500.

When Nagle is ineffective, the delay in user message sending is clearly
wasted instead of sending directly.

Besides, adding Nagle ACKs will consume some processor load on both the
sending and receiving sides.

This commit adds a test on the effectiveness of the Nagle algorithm for
an individual connection in the network on which it actually runs.
Particularly, upon receipt of a Nagle ACK we will compare the number of
bundles in the backlog queue to the number of user messages which would
be sent directly without Nagle. If the ratio is good (e.g. >= 2), Nagle
mode will be kept for further message sending. Otherwise, we will leave
Nagle and put a 'penalty' on the connection, so it will have to spend
more 'one-way' messages before being able to re-enter Nagle.

In addition, the 'ack-required' bit is only set when really needed that
the number of Nagle ACKs will be reduced during Nagle mode.

Testing with benchmark showed that with the patch, there was not much
difference in throughput for small messages since the tool continuously
sends messages without a break, so Nagle would still take in effect.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/msg.c    |  3 ---
 net/tipc/msg.h    | 14 +++++++++++--
 net/tipc/socket.c | 60 ++++++++++++++++++++++++++++++++++++++++++++-----------
 3 files changed, 60 insertions(+), 17 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 69d68512300a..732cd95b5c75 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -235,9 +235,6 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
 			msg_set_size(hdr, MIN_H_SIZE);
 			__skb_queue_tail(txq, skb);
 			total += 1;
-			if (prev)
-				msg_set_ack_required(buf_msg(prev), 0);
-			msg_set_ack_required(hdr, 1);
 		}
 		hdr = buf_msg(skb);
 		curr = msg_blocks(hdr);
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 5f37a611e8c9..44543892af11 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -340,9 +340,19 @@ static inline int msg_ack_required(struct tipc_msg *m)
 	return msg_bits(m, 0, 18, 1);
 }
 
-static inline void msg_set_ack_required(struct tipc_msg *m, u32 d)
+static inline void msg_set_ack_required(struct tipc_msg *m)
 {
-	msg_set_bits(m, 0, 18, 1, d);
+	msg_set_bits(m, 0, 18, 1, 1);
+}
+
+static inline int msg_nagle_ack(struct tipc_msg *m)
+{
+	return msg_bits(m, 0, 18, 1);
+}
+
+static inline void msg_set_nagle_ack(struct tipc_msg *m)
+{
+	msg_set_bits(m, 0, 18, 1, 1);
 }
 
 static inline bool msg_is_rcast(struct tipc_msg *m)
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 4e71774528ad..93b0a6159cb1 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -119,7 +119,10 @@ struct tipc_sock {
 	struct rcu_head rcu;
 	struct tipc_group *group;
 	u32 oneway;
+	u32 nagle_start;
 	u16 snd_backlog;
+	u16 msg_acc;
+	u16 pkt_cnt;
 	bool expect_ack;
 	bool nodelay;
 	bool group_is_open;
@@ -143,7 +146,7 @@ static int tipc_sk_insert(struct tipc_sock *tsk);
 static void tipc_sk_remove(struct tipc_sock *tsk);
 static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dsz);
 static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dsz);
-static void tipc_sk_push_backlog(struct tipc_sock *tsk);
+static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack);
 
 static const struct proto_ops packet_ops;
 static const struct proto_ops stream_ops;
@@ -474,6 +477,7 @@ static int tipc_sk_create(struct net *net, struct socket *sock,
 	tsk = tipc_sk(sk);
 	tsk->max_pkt = MAX_PKT_DEFAULT;
 	tsk->maxnagle = 0;
+	tsk->nagle_start = 4;
 	INIT_LIST_HEAD(&tsk->publications);
 	INIT_LIST_HEAD(&tsk->cong_links);
 	msg = &tsk->phdr;
@@ -541,7 +545,7 @@ static void __tipc_shutdown(struct socket *sock, int error)
 					    !tsk_conn_cong(tsk)));
 
 	/* Push out delayed messages if in Nagle mode */
-	tipc_sk_push_backlog(tsk);
+	tipc_sk_push_backlog(tsk, false);
 	/* Remove pending SYN */
 	__skb_queue_purge(&sk->sk_write_queue);
 
@@ -1252,14 +1256,37 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 /* tipc_sk_push_backlog(): send accumulated buffers in socket write queue
  *                         when socket is in Nagle mode
  */
-static void tipc_sk_push_backlog(struct tipc_sock *tsk)
+static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack)
 {
 	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
+	struct sk_buff *skb = skb_peek_tail(txq);
 	struct net *net = sock_net(&tsk->sk);
 	u32 dnode = tsk_peer_node(tsk);
-	struct sk_buff *skb = skb_peek(txq);
 	int rc;
 
+	if (nagle_ack) {
+		tsk->pkt_cnt += skb_queue_len(txq);
+		if (!tsk->pkt_cnt || tsk->msg_acc / tsk->pkt_cnt < 2) {
+			tsk->oneway = 0;
+			if (tsk->nagle_start < 1000)
+				tsk->nagle_start *= 2;
+			tsk->expect_ack = false;
+			pr_debug("tsk %10u: bad nagle %u -> %u, next start %u!\n",
+				 tsk->portid, tsk->msg_acc, tsk->pkt_cnt,
+				 tsk->nagle_start);
+		} else {
+			tsk->nagle_start = 4;
+			if (skb) {
+				msg_set_ack_required(buf_msg(skb));
+				tsk->expect_ack = true;
+			} else {
+				tsk->expect_ack = false;
+			}
+		}
+		tsk->msg_acc = 0;
+		tsk->pkt_cnt = 0;
+	}
+
 	if (!skb || tsk->cong_link_cnt)
 		return;
 
@@ -1267,9 +1294,10 @@ static void tipc_sk_push_backlog(struct tipc_sock *tsk)
 	if (msg_is_syn(buf_msg(skb)))
 		return;
 
+	if (tsk->msg_acc)
+		tsk->pkt_cnt += skb_queue_len(txq);
 	tsk->snt_unacked += tsk->snd_backlog;
 	tsk->snd_backlog = 0;
-	tsk->expect_ack = true;
 	rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
 	if (rc == -ELINKCONG)
 		tsk->cong_link_cnt = 1;
@@ -1322,8 +1350,7 @@ static void tipc_sk_conn_proto_rcv(struct tipc_sock *tsk, struct sk_buff *skb,
 		return;
 	} else if (mtyp == CONN_ACK) {
 		was_cong = tsk_conn_cong(tsk);
-		tsk->expect_ack = false;
-		tipc_sk_push_backlog(tsk);
+		tipc_sk_push_backlog(tsk, msg_nagle_ack(hdr));
 		tsk->snt_unacked -= msg_conn_ack(hdr);
 		if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
 			tsk->snd_win = msg_adv_win(hdr);
@@ -1544,17 +1571,24 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 			break;
 		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
 		blocks = tsk->snd_backlog;
-		if (tsk->oneway++ >= 4 && send <= maxnagle) {
+		if (tsk->oneway++ >= tsk->nagle_start && send <= maxnagle) {
 			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
 			if (unlikely(rc < 0))
 				break;
 			blocks += rc;
+			tsk->msg_acc++;
 			if (blocks <= 64 && tsk->expect_ack) {
 				tsk->snd_backlog = blocks;
 				sent += send;
 				break;
+			} else if (blocks > 64) {
+				tsk->pkt_cnt += skb_queue_len(txq);
+			} else {
+				msg_set_ack_required(buf_msg(skb_peek_tail(txq)));
+				tsk->expect_ack = true;
+				tsk->msg_acc = 0;
+				tsk->pkt_cnt = 0;
 			}
-			tsk->expect_ack = true;
 		} else {
 			rc = tipc_msg_build(hdr, m, sent, send, maxpkt, txq);
 			if (unlikely(rc != send))
@@ -2092,7 +2126,7 @@ static void tipc_sk_proto_rcv(struct sock *sk,
 		smp_wmb();
 		tsk->cong_link_cnt--;
 		wakeup = true;
-		tipc_sk_push_backlog(tsk);
+		tipc_sk_push_backlog(tsk, false);
 		break;
 	case GROUP_PROTOCOL:
 		tipc_group_proto_rcv(grp, &wakeup, hdr, inputq, xmitq);
@@ -2181,7 +2215,7 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
 		return false;
 	case TIPC_ESTABLISHED:
 		if (!skb_queue_empty(&sk->sk_write_queue))
-			tipc_sk_push_backlog(tsk);
+			tipc_sk_push_backlog(tsk, false);
 		/* Accept only connection-based messages sent by peer */
 		if (likely(con_msg && !err && pport == oport &&
 			   pnode == onode)) {
@@ -2189,8 +2223,10 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb,
 				struct sk_buff *skb;
 
 				skb = tipc_sk_build_ack(tsk);
-				if (skb)
+				if (skb) {
+					msg_set_nagle_ack(buf_msg(skb));
 					__skb_queue_tail(xmitq, skb);
+				}
 			}
 			return true;
 		}
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
