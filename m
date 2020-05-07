Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA4A1C87BF
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 May 2020 13:13:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jWeSz-0000Nz-Bx; Thu, 07 May 2020 11:13:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jWeSx-0000NM-Sm
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 11:13:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JOgPrEVKEa1Gy2mZsO4CAp7nmIpVTBLuacTB7IsiwSU=; b=mvJrialNpcV11cGNRDb+k5YwIL
 xhgkvCnrRGVT+cvASi4kvnR7klXOTROV9jNwFlrFqucEYzM94UthI+lUI/QLlGUWVzMmcRcjrE+Sg
 eWxJGEULfwqEh2J5t6cUUQBCHffgOYKIY2DEyQAY1YZjBAM3kI5GL8mDpWc3UNkVu7ik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JOgPrEVKEa1Gy2mZsO4CAp7nmIpVTBLuacTB7IsiwSU=; b=iMnVTAzIXyddw4s4qpT5phNUWz
 q5LFY4EQPsfrUjvC3TCm8vLv/izX8jMI6v+WuLMpxQzDt4nPJxw2SdVFRLbFSZtfXoV/xru87xA49
 h79uPYZUAGQsqJmGB3s2RFwYUCPdq+dALEI/3zPVEQywiYbljOJivXAjqJmiV7YK2goA=;
Received: from mail-eopbgr50126.outbound.protection.outlook.com
 ([40.107.5.126] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWeSw-00E6tO-2q
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 11:13:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CJ2CWETkCEmLq/ZqyEW0NEqrk5ul2DO6/5ut1HNrTD4Pekfg4XOcnrsSTalPEhjOuEGujGZa6FPbnciVkXuCcgYZZKfb9JqXwrHHccidNb6YUCROaw8m5IO27mMv9N5N9rIsCqaJvlG3jo/zChzncVzqSBdDI2KK5iY0gwO6Jdgs369NvGvIpjavXbKD6JIsyQncMekvDvYxyV9MV4Kn9imLAQEtQBsZwZlzGarW/ejTNx1lCFzDPvSlUdjrkD+OQ9I39I+QiMtAcmfUv4ry3rui8Lo572awjvCxca/w+4b36xZOc1adMrYDDklgf+k41DAFrCA7XgNW8s26cnYcEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JOgPrEVKEa1Gy2mZsO4CAp7nmIpVTBLuacTB7IsiwSU=;
 b=n8XW+Gb7fvU0jdi7+nzy2DWnU7DE8R6cmGASGbqLrH59ssxyAn0WszWs9Omttm5KV36TbPCdJ3Vytp68PA8dpVebEc54BwZCrnIk9CASeOcM7mBaDBPZLzyY6EEjSTEhdwwh46kWf61h/JO9Wft1ETmc49x7UkW2FkBFPm4x7kMCkQ7P+m8Xa9QZKhKEbgTkmZlMD3TBs3101cc62j8TWKLYKQQgL5hLVksmopTzh2dmMyN37FqcyPkmBAEYTC8XjU9Y1Xrjnp7o3arw+It3tzXEXiw0WUpXLSPm35iESkTzyXNnEVdsiYrwMMKIQKv2juep31Hf5xkt/LGLf8zXrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JOgPrEVKEa1Gy2mZsO4CAp7nmIpVTBLuacTB7IsiwSU=;
 b=AsJL41jExZw7JJwQYv12h39mjMd6++qvzmMzEIIV1abkPDAdNQ9KNbc2QaZ/ccYYQGG69J9kVoxBATccIOIWqfqsJTQj1hpWIqBT9s/YXscFXGfw8fSJ227Qo6LQ3ljvxjhgvJWHCV2IcjIUlVu0p9YpNSyZYILquvjt4DcG/wo=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3877.eurprd05.prod.outlook.com (2603:10a6:209:3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 7 May
 2020 11:13:08 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2979.027; Thu, 7 May 2020
 11:13:08 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  7 May 2020 18:12:49 +0700
Message-Id: <20200507111249.8760-3-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
References: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: TY2PR06CA0034.apcprd06.prod.outlook.com
 (2603:1096:404:2e::22) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TY2PR06CA0034.apcprd06.prod.outlook.com (2603:1096:404:2e::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Thu, 7 May 2020 11:13:05 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93f24faa-6708-4a3e-4e3e-08d7f2779f0c
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3877:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB38775D7692D89389DD2D91F2E2A50@AM6PR0502MB3877.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:428;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WV58sUtDy/ACQuV/H/uIBUFao7k31ts5IrcqXDswm8mvUkYoZuflo7xoyLrTW671XlDRSg68Xs9bwxO6J1zluWeyLCBVRkF4AH6jTp3H0+a/ILBX7BKuTPIfitqva+ciJz3hgogVPenG+yw2nT4jZb00yAiSAP8ynIAT5kuUdTdV+jZnImt+6to4T07JwMiM+uDeRtVXgAznUFfLIoslK5nHZqJi+T2QvFZZru6nhoPiczTp/p06DFBi7wTP1vGnXtYO6Im+jl4+/JRDBzcmXJvGj5+lmx9yBJWQOttpyj0HTCQ6c/sSIqW/gxz+q9I6G5c+HmnazyXSgXwz0pSmo9aFJySOjF7LwfjTeeIxG+uupDb4nfyuLDpgPdelIwW3YX+brc6A5B/5DdML56FDUxj8GsdsYi36Vpks8q4LlbH6+jnluB6bxobF0wJRmuuJtAMJppkCuTjLBKa6skZaHTk2/xhycW3vjEgX7/tKLzbqk85hm6oJD4Rrnk0EaTkt52ysq0gawzp/evRNt0If0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39850400004)(136003)(366004)(346002)(33430700001)(7696005)(66476007)(66556008)(52116002)(8676002)(1076003)(66946007)(33440700001)(103116003)(2616005)(8936002)(316002)(5660300002)(6666004)(956004)(508600001)(36756003)(83280400001)(83320400001)(83290400001)(26005)(55016002)(186003)(2906002)(4326008)(83310400001)(83300400001)(16526019)(107886003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: rUndAFpsuGOj1cFQ9nOHnIekpiaTLRtmbg9l6WhNbvvDyRaB/4ZAhanCJfqQylAbaUQzuWe/q4LsbR4iCtyiIfJWUQDZKSomA9bEm2EAupqlwL6YMsiivs2Srjk5CyJh2kRbW6EASraFb9pmAQqB9JoK8Kov1qwVX+xOeaIOeUnWBvLN/EPqsxvQwpdx6Ykkdu1lLsacS5dnFvxVUV1D/LwrJgj6lIUfuxCn/exA4SrBuB6GuWSn8I43RaIO0k6DqgfXGYdowkpSadKHplj40SHx19/9DzUmoOwJ/x1qMpDaaKw/TVYP+jWvoKMNarcHh/tqCkA+NKAs9R30ViU0ZSeUSwOPKUpeyh1UNr/GzNq0t4gCSm3RBwaOQbljHgnSHHiVC3XxHCVh6fxooOTM67DmKHY30oi8WF8GutDjhGVDz56qUGFEXr2E400QlI3YCGqlAGr+uAp5tiW5MUeV+x+A6XdwjXapbCptEGLuiIHATp49fjFBEGYQhpNEOgNGRr15BgDpwfHKi6Dx6aheghOnpR5NpjeGHL3WZaEFjVc+rGy/Eqi/i4K1iA7F63Hvb7yxKHdnpH4D6MT+vPED8TvUXT46G0L8pwqFn2poUi16nE4YQxGBVW/qsfvuYHT+iC2SZgI3RfkXp+MmDiPx3ZqgT/5w5eM2A/HBh27VaFCObmxUAEPL6Rm0Yq5m2vD5D63CXcUNwWp7Qzd+K4YRL/16le1p6UJGlProgwvN/6PBADxcf3JzCpVx0ws+/zp+Yo7JelxSNXDf8piSA5ZU/eSynJbd5iUTpd/p8O5A0W8=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f24faa-6708-4a3e-4e3e-08d7f2779f0c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 11:13:08.3566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9LI46E73WoEjmbnCS7vHEYvKBQSXKD/AD2ycQxGydaQIGWw2g8U6r+oiMNIrp9SVunFG83CuaATnDLmdlzrBb6f6POPtA1mGJ/rWh4ICyKo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3877
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.126 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.126 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWeSw-00E6tO-2q
Subject: [tipc-discussion] [net 2/2] tipc: fix failed service subscription
 deletion
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

When a service subscription is expired or canceled by user, it needs to
be deleted from the subscription list, so that new subscriptions can be
registered (max = 65535 per net). However, there are two issues in code
that can cause such an unused subscription to persist:

1) The 'tipc_conn_delete_sub()' has a loop on the subscription list but
it makes a break shortly when the 1st subscription differs from the one
specified, so the subscription will not be deleted.

2) In case a subscription is canceled, the code to remove the
'TIPC_SUB_CANCEL' flag from the subscription filter does not work if it
is a local subscription (i.e. the little endian isn't involved). So, it
will be no matches when looking for the subscription to delete later.

The subscription(s) will be removed eventually when the user terminates
its topology connection but that could be a long time later. Meanwhile,
the number of available subscriptions may be exhausted.

This commit fixes the two issues above, so as needed a subscription can
be deleted correctly.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/topsrv.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index 399a89f6f1bf..44609238849e 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -237,8 +237,6 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
 		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
 			tipc_sub_unsubscribe(sub);
 			atomic_dec(&tn->subscription_count);
-		} else if (s) {
-			break;
 		}
 	}
 	spin_unlock_bh(&con->sub_lock);
@@ -364,7 +362,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
 	struct tipc_subscription *sub;
 
 	if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
-		s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
+		if (!(s->filter & TIPC_FILTER_MASK))
+			s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
+		else
+			s->filter &= ~TIPC_SUB_CANCEL;
 		tipc_conn_delete_sub(con, s);
 		return 0;
 	}
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
