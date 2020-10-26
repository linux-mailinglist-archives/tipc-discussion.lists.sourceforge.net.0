Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AD9298A9F
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Oct 2020 11:44:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kWzzA-00064s-Ob; Mon, 26 Oct 2020 10:44:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1kWzz7-00064j-Hd
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 10:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PGrsTduW3ytne3PU14cmGwB7wp0AN03mwK2yzNDhAWg=; b=eSgVaiKeSuMLvR8CQJji+9gywI
 sBuc1CPjBzzTTsd8YXcqYyZsSTwrS2kNk3AhOIEVg8PEIObn1gBAdCDPBFBIo6NZOPicxXY3Lps5A
 L8SgYwpL8tk94ewM/CBxZZCDXVALCZD53KuCQ61Cpndb03Ia3V79lh2sTRBlb7lIQZtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PGrsTduW3ytne3PU14cmGwB7wp0AN03mwK2yzNDhAWg=; b=X
 Zjknw1I58EjqMtEHmKLKCvWqLcJaRJWs9skwGtRCv2vMZYon5OTcnoc4ukfRHuLwHedTtfDrMfI9/
 2J+rR71hQfg7yUQVM9Bct7v8w3d1AvqLgeLGT5dC9owf8In+rkVzUxNsqHEjC5Gm3D1ZAwBXZQNO2
 EdNbdjYFUntdkcdc=;
Received: from mail-vi1eur05on2090.outbound.protection.outlook.com
 ([40.107.21.90] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kWzyq-00E408-6t
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 10:44:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXbnaNY9cORyh7E0mDtY5XZGmaZtv0U+6PhZVd1zL6mCOnZhjD/v0GETmguLJ0czhRdqDAthDIp8WSzxmBqG8daPbhB1oex+t2HeWfFWKVTywqt/dp0eRxszkiFz51M25jli4nYHJW/SDXCsqzNK+2XAQLle3FlqXL+pjvROLgPeuwHqiXOCdEWcbpwIiXDJ8cMn3D/SVyyQtiJ4gf7xAMMpRFI59CIqwUUO02sbLbdKMtCAzaLVI2KQxSk4q61njjEgMg2ggLpdunIaMVe7lgwmX4djIEYC15sFjaP2z6wJDxjxahmSMq65sx5ER4WrDD+tnPMyF0GMGcf9cYU5DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PGrsTduW3ytne3PU14cmGwB7wp0AN03mwK2yzNDhAWg=;
 b=TUVMO2DrlqCJSCGbI6mcXGLwk6+20qKg2PBT3r3uwj/3vlo+kHmRXj2l65KG4WM6ERsVbbouUXPTmS9a1lr05TXKTfBl22YruO8PoUb8iFxvS5NanbUpbFSMXuggxjPuVnn3cwTowJzgRqDcsEoeTqFRTF0GC5UelSiR0bvdP4dYReF+a7A2PynEMvdDDmExFwPSkP17wGJBseCFEbM7G3H3lote4fXjJOqy3c1Jr18W4uRXmx45hhY/j5LAgjpZZqfOQ3seqpE49eBdZEcnC9tTpwum4YbvL9EbwmWgrsjHlcE8LHVzuPTzoXdJJE/LO8YBVhUG/qrYkPTv9IffgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PGrsTduW3ytne3PU14cmGwB7wp0AN03mwK2yzNDhAWg=;
 b=c9Za+gdkluVerIe0Godj91KxezY94RKoTGf5eX1HkSBRMStLA3FvLu1ojVOT1F5gVhLQCdCB7GkYn3P76s7qdX4Em43ur1WIFvkT0mwZGZqzT4C5N5qH6hSsU5EzR86TXYzNOzVy0Ew0WSj4ya53E3H5tc80hr11FKiMb197qaQ=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DBBPR05MB6284.eurprd05.prod.outlook.com (2603:10a6:10:c7::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.20; Mon, 26 Oct 2020 10:43:46 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56%4]) with mapi id 15.20.3477.028; Mon, 26 Oct 2020
 10:43:45 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 26 Oct 2020 17:43:33 +0700
Message-Id: <20201026104333.13008-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR06CA0151.apcprd06.prod.outlook.com
 (2603:1096:1:1f::29) To DB7PR05MB4315.eurprd05.prod.outlook.com
 (2603:10a6:5:1f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.dekvn.internal (14.161.14.188) by
 SG2PR06CA0151.apcprd06.prod.outlook.com (2603:1096:1:1f::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.19 via Frontend Transport; Mon, 26 Oct 2020 10:43:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 828ccb81-c774-4a8a-2063-08d8799c0390
X-MS-TrafficTypeDiagnostic: DBBPR05MB6284:
X-Microsoft-Antispam-PRVS: <DBBPR05MB6284CEA57C1B6FC1C0FED7DC88190@DBBPR05MB6284.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zdwkzPWFOAKbx10lCkLiPKyy3gjZp5PgIe5i0oY8uVmaBELonrrYLH+84ziettMRk9wEWon1XLc3bKX5IzGzZeTSQ9d9wH3c5pz9RBrPOk9LKJa2jBDA4TDLeBZkVE8aDR/sxvcEVQq6XTNz+F63WmqMUEjMf8FToEaxY+JGk8K6glN1MlgfGtKuj9C8ESQkzT+G3x2vXhz5Bzne5GG3cDzWxjbpRaEuSjngwyrvsXr3+RzBCfDrNblwMqrCMsju7qO3G4zdUagwdY8uzdNTjVLKWOtfekJXgv5gKJ5l7Y7F5Rn70zfQ7kqlJEbFCRgC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(39850400004)(396003)(376002)(66946007)(86362001)(66476007)(6506007)(83380400001)(316002)(1076003)(5660300002)(8676002)(2616005)(6486002)(2906002)(6512007)(66556008)(36756003)(8936002)(103116003)(956004)(26005)(52116002)(6666004)(16526019)(478600001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: QSdzg4mOMXQ/sb4yqu6gID18oijOS3o3k3//VRi0psJOEJV202VYOjZx8AKI1JtV8WpCE2tCquWKTXm1Dq20uFe8RDxb1zYO3b2CNQW28Je1cqklRSVPdrF8K8iLhzemWPg61OXnsDn0O8cg8tz693M3TP/UrNkXj/STiEDR+ne1xvOUKNYNFNB+uDGlvPWul1G8aFTkCEqCHUO4RQDjSgV1mmYP5M7BfxRIT7OOLYMP9NaUSg1Mekzgy1ho+mnFoSizGc0XM2JLBlnDyujhfGnrZ44w/agvgLEEth7ERF19H14NCR0egazWrcGmcAgj9lxkzflu5+3jLBhlcLROESl7BbWHkf5Zh0nq9n3TH04h9zdX9iMRhFgR2hFNNRzsaygZfMt5QykGMcMd1s1gQ+J/R6tAFPdmPNrCqF3RL0zC7O99nEpYlMFu1vQMCiV4ALXJSbhzTDhd7EG2oh8GhzpvCmpEMdv+pPhjBd9A7XKnNgp2UYpwbXBhXtcNju34r3vmH1lBoIKEecOH88nsXRwu265N5JQrjT7SLEKa1eGmdQdRnJ9tWp3xciWr7yU6Z/9QWzjgmhJDWKQRO7Pp7VAcLfHxBflLyYeS594FxzjD2Lgb65KsQydQ+N90/v48/QA7G9QV8xBxZj0lyjggLw==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 828ccb81-c774-4a8a-2063-08d8799c0390
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2020 10:43:45.7629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: geIEq9HVo6ZIN6bAPNidx7kz0wP45CGGZFHz1l1ysF2whQDpAP3ewwtYwIJW7RkRvZfSYJTcW8fwZwMAwHUGw5QebbR8qSQOaa+xlJq1a68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR05MB6284
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.90 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kWzyq-00E408-6t
Subject: [tipc-discussion] [net v2 1/1] tipc: fix memory leak caused by
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

Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
Acked-by: Jon Maloy <jmaloy@redhat.com>
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
