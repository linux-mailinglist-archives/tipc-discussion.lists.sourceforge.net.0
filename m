Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A86EB1921D4
	for <lists+tipc-discussion@lfdr.de>; Wed, 25 Mar 2020 08:44:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jH0hm-0002be-DX; Wed, 25 Mar 2020 07:44:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jH0hk-0002b7-OC
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Mar 2020 07:44:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T5YWHf1tqIDlHFW49F+8Mytkqv1Mv9NnmeEylSpeBOM=; b=Sn5TLzAAqGMquZ+7Jz6sjMyfEf
 mtWoTj3usxqmQyondTbhfqj1Ef4hrUadOwr7SeCjGi+DZ+scM986QYE/S6tnWqMVAma2T7cey692M
 gGfy3hvQJalxPFfq4Ml2ubEiCRu9IUj04Xm+Gnu9Pwcf8xHLh+PKihfuE5iw1jrSy4hE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T5YWHf1tqIDlHFW49F+8Mytkqv1Mv9NnmeEylSpeBOM=; b=j
 p/vs4+Zc8fxMvy2U2yxZvgFFFQUuezrZFbeo0nK/v2e5ykOJjfpMRASPL5XVaKHho/BmCEMxwce1h
 YWrqtYsfK5ZTwRGt4u81RYb7aOwYwCuMOQ2Ev3Ewa010PqMKN9cbVZQC2nhYZdrMoomYaEsuvNYbq
 L/iNAUergn6XpDys=;
Received: from mail-vi1eur05on2100.outbound.protection.outlook.com
 ([40.107.21.100] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jH0hX-002fmA-KT
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Mar 2020 07:44:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UaW7ZEhIRnbAdWwmqVVjtUFt/5pPox8kZm01EgBUU12MvL1hg2fq09phfvZsX6ipoP1rodqKvNiqW5OKdEEYMkdUmgndnE+3m6godyMCWeGfYC6ZenMZ/r7qnObbWBUhjGeiTSXSEmiZk3FtwAeFjksFpQkbLXFaDqiOlt21hn1oHfGRHdLzoPIwiCZCGZ5SKwduFUXQMTw/Y4UYoCVMP4FP74CKPY8FkpFVLSs4GNLvaQp29QQwqgtyPOp/GRcvPhQTdb+CBDiz9hm2EAbI+pUeUV3Tc1LQ2xMMu/XBVZCr95YQNWZnueej68S4ukGIlY0E6JYUk7EmuKzd4Jliog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T5YWHf1tqIDlHFW49F+8Mytkqv1Mv9NnmeEylSpeBOM=;
 b=JhA1z8RW2Hel2wGzqxI+//pvT4HrGgBcVS58vccv5jRgglfigPSr+2YkQTgBiYbVB+SGq7m+paGMoDXV0jJo1zv3392YjOjR1Hv8PluBPMP0fTr6xzZuT3AngEfDi3B+M0yO735ciC8QEDd05ubgWacLaFB0GAAJ438MTg5XwriO934JI4J5Qp9/FDPnj8avBQGlRcVaAu6vnNWn9EjRUdNqB3rngsSbvwaG04TfW2DK7zZEGJ6PHkloR8bhLnsJM7SW2qrAl8QGx/eBUWOf0pyh/2GqXtHENZR2kCkpcJUK3GJbXMVM0U1fSZRDuwM+8pDZJtmeCNsXyP1v6U8csA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T5YWHf1tqIDlHFW49F+8Mytkqv1Mv9NnmeEylSpeBOM=;
 b=s6wEek430MG6w+08TdfaAUnugHPdm/VaFZWXeJGMrB9dkvsG+DjnXbSuLaZJMVO7I+F+exsSzJTNUONIDVi1/ZHdbXsgArUr5E6WW8KR8iTlcD5pSx9id20Og4DG/EKtLdZ29W/UV8lcwMxCycKBwJutB8siDmk9S6PP9HSUSPY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoang.h.le@dektech.com.au; 
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (20.176.4.149) by
 VI1PR05MB6973.eurprd05.prod.outlook.com (20.181.32.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Wed, 25 Mar 2020 07:43:39 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec%5]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 07:43:39 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-dek@dektech.com.au, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net
Date: Wed, 25 Mar 2020 14:43:26 +0700
Message-Id: <20200325074326.11399-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: AM3PR07CA0135.eurprd07.prod.outlook.com
 (2603:10a6:207:8::21) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (115.77.48.208) by
 AM3PR07CA0135.eurprd07.prod.outlook.com (2603:10a6:207:8::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.12 via Frontend Transport; Wed, 25 Mar 2020 07:43:37 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [115.77.48.208]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b691378c-c517-410e-479b-08d7d0903b6a
X-MS-TrafficTypeDiagnostic: VI1PR05MB6973:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB6973630837CC78EE058E05BBF1CE0@VI1PR05MB6973.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:538;
X-Forefront-PRVS: 0353563E2B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(396003)(366004)(39850400004)(376002)(66556008)(66476007)(8676002)(66946007)(103116003)(478600001)(81166006)(81156014)(86362001)(55016002)(36756003)(5660300002)(1076003)(2616005)(7696005)(8936002)(956004)(107886003)(316002)(26005)(2906002)(4326008)(6666004)(16526019)(186003)(52116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6973;
 H:VI1PR05MB4605.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4+bqIEcPolsHZhb97S2BX0ylIW3I6VUk0Pj2ydr8VFaP1bCDyft7p+JScx4m9zzCODN4AulBe7akZUnVbLNIanqFC/locdX3FlmeoWtrdYjI8XITx9+jPcHF1gn6/Jpd51i5WpY370pOoYsHJt5XfSDD3Yu/3oH4szB7H9YZZdjv6ZM+o0KTi6umTAOPo64Ckm8LfZzK4RWGciUwjVWFxpqbZ5R3FxMcZVCmzWyc/X8ojtQKtQRU+mJmFB5pFfBXW6yoaRxFTdzzdby1T4+wRQNg1dO5gp/BCnZRDu8GEDbGJdpIOLr2990X3S2ddJjP/LBAEyziOsEBtdqPYlmPRnjQsfFC5k3KQN8qYt036FRk1z10V6IYXSjQ+ntVad+4CnI/SbAl7xfNslQrQEqTZ4EavpTiEvAL1FgF1I39ALgcR/fZSbvidTiWjNep+8Zo
X-MS-Exchange-AntiSpam-MessageData: M13T13TeoBRtHdHJBdbubkyK9HHomMLAl2WNCktxQLgH74hAei67P0ZqJPT1yCWJbEz6fpPhMrMjc2/y0GlW5uc3c6D+dANCsEiJKwyHsbo5ZqD0u4GfNtSaoQceKWyPf6eOFYjamWJY1La8RqBW4g==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: b691378c-c517-410e-479b-08d7d0903b6a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2020 07:43:38.8732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mvWUZmyGOe8V1PWKIzGYyiMzn6Nww/Ur/HEMGwMF91OTRBayib64OoA4F7m5OlLt4eZgl1qFpG0gnwuTOR829hzR6/hyesTOZdIdqx4S0Jw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6973
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.100 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jH0hX-002fmA-KT
Subject: [tipc-discussion] [net-next] tipc: Add a missing case of
 TIPC_DIRECT_MSG type
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

In the commit f73b12812a3d
("tipc: improve throughput between nodes in netns"), we're missing a check
to handle TIPC_DIRECT_MSG type, it's still using old sending mechanism for
this message type. So, throughput improvement is not significant as
expected.

Besides that, when sending a large message with that type, we're also
handle wrong receiving queue, it should be enqueued in socket receiving
instead of multicast messages.

Fix this by adding the missing case for TIPC_DIRECT_MSG.

Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
Reported-by: Tuong Lien <tuong.t.lien@dektech.com.au>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/msg.h    | 5 +++++
 net/tipc/node.c   | 3 ++-
 net/tipc/socket.c | 2 +-
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 6d466ebdb64f..871feadbbc19 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -394,6 +394,11 @@ static inline u32 msg_connected(struct tipc_msg *m)
 	return msg_type(m) == TIPC_CONN_MSG;
 }
 
+static inline u32 msg_direct(struct tipc_msg *m)
+{
+	return msg_type(m) == TIPC_DIRECT_MSG;
+}
+
 static inline u32 msg_errcode(struct tipc_msg *m)
 {
 	return msg_bits(m, 1, 25, 0xf);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 0c88778c88b5..10292c942384 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1586,7 +1586,8 @@ static void tipc_lxc_xmit(struct net *peer_net, struct sk_buff_head *list)
 	case TIPC_MEDIUM_IMPORTANCE:
 	case TIPC_HIGH_IMPORTANCE:
 	case TIPC_CRITICAL_IMPORTANCE:
-		if (msg_connected(hdr) || msg_named(hdr)) {
+		if (msg_connected(hdr) || msg_named(hdr) ||
+		    msg_direct(hdr)) {
 			tipc_loopback_trace(peer_net, list);
 			spin_lock_init(&list->lock);
 			tipc_sk_rcv(peer_net, list);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 693e8902161e..87466607097f 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1461,7 +1461,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	}
 
 	__skb_queue_head_init(&pkts);
-	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
+	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, true);
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
