Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7171380179
	for <lists+tipc-discussion@lfdr.de>; Fri, 14 May 2021 03:23:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lhMYK-0005Qk-5T; Fri, 14 May 2021 01:23:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lhMYH-0005QZ-T7
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 01:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e7+oOGFCG7SiQl52+AHGv79TmYkaGYlV//n8Vh2LSEE=; b=IkiBMSu1AWn+ekZ1J2upMfWL2I
 yqTHsCtpl8X9yYLhUWS/W8H/9EJKwMXu1AZC6PXzq8H2Vbar+9sbKQIS61QPA0vp1pDlulgdrNiC8
 zX4ngrTKz3So9AcTUJb1IgI8PYs8EEVblFLHrDItXDgW1SAUWj1PjaRcCmwY+fO2bZsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=e7+oOGFCG7SiQl52+AHGv79TmYkaGYlV//n8Vh2LSEE=; b=b
 hKvITrXHSWA8Rul4dg6Qn5txCvLw04MXNCvNNYfLKb+rKum8o9s6OhZZzTWjj/Z3/Tt2EPXsGVE7A
 HWa54V0WafInVQZPENTKfR9ihjxJHewz250mtS+ELylUrYpTeryp9aZVvqHH4VvafKzMKQMwTJegQ
 No+VseTZ6f6FQOAM=;
Received: from mail-db8eur05on2109.outbound.protection.outlook.com
 ([40.107.20.109] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhMYD-0006EM-Ls
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 01:23:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tk2bRbtM7tBdtxGgXf/7AYi4wPq7vlN8IoNUH/jadP66JDWoqbyee19WcVrQo578KRCc7ChjBkoaOwlvpHROjNtwCbxdrV47LLMFnwDW/Thdwau7X1P1nGT1+R09HihfSqK5V4xjkta9FXuPZKn6GXODtCDIe9e7UnsZfCG5neuyujX+OT81vTzeOGDSQRLQ+qT133iWCV82jf0psoKT+ZkjhLOJVuGZz+igMUwtYguFV7TYToceIFxS3HbvovH1QdflMpptCbVGrq1WyNw724XoeV7duCqTvCbfmrUjRKXFYh27/5y774scStdm022b754y+VjE6AQtKYCsNAxqkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e7+oOGFCG7SiQl52+AHGv79TmYkaGYlV//n8Vh2LSEE=;
 b=bjQVUQmcYOjuNUjeFPnvoMW4ULh2tSsoDTtn0qt+4nYFH4o0OIs2jn05yjJkAy14qjXCuOl1fQO/ux0xsimkfNJ680QlBj+OS0VM9V7Vq3MN1hAU4SkDnXa7TNHrEimvWFAXq3plaZCb7/1KM/JuhFUJdloye59CTpaNxN++q5KUXb6t4o2gyXV5fu4HycSq1pzuIYT4eFuMONrAcuAzOGjVyjgVNDhmOLpfWRvoEridsIlWeXkBZPow+HuPmtxCuS7iRWPnRSDfXJGcBPgqMoTdnC6IP9uOf5+YE1B9GfTlblCtehqZeNx7JcxIRo+9WG0IDm8crmnXliMlaCcI2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e7+oOGFCG7SiQl52+AHGv79TmYkaGYlV//n8Vh2LSEE=;
 b=RfwR2aOk+XNoyCfBjeBwmICoZ0GBA4FeNWDXztCknmUHJKDsKZbqzg3Vb0iOxWCyTXtuzwmYWkHYbFqs6HWy+sAgBgzByfnkIz9dikcvv0TMPzbLMOP2ljXMW/oknC8iRNDA8x/deP7R+hq70pvy7tkBT0teesqm9wMba0LTfWE=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB6253.eurprd05.prod.outlook.com (2603:10a6:803:ed::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 14 May
 2021 01:23:29 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::c1b1:f949:5243:8e89]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::c1b1:f949:5243:8e89%4]) with mapi id 15.20.4129.025; Fri, 14 May 2021
 01:23:29 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 14 May 2021 08:23:03 +0700
Message-Id: <20210514012303.6177-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [27.71.104.142]
X-ClientProxiedBy: SG2PR03CA0117.apcprd03.prod.outlook.com
 (2603:1096:4:91::21) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (27.71.104.142) by
 SG2PR03CA0117.apcprd03.prod.outlook.com (2603:1096:4:91::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.11 via Frontend Transport; Fri, 14 May 2021 01:23:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3be7028-63c9-4c1c-7c36-08d91676e11e
X-MS-TrafficTypeDiagnostic: VI1PR05MB6253:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB62533DCDCC054ABA3CE06350F1509@VI1PR05MB6253.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:269;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hN3F2JJAKLtySTXXXJkT0uutlzfv3dbgKmBHm1WDzqj55lQJIx20klWLye5f2YDGujZ8ZMcBPAkPvKZWImKT9rNd1cSKhqaNAfPWwuRsTZx0y+UIGwTr5PYUL3YWjRDnCdXiG2qCm1F7cDYu1ZJTVfzsbr6nXRN8Kbi1seryn+p7SR2U2nZFiMdQcfDxLkSFYK0lCNZjtbEjN8m8W7nCOW4JhhDW+GhrUbEXMrqafYUKe48L0pdTnN2n4aiGrrw4e88xOy4R3GSiVgSwqlw9csNviROyBXgmUmFxTCl7z+yqVX6EC90P4OkTxj2wVsEPa7Jm/6VT5TKOHteZ4eNNHQVNOcOELiI8J92rIjYNo0SFsNRAD9dNzi4VTax+x4xe0fOJQ99kpeJK6H2R9rqZlaA2jvB29XMTXrcg1XAkoi1hSzde4J4JIR1Rjs4wIRQBkT3g3nvloxS4Xc438EHVton64tGAxkPmZr+8El5jLneCG4mLn4Dj/IrNj64jrdIiXjQ7Bmj9ck8zp3LXFgC9xa/FE6Dz2RkP2jM4JvcVuqp1UJqDL5NwkUE4kTTVtSZZboYrDgc6Omrn/9RNe7XKp5WN1dnVaCLTr1O6KfCfUy4VPDQzufRgxc7I4F9jCuiUa+3OIe2Jv/jXKBHZSf7QmQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39830400003)(346002)(136003)(376002)(396003)(366004)(66946007)(8936002)(66476007)(38100700002)(38350700002)(66556008)(2906002)(86362001)(1076003)(7696005)(316002)(52116002)(26005)(5660300002)(55016002)(36756003)(16526019)(956004)(83380400001)(2616005)(107886003)(478600001)(186003)(103116003)(4744005)(8676002)(6666004)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?7EktmsveyN1D7I+COBEvypiR79LKYCpAzPG5+45ly8VJtUHQNOTTu3bQzH7e?=
 =?us-ascii?Q?l8VFCuSD+R6KS50Ef1TahZH50bR+ajVVfGbeo189bjeV/Xf016vfulBCbUSm?=
 =?us-ascii?Q?/e3orne7G8KUzARIACZNcIAWRWubC7+c9gJga5L1TOFtGlmBPD70gVz6d08q?=
 =?us-ascii?Q?3sdOS1KSmG2q9cl5A9qHaWjoDBitIObh+tXNbQ2u5vKWpvljJYHY8UPqo4+S?=
 =?us-ascii?Q?M+mC1ncya8Gp5h1TXhzE+XLgSSxHHi0OFrASAFhFWDX+h7SRDLtrgxx+6tJJ?=
 =?us-ascii?Q?xASRC3eIWGQttz5pAy/JZcm7mKVeLf2FrQi4ZylAnBxsftJwKggVS+GcG4yl?=
 =?us-ascii?Q?17dqQCIb3PcRe0Z5c4YAEElKuecjcDViIjyY0cHwcPQJMV0+gffSLEyScCeu?=
 =?us-ascii?Q?kOPQ1mqe7d8/gNMU7nX24NW+wiz0yZHSAzq8VpK6HgxdHN9eyKTYnpnLXjNn?=
 =?us-ascii?Q?1I0K5byhnRe9M8TNhqLldRLghD4yN4yr7a9p0XRnUe49f4bCN6927LBbsdDP?=
 =?us-ascii?Q?PeVX/37A3B0Jvw8ddrkS/npMmCrsGo6ATPXE39ZbtYCwJcOIfivjlCYMmds0?=
 =?us-ascii?Q?bL5SdW9WWfcjaJjwKt0ks596jJLI6LxRf+1uEGAiq0KotE9j1NyiCPu9y7xe?=
 =?us-ascii?Q?qIzVsUkHKR/4DieODjN7gn438Vx5ENIuVosqaPG1ketO//f2+Fx2Lg1WwjxV?=
 =?us-ascii?Q?qO/ZZQIU8KPgOf2S5u2ePdtssermLduHZHyxA0U5MNQhpKtG3k9/fyxwjJYO?=
 =?us-ascii?Q?KuCfoFVWfq31VUD145qKBJmhaL2yxhYkZU7BwazjMo+8MaH/WbrMlvoy37Jk?=
 =?us-ascii?Q?25Qt1pSgpp7O1LIpkIys9hvvVxqE6xu2bq69p91a6+6ElIhcgOsKKIPSrQsd?=
 =?us-ascii?Q?M69C6ig/8vrTh66IGO3UaaaKyOnU7a3f8QwNL0UdEcvZoNA7+71U7yY1Atc2?=
 =?us-ascii?Q?QE/tzDdtsVUzjLUF1T/vDt/of2ztPjDNWeF1mCmP30CKft4mohByKqIaHy7f?=
 =?us-ascii?Q?UhGHevlNrJXrjdjIbgUJ8/pzoYeqzunRYOERls7rJA3NdxJvzmP66t6BwXJa?=
 =?us-ascii?Q?bDkcfXG5Ef6wr3H41ZfkP+ImxkiH1wmt9lPsAsdbMG6LUp+6icLCopSWQ9VZ?=
 =?us-ascii?Q?k/ZRbDNvNI0/TXttKNOcBVnlR4h073Ph0xCM6IOwXrW0uBT0eqH87W+v/KyJ?=
 =?us-ascii?Q?DeKR54ipsq1UOeTQynhMI61hSrTPdfdcI2nN+TFe/0UtdyZIw4LVfU7pYQ7V?=
 =?us-ascii?Q?hyBsnP1/mgN41OKlM+uTn8mJYoFRQiGHRhgldFqTsSzrMqdnrvXDJnDlp7Lu?=
 =?us-ascii?Q?+GxCyYJcaCtAShVp/cXZsTe7?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: a3be7028-63c9-4c1c-7c36-08d91676e11e
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2021 01:23:29.2007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N90ciReUWgL2ylYH4ig4Qpm742D2aZZzb7AHN/o76hX9uW46TkMLljRUTl+kQYvNb0zWPDqrrZ/yt9n1HDSXLWzf5X+tNwOoV3x70+5maDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6253
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.109 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lhMYD-0006EM-Ls
Subject: [tipc-discussion] [net] Revert "net:tipc: Fix a double free in
 tipc_sk_mcast_rcv"
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

This reverts commit 6bf24dc0cc0cc43b29ba344b66d78590e687e046.
Above fix is not correct and caused memory leak issue.

Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
Acked-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 58935cd0d068..53af72824c9c 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1262,7 +1262,10 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		spin_lock_bh(&inputq->lock);
 		if (skb_peek(arrvq) == skb) {
 			skb_queue_splice_tail_init(&tmpq, inputq);
-			__skb_dequeue(arrvq);
+			/* Decrease the skb's refcnt as increasing in the
+			 * function tipc_skb_peek
+			 */
+			kfree_skb(__skb_dequeue(arrvq));
 		}
 		spin_unlock_bh(&inputq->lock);
 		__skb_queue_purge(&tmpq);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
