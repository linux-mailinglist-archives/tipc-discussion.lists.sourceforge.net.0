Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 963AE298A69
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Oct 2020 11:30:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kWzlM-0008UO-Oy; Mon, 26 Oct 2020 10:30:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1kWzlK-0008UA-NR
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 10:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SDHoYzL0YTnAuUfQvJQUfsTocgHfAGu4ic2NgywicN4=; b=frA461U41B7SaYM6lcNypKMb/t
 TIsBOuCJtma3sBkgxbRAKKdYKnBXj5dJCFGV9jghZ8iDb93Phpn4OebFzgQYAWLcGBMB4F6KHvWgh
 S5Vc44Do1LpHNqUBkjncGQGGvqVlzaMSvH1BuzEpVN89mUD3VxFJKYTsuGzB4Pir6ZOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SDHoYzL0YTnAuUfQvJQUfsTocgHfAGu4ic2NgywicN4=; b=J
 yZQk+rohCM98gsCZvf+TgptIB5z+LUw/qt854k/CIIcpBoGFKMV8Pi9aqWCLCWzMixvU5TOrEruem
 8yKCdKFyOUMecGeJhUq/oZmkC6IoMTcR9LDMLLqbMa7NZWCtkYROCGlCZKPQRhlZatAsTF2xgwT0W
 gwWFmMz910bkbBNI=;
Received: from mail-eopbgr60139.outbound.protection.outlook.com
 ([40.107.6.139] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kWzlB-007Q3l-Uw
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 10:30:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OApgorNEFljIvh5xnrObvMU9GR536s86az7oAB65c0WbqCLQqbtHelfhpQtMxUKRgsw68ILhnm+hPMGvULD4sCzXR5XcwjLiukgv3Pw4lEUlYLv0ePVxDPfONxbGe0eD/3ZO7iStIuOLOiaVyA+TVMWEsEowrIf1hGvzSAkuVjM7v5LzngJO4Q5OnWkOERG5SFY4kVV1QqGwQNxLsNNJBpYMd5hWAOpNPkBoufc95KJURToFzphsTviv8da4yMlq5+2ENSkzD0jkZZK90AZQO9CGx+XnF6ANyJiMwxtEKyOCFE7BFBm23fqaBtNf/KEH35UuFB5R0ran1kcIozheEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SDHoYzL0YTnAuUfQvJQUfsTocgHfAGu4ic2NgywicN4=;
 b=eBBHbPW5VXVyRaXloabvkUPgvtJdST/7lzLFhZCLAM5Abg9ex+0CM1VEMX4EeUf2dVbu/9/TbTmk/wt5BNit1gMZlHnmOmpe63ww87w9/dPJcQ0zgmZKhIkBTwKId1Qv86KuROfxsxfDuqbEMflwEKnR8WWp6TKeIW+LwDqEhlhaE/FnnsaA7skrO4hHhMgxGVVAeXR9OmJ6GOv4miRYe02vKVAfNyoqgRMMzVu1VIVk2HCnv29+ileVG9HaeIPikpjxVUpkK6QKD0jF20Z7qGR1qKt4ptNrVULpIaKBzjeYRz2i8f3zGBhk5guyhKzIJCbzA0L2+jcxN2D91JtbXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SDHoYzL0YTnAuUfQvJQUfsTocgHfAGu4ic2NgywicN4=;
 b=QImQi5ympX/IgXD27qOgEmMqQ/FQkZUUx7w8YtOfirGq0bX6NiuIZUe9HCwBfLB3eeutC3DmEifI0T26tDHAyKwVts/8V3cKq7rN9cFANE/V5LP6ahbjkkcZcZh5Dm6rGYw4Cv+y3tCGw+XhsGGDgp1MIZXYcQC7JVjN7fo4Bao=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB3PR0502MB3996.eurprd05.prod.outlook.com (2603:10a6:8:3::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.27; Mon, 26 Oct 2020 10:29:38 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56%4]) with mapi id 15.20.3477.028; Mon, 26 Oct 2020
 10:29:38 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Mon, 26 Oct 2020 17:29:26 +0700
Message-Id: <20201026102926.12949-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR04CA0144.apcprd04.prod.outlook.com
 (2603:1096:3:16::28) To DB7PR05MB4315.eurprd05.prod.outlook.com
 (2603:10a6:5:1f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.dekvn.internal (14.161.14.188) by
 SG2PR04CA0144.apcprd04.prod.outlook.com (2603:1096:3:16::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.19 via Frontend Transport; Mon, 26 Oct 2020 10:29:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d3bde27-4c7b-4bc9-48d6-08d8799a0a77
X-MS-TrafficTypeDiagnostic: DB3PR0502MB3996:
X-Microsoft-Antispam-PRVS: <DB3PR0502MB399697A770DCBD01FDEBEFFB88190@DB3PR0502MB3996.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x1a577FBzhnX7EkvypvkFkvfDU0D1mj6M46J9QJmnJA97Z8IdlsWZxtcfEwRCV1N6Mcdj4D1OQE9RBP5rQ1dxDcfg7Zmp5PID2cYjLWBD3w+uKJ6AZ4l5/dlgXaRn81MCHul80TuXT6urgBOdmf50Cvohm4BcCETe7D+XDVAImPqqCAPIMG+8MroZu83LF3E3Z0kdd9O2KkXK473CukGugVT5VAETQks4u/rDbBLjPdZIZ7y2IL4Jl5fSFDdwFMFE4fu3AMHs0hU5b6/cXtY0lf+dA95aDwFE7+fI6D5d6/frUgvUukPlbDTuBWnMPeC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(366004)(396003)(346002)(376002)(136003)(478600001)(8676002)(1076003)(6666004)(316002)(66476007)(66556008)(2906002)(5660300002)(66946007)(6506007)(52116002)(103116003)(6512007)(83380400001)(6486002)(16526019)(36756003)(2616005)(8936002)(956004)(86362001)(186003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: sScynRR+UO6c2ulvJVNa7+X0Jt/IDor8Ajqpv9yZ6KdqCVlUbxEe5vsPyxsleXtmaKwLcD9ZntjOIN+XUNKh+LOVJIDTPok10173LwIhgA/SAFQhkNJst9UgEk6l8hh4GUBmPrjGzEUAinlVzxyXtktR83pfOeYXBZxfinFKxSo7jthpVbZ8LGW9jGTPaXR1Tc9ZgNtQxcgPFDNLHRpFT1MiUqHM/dBi1rurvdMcfTrBqwuoJG6JZp5Byt+20Bw3CpzYlcFrSp4KrFUOXc5ZnYGycDROdIBqWRWeE7xjg9eyuPmDy2vg2jXg98zMCjd1La3UKcHP5KfSVpgjYs1ip+DnKp+km2wuwFg2CMUGWX53ZVY4q7Fvfmk15GQhlZ0DZHBQbf1hvpMK2o1RykoFMIBnkBVB5HgitGbsvDtMoE0o+IhR+9Laj8DpsW5wzQbbOKJDqz+Eza6Tvm7E+pGMdw1ofhC+cVbAHCrGpXjMX/lHM942Oamk05cCQ9UJUWejb2WqfNN59B59aqeLXEDAPweweS0ukOYFUgPwnQ5Jk25ZGrP23U4vYeuZldu3dNOfLMY59jU4fJFkcIbi4BZov7aSD8r+OKjUsc/argDrZC6li/y6/VzYhZeke2QkdBGFe0/NMgJCPQQjO5Wc7ulJwA==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d3bde27-4c7b-4bc9-48d6-08d8799a0a77
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2020 10:29:38.3747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ttvFRpxO2Z9NGl+3PClXDJOeMWE6/9yaqyD32Ft43KjNoanrtZhTlkpr1+fUsARl6wsJPcxESWAWibaZEccoDTljbxYxZBSY4mITvChZEQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB3996
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.139 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.139 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kWzlB-007Q3l-Uw
Subject: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by
 tipc_buf_append()
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

Commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
replaced skb_unshare() with skb_copy() to not reduce the data reference
counter of the original skb intentionally. This is not the correct
way to handle the cloned skb because it causes memory leak in 2
following cases:
 1/ Sending multicast messages via broadcast link
  The original skb list is cloned to the local skb list for local
  destination. After that, the data reference counter of each skb
  in the original list has the value of 2. This causes each skb not
  to be freed after receiving ACK:
  tipc_link_advance_transmq()
  {
   ...
   /* release skb */
   __skb_unlink(skb, &l->transmq);
   kfree_skb(skb); <-- memory exists after being freed
  }

 2/ Sending multicast messages via replicast link
  Similar to the above case, each skb cannot be freed after purging
  the skb list:
  tipc_mcast_xmit()
  {
   ...
   __skb_queue_purge(pkts); <-- memory exists after being freed
  }

This commit fixes this issue by using skb_unshare() instead. Besides,
to avoid use-after-free error reported by KASAN, the pointer to the
fragment is set to NULL before calling skb_unshare() to make sure that
the original skb is not freed after freeing the fragment 2 times in
case skb_unshare() returns NULL.

v3: Fix use-after-free error analyzed by Xin

Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/msg.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2a78aa701572..32c79c59052b 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -150,12 +150,11 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 	if (fragid == FIRST_FRAGMENT) {
 		if (unlikely(head))
 			goto err;
-		if (skb_cloned(frag))
-			frag = skb_copy(frag, GFP_ATOMIC);
+		*buf = NULL;
+		frag = skb_unshare(frag, GFP_ATOMIC);
 		if (unlikely(!frag))
 			goto err;
 		head = *headbuf = frag;
-		*buf = NULL;
 		TIPC_SKB_CB(head)->tail = NULL;
 		if (skb_is_nonlinear(head)) {
 			skb_walk_frags(head, tail) {
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
