Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 109DE1EB4B3
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 06:47:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jfypW-00011K-5W; Tue, 02 Jun 2020 04:47:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jfypT-000118-9d
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 04:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uhw9xar2tS4SRbBVpHbUBKQJCFT9VNz3d4p58CvvexY=; b=FLc0N+Oke72xtPHRRQ7TU+YjI+
 iEVWlgQtivuahBQQl/58MVaBuTaUNqp2OIIqOVxdJIhlAHXY8LbJbn3g2L7vEjkYFg8aXI8FPUy9+
 nQwh7elmypX3LPnP3AP07Y0LxYRUkbaDDaMq0Ec//0dnrWQaJ8Oys6lPySJqKJ4Un3jA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uhw9xar2tS4SRbBVpHbUBKQJCFT9VNz3d4p58CvvexY=; b=OP0uA7dNOG2eJTZ7XzjSfYl6Hy
 55m1ddcEJReAFUcyCcLGdkHv7MJmHiVbwk9IkaMmfEUImk7jklmp5MDTkGWs808gfy9iYC9HSGxmw
 R9VLcids9AaQacy1cvAJyOtA8X5GwCZUL+HxHLsOjXusHyU+r8/xhLxFF78gpSZU2lpY=;
Received: from mail-eopbgr70127.outbound.protection.outlook.com
 ([40.107.7.127] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfypS-008xpI-4D
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 04:47:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e4Dk3dxr7RRTStIQBiGvxE2zam6+gJh6a0SYLS6grYzHjGWE8obT/ojhVHjmcLzucprb6ZUb0VCJKQe9HZIxdNeLHao4NWMirc2mZnKQ50gdh6sR3BVFXnEjMsRUCmr/6UEj9UUWY1EcrpYPzc17SJr0HHJILE286hOScBDpRd/j8Ao3pt/HeAMrX+h8R85kqkY/R5SemDkglq9h8G/H5F46bfLZNTz6w2BTspyA0/9Ul4kTfreM8Sovd/0/j3osD2AQu/NNJmiZftIuUPyms48LRyZw3wbRthOWy2xd8yOJ7ZB/+sFeMO9LW9JWovSLz8b/dJbqOkk+ewqJrrMM8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uhw9xar2tS4SRbBVpHbUBKQJCFT9VNz3d4p58CvvexY=;
 b=j3Yk0wul0cZt9HKEqTYIS4VF6gxTmFxifF6lOV0jJDILyoQ/NkFPHZZPRSvGlSaSX6AGBYweLEF3Yc+XMUvK8/pD47dhlW6At6LFmABfMQKz+Dyj3yt3MWNUk5t8lR4lAhiVYta3bYddgQs/zwXieLPQLOZaf0tBtQpio1VlKZGYvvPjsic7Yv0TUPJ9Rhw6T6b2wGS4BY1E+XGHa4AW/0+Obq6xvpwYQJWO02f+pQsHTxlwYoi2zoVrS0hc9l7kieW2d1tXfYbd3K1FO21s8dVygDNgIIq5WbyeOBI+HYSZoAf03k99rXEP6P34bf81iljHk8b8c/gfJdzwYJ/wUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uhw9xar2tS4SRbBVpHbUBKQJCFT9VNz3d4p58CvvexY=;
 b=YXNXAspr7jwct0Fb6niQfQH+FuXb+ICDnZPKgeHyFU6WXsSxRPt0zLYFHfru+71axQAEBbthgZCQXg5EiNFY+qrvXbv0uW/wzpYw5dtGNq5VmirrOsHuvUB3SnsnF4OSFdJTP16CIkfxeDyU1ZKPauYgDhuCluGR1xWdOmRXOzg=
Authentication-Results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6SPR01MB0038.eurprd05.prod.outlook.com (2603:10a6:20b:3b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Tue, 2 Jun
 2020 04:46:54 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.024; Tue, 2 Jun 2020
 04:46:54 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Tue,  2 Jun 2020 11:46:41 +0700
Message-Id: <20200602044641.10535-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200602044641.10535-1-tuong.t.lien@dektech.com.au>
References: <20200602044641.10535-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: SGBP274CA0007.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::19)
 To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SGBP274CA0007.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Tue, 2 Jun 2020 04:46:52 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfef5b0a-15d0-4e91-ee7e-08d806aff908
X-MS-TrafficTypeDiagnostic: AM6SPR01MB0038:
X-Microsoft-Antispam-PRVS: <AM6SPR01MB0038C38C4A5868957FECFA0BE28B0@AM6SPR01MB0038.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:389;
X-Forefront-PRVS: 0422860ED4
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZqhIv+4EOXbVkkpz6uAXmlrO+t7yO2z7OFNLIX2R3MugiuH7I/KlPjw6Cwr8RAZBXPLlsKvW/jMlx5Lm8VWWN9ti97O4tqK7NPwXxfc8k71vKifPBaFOhn8cQtWuIWSZVl4Fg7rdfjH6drnBTu00aECNmOCiD0x96pyyI9uAgZz5lAYGK76NT5MYLqeRcB3Qku4Xw1u2lMF50b5LjQFdLrUgs+V8ZUNyVMs0XYUoQNBbN74Ap5yTVySn6w0t6sochYcWzeCBpbopVOyZbEUh5XPwtaEYE487VI1OmvMRvDCFZy2wMvSoQFn5NrV9qeeX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(346002)(396003)(39850400004)(376002)(478600001)(86362001)(66476007)(66556008)(5660300002)(36756003)(83380400001)(8936002)(55016002)(103116003)(66946007)(1076003)(26005)(2616005)(16526019)(7696005)(52116002)(956004)(6666004)(4326008)(4744005)(186003)(2906002)(316002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: st32RJT1gGWmoYMhmtp3C+vtOCi9GAouTJay8l/OXN9OCftYF6oam0ubew0L7sG4SLRrwhxxhe78u256LzwZkwSiF0DUcr5lvMNCiIdFQTWGXftfy+cRtJrzAemg1KiAYGWEuSRnrxt7iWQKdPOmBGCotc0Nm3o42zk+NIRPXliW+LuIz4LkQ10GxPgDglWn3IQdXOsb8lhCXVy7uDILhyniRMxkKBhz/YhehEZ9nV17vl03TqVtCe8ZUFoRybrvT18k+tObRcvcrvXNogg+osPgbM2eP+A+u0V5PqRrcT9WLmBFWEqRxyLzsqwWyJaAX4exYsYoC13+g8MP/M5DHcPfQEbs4GZhSQJmIZp6kVmlde7Md3znX83k2E9zoAIM6FtyWnVLGQJvsqKTLia0F4VvK+OCJBcn84lfPQ1AiCFTukguWXWst8uBc8LWofvrX8SFnB/pyWn6fH5YdnLbsSXDIA6CWBuL2s3gFXNB+94=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: bfef5b0a-15d0-4e91-ee7e-08d806aff908
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2020 04:46:54.3458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ArPtkSdMm//1V1vGRvaKOa7mI639uVqvHs/pqgGX7n/i/CIiRL48S5fQrSFx+4qdsuUpiabD0VD0QTUcOHhidezsCa30lG2aXe7dBHgmLDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB0038
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.127 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jfypS-008xpI-4D
Subject: [tipc-discussion] [net 2/2] Revert "tipc: Fix potential tipc_aead
 refcnt leak in tipc_crypto_rcv"
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This reverts commit 441870ee4240cf67b5d3ab8e16216a9ff42eb5d6.

Like the previous patch in this series, we revert the above commit that
causes similar issues with the 'aead' object.

Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/crypto.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index 8c47ded2edb6..c8c47fc72653 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -1712,7 +1712,6 @@ int tipc_crypto_rcv(struct net *net, struct tipc_crypto *rx,
 	case -EBUSY:
 		this_cpu_inc(stats->stat[STAT_ASYNC]);
 		*skb = NULL;
-		tipc_aead_put(aead);
 		return rc;
 	default:
 		this_cpu_inc(stats->stat[STAT_NOK]);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
