Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCEF128C44
	for <lists+tipc-discussion@lfdr.de>; Sun, 22 Dec 2019 03:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BMxdYi5xzF5bK7QmI6kFv6CSl6TD8ZTKdmeElXl/ZR4=; b=RhW2aoizrNdhSbQ87KuljlX9w
	wYG3pLL1p9IP1OG3JWcnxGaBBI9h6GP9WZfT/d8LeDe0STkgUs5RswEQGip3wtrw1inODgCGhWt0X
	YZkr8JXx1uAZ5Z+LevsRku8jW6lZharVOzVgDd/bJ/UYztryyFsggYJK4ROCioB0PM8l8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iiqwv-0004jc-IB; Sun, 22 Dec 2019 02:26:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iiqwp-0004ix-Tf
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+rWLm4qe/geEoquTENa3zOzh+G7Wy1pM8ehckVe/2Kc=; b=QPcMYN3aqwq7EAjCriMBrO4Zz9
 uvwmOyt/f9vRcPr8Ff26cyxjM/aDuukCtLj3MIvlXz5Lw3uxYkuBlv2/hvCvEO4HYB2DzJZbwioGZ
 nNdaazsQP+91ZZTvYeDE/KMBi+qUuUzqPtwWr4EjIcjUbN0lLwkrKn0CSrlW1BovitTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+rWLm4qe/geEoquTENa3zOzh+G7Wy1pM8ehckVe/2Kc=; b=hIwPKrmdG8QcHbPs7EHErbao6x
 3VQAHoYbjFwDM+F1qYrK4yWrg2pDFb5jRpd/XrKhkxLrxIIbp3Fq8iShJWj1Z9a/SyYPx3dlCHc77
 EjAB3mVIsY9jgJDJl07pnCWHUSoSDKuMbJScYJ/MbbLzDavyJgCeE7Ws175z/hJoXkeo=;
Received: from mail-eopbgr60065.outbound.protection.outlook.com ([40.107.6.65]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiqwk-00CFOx-GL
 for tipc-discussion@lists.sourceforge.net; Sun, 22 Dec 2019 02:26:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxPjtXDFqddwPEcCH4rZ/7npkj0Z4H8GqhXUpIfkn1CXiuCbOugdjIOns+1oZ0UKDKrYCwo74iXWrpansp9F51V1luYGwVt1zTi9dw9HfAQamYbvKnh1GOlnV42MSknFWAADkT51MIWLCyAOAR9qFuyR22SUsrSvjVZvFBYWnvWP/+71U7XJAPwke0upHsO5WyZTkvIHVunBdh9ZzxLYKW65z+dpa0UlIPWSzd9EDvSckLeDgyeMLzm0Q2dL74sZy3MMartJ6QNEhaSeYPTPmyRmhts9LjJdY3IKUfPa/jLtWpYV9x712u4c7gNRHkPwT0xYU2pS2Lm/EOlBEBl6jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+rWLm4qe/geEoquTENa3zOzh+G7Wy1pM8ehckVe/2Kc=;
 b=L/2016oFJ24T13vguqW2VvrTOtHwvAdrkgWZ4ITDCFWXl0l1n6UB1vZqXZTolUlZXOB4BiD96AUfQjvzzWswGyvo+/towrRhl8hKrFL7cY1G8JnGx89Pk33tEMKW1/pfAKTnzff9xI/bgRUAFUcxKatIjQtFfSkLA+VyvJ4AWMEmrqLmVuhYcoA5eMD77rn4L/bj/UlYjj3fl1dL5gL8oyVpx+pbqKaVqZAE8F6pGBP5FP3OFzHpJDxDVMQlW7QXnzgX40A2g2u8g1jRUDh2+bnU+xLpU5DPVmjvJ1Z5qlrzHH9SKBs8fpwUVAtG+gm63e76uwT4mO74ZcYToerh2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 192.176.1.74) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=ericsson.com; dmarc=pass (p=reject sp=none pct=100) action=none
 header.from=ericsson.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+rWLm4qe/geEoquTENa3zOzh+G7Wy1pM8ehckVe/2Kc=;
 b=dKzMo7F4iuzuVRsQoyAxFYDm97htbyNQTypIvrDEhmm5R02ozQcTJaK8Dg95WmFKcfVRzwUj080jasEcm/fv0+xv7hRP6YVc8eOy5dougDNWjDte+PfrlucB3KJZ00+BZCuUE1JWmW6fa+jWqNJdVgbrRkvOocClvxvznyNdkMU=
Received: from AM5PR0701CA0052.eurprd07.prod.outlook.com (2603:10a6:203:2::14)
 by DB6PR0701MB2632.eurprd07.prod.outlook.com (2603:10a6:4:21::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.10; Sun, 22 Dec
 2019 02:26:11 +0000
Received: from HE1EUR02FT022.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e05::206) by AM5PR0701CA0052.outlook.office365.com
 (2603:10a6:203:2::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.6 via Frontend
 Transport; Sun, 22 Dec 2019 02:26:11 +0000
Authentication-Results: spf=pass (sender IP is 192.176.1.74)
 smtp.mailfrom=ericsson.com; lists.sourceforge.net; dkim=none (message not
 signed) header.d=none;lists.sourceforge.net; dmarc=pass action=none
 header.from=ericsson.com;
Received-SPF: Pass (protection.outlook.com: domain of ericsson.com designates
 192.176.1.74 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=192.176.1.74; helo=oa.msg.ericsson.com;
Received: from oa.msg.ericsson.com (192.176.1.74) by
 HE1EUR02FT022.mail.protection.outlook.com (10.152.10.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 02:26:10 +0000
Received: from ESESSMB503.ericsson.se (153.88.183.164) by
 ESESBMR505.ericsson.se (153.88.183.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Sun, 22 Dec 2019 03:26:10 +0100
Received: from tipsy.lab.linux.ericsson.se (153.88.183.153) by
 smtp.internal.ericsson.com (153.88.183.191) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 22 Dec 2019 03:26:10 +0100
To: <tipc-discussion@lists.sourceforge.net>,
 <parthasarathy.bhuvaragan@gmail.com>, <tung.q.nguyen@dektech.com.au>,
 <hoang.h.le@dektech.com.au>, <jon.maloy@ericsson.com>,
 <tuong.t.lien@dektech.com.au>, <ying.xue@windriver.com>,
 <lucien.xin@gmail.com>, lxin.redhat
Date: Sun, 22 Dec 2019 03:26:04 +0100
Message-ID: <1576981569-27482-3-git-send-email-jon.maloy@ericsson.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
References: <1576981569-27482-1-git-send-email-jon.maloy@ericsson.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.176.1.74; IPV:; CTRY:SE; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(189003)(199004)(70586007)(70206006)(7636002)(8936002)(336012)(44832011)(2616005)(426003)(36756003)(110136005)(86362001)(316002)(956004)(246002)(26005)(8676002)(2906002)(186003)(478600001)(356004)(6666004)(15650500001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0701MB2632; H:oa.msg.ericsson.com; FPR:;
 SPF:Pass; LANG:en; PTR:office365.se.ericsson.net; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 311a3a2f-b084-433e-4822-08d786864f29
X-MS-TrafficTypeDiagnostic: DB6PR0701MB2632:
X-LD-Processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
X-Microsoft-Antispam-PRVS: <DB6PR0701MB263259EE62B1C2AE1AF5C3379A2F0@DB6PR0701MB2632.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8BsDeUAIFXsLQZZpfCBMg9v6VvCAFw8d9hDdZWgU2aQ4TJ4bQ/H32s37bxLtXHowbwPuGNj6hcXWmH74ikyEa3XJQMHGVyDZrD6pEHTC3fyDUxU5fK4cJAi1yLtjkmWvvffx/tEzPwwcmiIaGf9iW/uu/zqF6t3cegvLG6W41/hT/ncU5BGuU0okosU6qPyIDsnciZW3+Di5xZKXGVHZpc5qRPSx/weSwChn74IM4M/WkiiONYDI5EZkUtAed4iftwrP8Ot0cugfXSqCINCi/MTsFRJxFQrSDCRT7ipDKf+WpbROVDXbk1QGln0R5PgXgW0wMIBBGq8pDjnLbKp85JQQjS7qGmlSuy7ofZYWRhzdWiRo31SVYzhVSLEefMQ8x1fggaBgqEy8ct+pyaTrjt1h0bz5MR8astZOsM24mtQlZPzg+p7fA+/dGMcbuuLf
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 02:26:10.7749 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 311a3a2f-b084-433e-4822-08d786864f29
X-MS-Exchange-CrossTenant-Id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=92e84ceb-fbfd-47ab-be52-080c6b87953f; Ip=[192.176.1.74];
 Helo=[oa.msg.ericsson.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB2632
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iiqwk-00CFOx-GL
Subject: [tipc-discussion] [net-next 1/6] tipc: change size of stream
 message chunks
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When a stream socket sends a message larger than TIPC_MAX_USER_MSG_SIZE
(66k) it subdivides it into "chunks" of that very size. However, this
is not the optimal size, as we have seen that throughput tends to
decrease for very large messages. A chunk size of 16k gives a more
stable, message size independent throughput. Hence we change this value
now.

Note however that this value can be changed only for stream sockets,
since this the only socket type which can reasseble the chunks without
considering message delimitation at the receiving side.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/msg.h    | 1 +
 net/tipc/socket.c | 7 ++++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 6d466eb..e4c13f2 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -98,6 +98,7 @@ struct plist;
 #define MAX_H_SIZE                60	/* Largest possible TIPC header size */
 
 #define MAX_MSG_SIZE (MAX_H_SIZE + TIPC_MAX_USER_MSG_SIZE)
+#define TIPC_MSG_CHUNK_SIZE     16384
 #define FB_MTU                  3744
 #define TIPC_MEDIA_INFO_OFFSET	5
 
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 41688da..884dad5 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -104,6 +104,7 @@ struct tipc_sock {
 	struct list_head cong_links;
 	struct list_head publications;
 	u32 pub_count;
+	u32 chunk_size;
 	atomic_t dupl_rcvcnt;
 	u16 conn_timeout;
 	bool probe_unacked;
@@ -502,6 +503,10 @@ static int tipc_sk_create(struct net *net, struct socket *sock,
 	sk->sk_write_space = tipc_write_space;
 	sk->sk_destruct = tipc_sock_destruct;
 	tsk->conn_timeout = CONN_TIMEOUT_DEFAULT;
+	if (sock->type == SOCK_STREAM)
+		tsk->chunk_size = TIPC_MSG_CHUNK_SIZE;
+	else
+		tsk->chunk_size = TIPC_MAX_USER_MSG_SIZE;
 	tsk->group_is_open = true;
 	atomic_set(&tsk->dupl_rcvcnt, 0);
 
@@ -1527,7 +1532,7 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 					 tipc_sk_connected(sk)));
 		if (unlikely(rc))
 			break;
-		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
+		send = min_t(size_t, dlen - sent, tsk->chunk_size);
 		blocks = tsk->snd_backlog;
 		if (tsk->oneway++ >= 4 && send <= maxnagle) {
 			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
