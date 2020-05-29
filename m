Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 069B61E776E
	for <lists+tipc-discussion@lfdr.de>; Fri, 29 May 2020 09:48:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jeZkz-0007hi-80; Fri, 29 May 2020 07:48:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jeZkx-0007hW-9d
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 07:48:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=alrebGsuS2i4jt+pGLhWZEzxEHRWxs5VS4+uGVh+GGw=; b=Q9ce+2etKhVCdcD6qZsfEHG/+T
 ejBbSx8QK9T8QMCIzaa8hi9RZomBw9nqwJ2LoNF7hlGnSIs/DhgQYiuHON9rSFH5GoncKA0CzEKXz
 PxJ5hNn6VqtlWeAXtcGtsUy59E1wxep8GnXJC3p/J4apTWDanQGg8AiZbbyLlGrdyCzc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=alrebGsuS2i4jt+pGLhWZEzxEHRWxs5VS4+uGVh+GGw=; b=l7oXeNPLRF2BPXseccBkVAj4Bz
 HSD76rjI9yb8XZVBK1eb6Nx5X7dxgswIPLJ3SEAb/cW4QG8qaJh+Y1j1BIQ7x4XMf7gbX6WkS+jrV
 ArwHTMFlkasmCwT7+vqTKZ+eGvaxc+bmLX9pIcazUDpDMV0pBWJgAGjGNojtaM8i5GfI=;
Received: from mail-eopbgr130097.outbound.protection.outlook.com
 ([40.107.13.97] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeZkv-002RCO-9v
 for tipc-discussion@lists.sourceforge.net; Fri, 29 May 2020 07:48:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R01jPJacN8+0Z0aO/W7dso7Hv5FZ1A/Q7G9S+IwYHN2Fwj9cLuhTrMzRR105tlgajdULXJSJqJTyJqgImSgSRlY55TnsSPw0hfbabH1bbOM59gb0W2FNzUe01/NShvnab7w9a70NMI0vKtuTYtSuMel4ql34cPBXaRWbnNBHM3nMwqfP+tQCiT4397Sq95kxnx51gQ8M+T0YeLupKhR9kuADlq6SWF4T+W9agJmur/madJFFs/qEAw7/pD/NNDw+sy0hOlIpeuX3Q8dmi3Cag8eGxh4OS0ZW7py0wbf0XxdgEk3h84ogz0FFljw4ll0oUvs81Ebnz5u00ePTlveg7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=alrebGsuS2i4jt+pGLhWZEzxEHRWxs5VS4+uGVh+GGw=;
 b=SmE6ecCOwFds6qgBHOecp2+gjnNEG4VXvnR2m52kntW7NM6dwdjAf9XCbdIJ8K20msd9Ut3ctyjAr9bCzqjbUHV18ZkbsBXXjPoonYC10Hgb0bsCiA9V/+p/nbt94B6gxLXpgpK+HmLBUlEzxVdVr8nXOEAukJIVQq3ZfiPSdeS1BQfHKxrssga2OFv5qx3W0q1l8WtLk76mxjvD7p07iw9VOTouFoDF+P85neHHNoINuJvifP0zjVF53vSSSteekyKqd2C2XppF6qHn0Z8XG0gbjsIhnK+UM7cDOT5G6xa1ycnWO7ki/OW93BUQboC2GjEEx20dX2wCYRt9GV8hfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=alrebGsuS2i4jt+pGLhWZEzxEHRWxs5VS4+uGVh+GGw=;
 b=L/ONKxOJcV6WbWPSE9ATGTcGqzrJTd4msWRYvNCrBX/aWKopEHy36jDgrVTbws4EwZ1rdvrUcIFaVTPEg88W1X/CR/7i4xsOoVQdDmElgqS10GRmslTB7b5ifBGai+0gtzMgIN40+PnDyQVlXEpVYM6GirM9wASIsqHXx6wFWGA=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3926.eurprd05.prod.outlook.com (2603:10a6:209:c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 07:48:31 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 07:48:31 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 29 May 2020 14:48:15 +0700
Message-Id: <20200529074816.4585-2-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200529074816.4585-1-tuong.t.lien@dektech.com.au>
References: <20200529074816.4585-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: TYCPR01CA0009.jpnprd01.prod.outlook.com (2603:1096:405::21)
 To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TYCPR01CA0009.jpnprd01.prod.outlook.com (2603:1096:405::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Fri, 29 May 2020 07:48:28 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2d7ff7f-67eb-47b1-2eca-08d803a4ae84
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3926:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB39269A432E0C267A217D4C88E28F0@AM6PR0502MB3926.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yb/YNZ2surgOT8zMmNQd2Fki3ev9jslBDMnOum4WSGfBEYPd3ArSPstASFgJD7ZmbTD7icoCwjYHOHJgTPKNBlIDXd/fkRPMlDdjNvJnJI1tKCfZbhza1xR0KCNYXJY3qey/TfEfX+Ia29BuU72G4ndl36iY8lrvy21sWkUPj1TWfwvnKt9GKtykHPBcLJRmROaYdA0G3AF2X2LCWW2YeB+5O8Y8aSu4G6SGPq5avFORyMVZ01HNtRpJeUnTRsRmCUD98FqwQnVLdkVk1goKM1Gg59WhjXizb3VuA63LThBCaqsmOv+XmACdbczKfFyzJ8aD27R93Fxn+hWZVzw5WA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(136003)(366004)(346002)(376002)(396003)(86362001)(2906002)(2616005)(956004)(478600001)(186003)(16526019)(26005)(83380400001)(316002)(36756003)(8936002)(1076003)(7696005)(66946007)(66476007)(5660300002)(52116002)(66556008)(107886003)(4326008)(55016002)(103116003)(6666004)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: uBradwG2ILqF7zhEzunPtUoY2sIZjbIREg53DSSJElL5h7vW4rUq3/uIANVf50GspVXXjjkPmfXZQ6cL09Qcu7FhbWWWNA+mNu0/aVaClsMAYDBedkeMiVOUz9i5ttYNer+eVeieH836WRjfkKntv5EfHM2JF5PXMrhIXZjE0MqIfXpoHoJqDbd85kzlc2WTZzCjoolaEurpiP16P/mp4D+cnzygBFZQbT3E/TaHLXMK9P0JVPfJb/Rn67PCKEL2/8m830SPy3rTze5hyw21hyxnTWiAfBqftf85/yDjWrdtAQ/kX7AHD+S02sTw15MTiw3qTkFh3vcFGjxC/h4FhsGT1WwqW5sYaYXapsv0Iztgp5LjwcMlljvi5UmmltRWT13xih44Kaw5RzjIPVRlN86dNKePIAkwcOjjJyB4KFvXKqH2TtN1zh3uYhA6NGv7SV6PcryabQ2dDqkQLIiITQ9oUxMXi8hF9cyWPoztaGg=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: c2d7ff7f-67eb-47b1-2eca-08d803a4ae84
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 07:48:31.4221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lP6ptDWlX1hHuaQe8PJcImmPe3JhMBmbWUjGu8GYWLlzXowtHNBqOre611Wt5AVv82eVHjMAxmzgvCsjNsTyktdtfiR/lRcZkW/ebeo0B68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3926
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.97 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jeZkv-002RCO-9v
Subject: [tipc-discussion] [net 1/2] Revert "tipc: Fix potential tipc_node
 refcnt leak in tipc_rcv"
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

This reverts commit de058420767df21e2b6b0f3bb36d1616fb962032.

There is no actual tipc_node refcnt leak as stated in the above commit.
The refcnt is hold carefully for the case of an asynchronous decryption
(i.e. -EINPROGRESS/-EBUSY and skb = NULL is returned), so that the node
object cannot be freed in the meantime. The counter will be re-balanced
when the operation's callback arrives with the decrypted buffer if any.
In other cases, e.g. a synchronous crypto the counter will be decreased
immediately when it is done.

Now with that commit, a kernel panic will occur when there is no node
found (i.e. n = NULL) in the 'tipc_rcv()' or a premature release of the
node object.

This commit solves the issues by reverting the said commit, but keeping
one valid case that the 'skb_linearize()' is failed.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/node.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 0312fb181d94..a4c2816c3746 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2038,7 +2038,6 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
 		n = tipc_node_find_by_id(net, ehdr->id);
 	}
 	tipc_crypto_rcv(net, (n) ? n->crypto_rx : NULL, &skb, b);
-	tipc_node_put(n);
 	if (!skb)
 		return;
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
