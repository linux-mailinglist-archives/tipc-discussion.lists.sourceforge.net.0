Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBF61EF577
	for <lists+tipc-discussion@lfdr.de>; Fri,  5 Jun 2020 12:35:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jh9hV-0005lh-OK; Fri, 05 Jun 2020 10:35:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jh9hT-0005lZ-Fg
 for tipc-discussion@lists.sourceforge.net; Fri, 05 Jun 2020 10:35:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lyhlb6QvC34m7Ha4OG2a6j+pWR5gz6nHcN1gNqbLE0c=; b=J/q2eq5coEIKf88z88tA4m+c7m
 jURG6XTwttqqb4H2f2cS2OFcAJgB7nCBNYFhX4ARCuCHwlWD10aweJgL7Tifdj25bohBVYQyc4mSe
 5HnoMFYAr4oh3gGY9jvl8PcRmnPGBsDdISuURaMDpdk95d+uGcxlvCxghWjQnHV4QIeI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lyhlb6QvC34m7Ha4OG2a6j+pWR5gz6nHcN1gNqbLE0c=; b=m
 jWFZJqJTuzr+Kb2prxhlvAxlVODCEL9BiWnHLzawO12h0D/+zQ3Nq3iR4bmqpUsO9u+QVrH4sFpct
 qD8Pa+O5UBjimUkAg0gOWxk/Q6QccPzddrNYxL+eB195HDsrBt8Hn5Nr1lUlpK0rObOjJYDNPSlTW
 wuBDgnMRxsPzp81k=;
Received: from mail-eopbgr20139.outbound.protection.outlook.com
 ([40.107.2.139] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jh9hM-00ClAt-Ir
 for tipc-discussion@lists.sourceforge.net; Fri, 05 Jun 2020 10:35:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XaXHfPldIPpZx/TQKsh2KvF0D98Cj7rB6z9ZuTLTy1Fg7RQjqxVPmzRfUgNLUSJiZRxpvoz4eN0M3ne96uMvnOo68JraMtkR0LJtRfV/O9py7jL/TsAYD9SAdq8WaWFaTL6e6ZneAyOSo568+j+xrQFeibulOEnTpi96QDah+AnYgAMipQk8LxHmg2KxEKZcPwfysERk9bPMKfVjyadX2a8PyPN/5kW53wld4oeaGtFipK1EWAyAf2Pf08ZiwO4yJal8QAuvluLzbmZluWIcZIzHRCP3EXE1m4E4qSCr0yvbO2Q6S00KIcVeyCB1h5X2L7H0pVOsGU4vqGyLNW7WvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lyhlb6QvC34m7Ha4OG2a6j+pWR5gz6nHcN1gNqbLE0c=;
 b=kj64KplismVzrVYgl0J+VkFKuyH3p5A891AvaLSSJpuzLzzGeIl03oBr0HVawFTidtX/N23cuVrD1xQX/tuonQA5LfkXlxI49FUxzs0Ehkl0XeMI80U1j9VxT9zOCg+boqmWxstCWGc5W/qBrGcgGJJmb2KOeK6TnSdCuzwToIHkVZSiu9prnyjVRvuzhPD43ygEc/c9a08gaz3e7VMCn9z0vvGNwKrQxtLzh17+iyqaGyBdGDJwgi1QmYT215GIyzzeb+t48BzIRGgpu7vOiY7J456J9DGYofYW/8DGr7ISZ/6W7366PJGDAlXVmgNnOrwYgpC2/rsweuqX5gr0+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lyhlb6QvC34m7Ha4OG2a6j+pWR5gz6nHcN1gNqbLE0c=;
 b=RcKHZ/OvzmmBrt3iIUnQTVVGjiBq2ba3Tzxz9sEbMUJUwPXiGqZFzOzbzH8kk6JHJ80AaQhuIO4W7qYrONvwHZlRY+hDu5JgxgcHZjRnb0lvGjN4UNeILS4xejUGQo1vFaXtTm8JCAVymqFDR6zzqfUFvNCbULocsoKIur5+rpo=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4024.eurprd05.prod.outlook.com (2603:10a6:209:19::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Fri, 5 Jun
 2020 10:35:30 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 10:35:30 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: maloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri,  5 Jun 2020 17:35:23 +0700
Message-Id: <20200605103523.3603-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: SG2PR0401CA0005.apcprd04.prod.outlook.com
 (2603:1096:3:1::15) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR0401CA0005.apcprd04.prod.outlook.com (2603:1096:3:1::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Fri, 5 Jun 2020 10:35:28 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c40ed56-8729-49f8-d700-08d8093c2b44
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4024:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB40240A83AA358314D211A0CEE2860@AM6PR0502MB4024.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 56EiYHYlV8EWDWZb1hAB5Ry1LiZtH8GBkMiMEQvOpIEXkKaW3nPtsBba5oE6m3MsLzHNj4p7u27e4JQZ6kDJr+G/x53DMHA6qpQDqcfdaunU5S4PG6TJ9wOwamtD419A1gx2Fx0L9ANMwHLwvNXzKaonn+JDWQUL61Fi5aslTw6m8DdT6kkNw3hLzPjvEhaUjfqwnu/6QGvrX2aM3n6mFAu9oNGg3SyN3nhXq2MIyZryOqxGZnwWZMTajCFKEX0afe14W8ENji4ORnsr6CTXQX5a8uKoC7eOn8aLHT1lWAhkdWsqc0Oq7dpe8fqv9tEm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(396003)(136003)(39850400004)(66476007)(36756003)(83380400001)(107886003)(66946007)(66556008)(8936002)(1076003)(8676002)(478600001)(4326008)(316002)(2906002)(103116003)(86362001)(7696005)(5660300002)(26005)(16526019)(55016002)(186003)(956004)(52116002)(6666004)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: xg+oSDu3881fc7QB4u74g9MgqIXSv/KOSzwk0dTw9sA2l34CESLj3xVMZNvz8uK9dkrddvdX5sDLmt1GIcRLY1olE46UFKZSLXm4/HNRiW8L4fUxoUAyC+pLGLP2ObuRTWP9M+XT5gX46BpzzW2Jdp6cNyo9TDE/HIrEJyvps/5KPDhT7aQiwkyOMJShfbPspdUFFsnlHI9XnYnoJhXQKmlthtenCEP+T0mG1ksmDTLtkODqumESDRNC7hcriVkTY4g9RhU9vq6xlN/Sp1OOrIOKQtYQBKrVZHYrOVNSwQg/v5Gu3/D67GkbCD7IheCMsz3KDdschpRoXR49Y7Ejsq/Ukk8UaKuVTEKhNbV0ynFTmbtJJfjHXHpyA5H6EwBDyCaKD4zBo767Spvz2emIu4TqcSB6CU+uNjmSAg/tkGdaNzHUDQTAGAeTefYFQ6YjsfFQEzghtLs08RJqwypYuLFhn+LZJK9RTZ8wf/6GooY=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c40ed56-8729-49f8-d700-08d8093c2b44
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 10:35:30.4343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ey1DgOvHMDDneseZ1p/50y78aptnByV0ljqSG3HzHopBSDaFcoEqEMVnEZ2j45rQAB5LNNXXXimvSg1oY78LmQfM9+ZrS4RFc3hfl80rryM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4024
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.139 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jh9hM-00ClAt-Ir
Subject: [tipc-discussion] [net] tipc: fix NULL pointer dereference in
 tipc_disc_rcv()
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

When a bearer is enabled, we create a 'tipc_discoverer' object to store
the bearer related data along with a timer and a preformatted discovery
message buffer for later probing... However, this is only carried after
the bearer was set 'up', that left a race condition resulting in kernel
panic.

It occurs when a discovery message from a peer node is received and
processed in bottom half (since the bearer is 'up' already) just before
the discoverer object is created but is now accessed in order to update
the preformatted buffer (with a new trial address, ...) so leads to the
NULL pointer dereference.

We solve the problem by simply moving the bearer 'up' setting to later,
so make sure everything is ready prior to any message receiving.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/bearer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 34ca7b789eba..e366ec9a7e4d 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -316,7 +316,6 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 	b->domain = disc_domain;
 	b->net_plane = bearer_id + 'A';
 	b->priority = prio;
-	test_and_set_bit_lock(0, &b->up);
 	refcount_set(&b->refcnt, 1);
 
 	res = tipc_disc_create(net, b, &b->bcast_addr, &skb);
@@ -326,6 +325,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 		goto rejected;
 	}
 
+	test_and_set_bit_lock(0, &b->up);
 	rcu_assign_pointer(tn->bearer_list[bearer_id], b);
 	if (skb)
 		tipc_bearer_xmit_skb(net, bearer_id, skb, &b->bcast_addr);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
