Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 493C53D319E
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 04:26:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6kt8-0000uY-IZ; Fri, 23 Jul 2021 02:26:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1m6kt6-0000uJ-QG
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 02:26:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=snDL46rxcLc4hj/9hPx6bg2MHRKZIABQQ6iKqClLAJI=; b=Iy3pzgmYudb9/SmYt9HcWpZnny
 XvDazoLw3ERAgeCp6z+wukup/Boa6t+0abGR3LXA8vjMNRLfAioLMY6vj27qPqpJoArDf3wTpR4HO
 V+6MQmJtCj/LhdIlaPa+Bn/fITg1BQHhOl1lYiMT5O2ntf0G0gQqBNZ8qHUY9NDStPLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=snDL46rxcLc4hj/9hPx6bg2MHRKZIABQQ6iKqClLAJI=; b=j
 XkcNgDLEIKzm8UcAafp2R7/2PkKYyGC1Kzt5NWJ+4sbe8OrYr11/cVsqXOpeTTQpLitZEEMu7A460
 GUvF6Dkw0vr+FXXVqucGkEn8+F6YlLovLSJi7CQLcjwMJrZ84JTXZ1heMndjt7EiHKEgHe4Ok9NcZ
 RjBmNKvO97d7220o=;
Received: from mail-db8eur05on2124.outbound.protection.outlook.com
 ([40.107.20.124] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6ksw-00HPsh-0a
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 02:26:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QCxuDjbHhc9XisfQX/016u+fL5QxmkB4sp1dEs7I0rQY1yPmO+EbC8OGmSviRlF0SC/OLmak7kw0SUPy6JxMeekCCTsN0m46uQQhAKhKHPYqxjLHS3YcnK2f8xZnov72s/vHZD7/hRBmU4JgLOx8P6dn++L8L/pfCWyaiZxyzpjwKssq8QEIyR24BWmqin/CBYfLvSBMVhLL6FkYDCkW0yWUPJudh/W3/uAmz0RWYtwlb25mnqvOl0GhaM5pSWcvhhPYhNnFxNUXEeOpw/HWYSdCKPXqYKZsFp75IiarSGxmpSx/9/el+zkzBLHQvB/Z5ooQz17X/wHF2rJk9c7qvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=snDL46rxcLc4hj/9hPx6bg2MHRKZIABQQ6iKqClLAJI=;
 b=YpkAI6p0UamANQJ1ZE1rkN4sLR0E8tv4f28jcrWFt9Qs+vV5OsYCosxaBsQ8SZV6osSmmpWNUFhyOvyAvBRLxsrKs6yd6SdOxklY8qWhIvqJBsUtsqW3J2XvmcwPSc8THYmrZhL912UDev2UuxJHSvZUlyAYjpL3MkKvIKlsseqc6M/omNQxQaMbAK6rh05UWhIMBDoTXNa8koZMQOwazph7juuNoH4E5yauwY8zuttQ3dRiHxkvzhUSE3e6wNUAf9pRTJiEC3zz2wl7QLnbamiiEWWllkA/HuDRfcVlseNAjSlDXvrO2gvbpA7y/SV+9V3PB/DDkn0aSyCoMwp/Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=snDL46rxcLc4hj/9hPx6bg2MHRKZIABQQ6iKqClLAJI=;
 b=ACu7Ba+zdFxv4Wpp+Xv5w3UP/nP5j6bVT6a9rkk+j45XgUcRg+7VPTW+FZGuL129E7MINN8YW6eFVpdTh3QeTqPqdl35uqi2osfZzmGL6vWF1m6zQgq4AJ/HZAt4SvzviyBnuXi5l2tOmtalllowYy7bonLAiiL0RKso3hwpKuQ=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB6176.eurprd05.prod.outlook.com (2603:10a6:803:d6::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Fri, 23 Jul
 2021 02:25:48 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584%5]) with mapi id 15.20.4352.028; Fri, 23 Jul 2021
 02:25:48 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 23 Jul 2021 09:25:34 +0700
Message-Id: <20210723022534.5112-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: SGXP274CA0011.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::23)
 To VE1PR05MB7327.eurprd05.prod.outlook.com
 (2603:10a6:800:1b0::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (171.252.155.201) by
 SGXP274CA0011.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.24 via Frontend Transport; Fri, 23 Jul 2021 02:25:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eddf022c-fead-473f-973c-08d94d812ea4
X-MS-TrafficTypeDiagnostic: VI1PR05MB6176:
X-Microsoft-Antispam-PRVS: <VI1PR05MB6176E47767E6612F55653388F1E59@VI1PR05MB6176.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YZMatxzdFpJ7gQlLNoC+Vh3Y9eO7QpNhXU3NVsw6qIShAMuuGddSpddJ+KTEdh5RcVFZ49XLjq65kybJg4K8FFoWM79Ng6QfH8IHAuK1zwYsjXusxNTgZTG31WbCDu5Kon5405ilhPl9lkhousMrsKcrEZOR+bm3r4KaE7bhKRmyHaxgYH6vK7j8sbB+23cu1m8U5eEi0a2nsox+SGq4RchQzFicaXd+O/yQJaQsR561+h4RCpXtY/4dJSEjd1+8X7rz8nukLXMMU3E8LCj500eNRmqRxQVul9aba4/o1ypqUbxB4aVIcdwTP1yhTN7WXl1emLwNG6uz4ijBEwI+UhSkfuWRDaaUamR5vwFgbhmCU8RtE/PJKthXl0E03WglqfEP5zJ94Iu6FV6ctVr6JfkjyJetEAoVDkOF+fk3vDiB+IsAjE257Qn/izdGB3KjeX77YJ+NzDd/RVC1w0Dv0l8yxcFDp0hmgLBorkT5tP6NquQIHRWTJsHhIdbv/3rb0zrApDkUhBCCJFM7UYfyEo1PEjGmWqrn+9zgDR6IiwmgKm5BFp4+j+OeeNuUcQ2Yf7o3e4Fz+ux4yyvvVd+RdbhGwzompX7o9g6/On0709Z8k6rDtNaYV/H7kAPrjm2y0qaSp0nIEciuBFPhCpPr9VWTP12hdDZZeZZc8r+ut+rLY6SlAODVIla+xroEYal0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(136003)(346002)(366004)(39840400004)(316002)(103116003)(55016002)(186003)(66476007)(66946007)(66556008)(36756003)(38100700002)(38350700002)(86362001)(478600001)(8676002)(6666004)(956004)(2616005)(8936002)(1076003)(55236004)(26005)(2906002)(52116002)(7696005)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+G4sM5NExYONsWAHy0vu9fMO3ZIIvZ4vr5uNcqwLHsJyHZc2dmNFJzU4V5HE?=
 =?us-ascii?Q?zZTh83uJBu6ywhf2LRkQ1r3jDQKGFFAyMtPm441D/8YkJeqTeaaRtKciZvTf?=
 =?us-ascii?Q?65uHT7QDM6pamL90reoI0JKF15ZcBSFZ6y5BiIeZ0oGGXUCdkURzus8xdMvU?=
 =?us-ascii?Q?kZQxnjRZh+8rLS1krMyjBYrklfnG9T2hnWxnkgBlrMzXGbHCCAph8aOFv9EA?=
 =?us-ascii?Q?ez2kd9FrPhQZyWhl+JjtifvJhFeomG1JQk8uveTsBW6czxn65ZA2oiMm9nwM?=
 =?us-ascii?Q?/bjJtcF3V/LbiSs5rLBNpsEztI46IUY9D3r5Y6WiBTIkKbYnekqNfOK0nSJx?=
 =?us-ascii?Q?4ZMpY4vrRNQyfztfBRO+gusA6GU76119GXZD9ObzcRbPyHjNNcKSf1BnusDc?=
 =?us-ascii?Q?IwjTWEFbC7lULjfBlzjaysMZQJIJ+OI3qbREuEdHz47Kv24R39gk8M0mT1ak?=
 =?us-ascii?Q?C0p6kxrnldsRburf+J0RkSsq7d/0Gm2ZgQ3q/blgesSYrmrZ9v+zxmXY1Rm4?=
 =?us-ascii?Q?Bk2w1OXCB5w1iM5f1gHV2moVDOdwFXDz751CcfLwOgIdwUeubCGEJhHWuQE0?=
 =?us-ascii?Q?8X192iQqQAWaWZoNJJKDKSdTY41Hhbc2Y7F8aQi4kLT+bH1MbZPBJTkqXmi6?=
 =?us-ascii?Q?4dpRlxR7FHUpOr0qgNdYBGDwxIpnNF4C5eH7Ls8FxVVc3GnsvwDxWK5M2iub?=
 =?us-ascii?Q?M3DPDB6E33+MxXC8X6/sw+BMlp1aewvHLkiwkmTSb6F7+uTOY8CmBIx9GpJL?=
 =?us-ascii?Q?mSGAXJPVuoerxhy1J9/RL+y0Zsk5gpchd5IrlxA6zzbvgBvx/GGED+DA9I18?=
 =?us-ascii?Q?TFzitUqXUHjXPV/dlC/sxs8HZpqVRiICdy9OT94OC8afLE/zgNVJr9E2XRLo?=
 =?us-ascii?Q?TnLb9wgw6k1SgOyJgIHjd79U+5TusHwAmsMY8lpH+72KNMDQQK5tRyBKrofN?=
 =?us-ascii?Q?UHr9mIlV0QwgGknf1CE9dvKuO9qBNfW68uf7QEp8zauiCWTq4ynN181Nt1t4?=
 =?us-ascii?Q?82MvHXd99F00+2+3J318IKAoivUf1rjCm8EXpyaHZK6mhnEmK+njmLh2GeAx?=
 =?us-ascii?Q?hzbdR2vMl/KlQkj4ShNqDhxOUycwZv8zqXmlt6XaaYpxn9/nXM7v/isWLL9Y?=
 =?us-ascii?Q?8kdXpjBEXgnn30vQ2krM0dX3WJ3K70HCZHjd4HypTzuWp3m+YP1t2QmWOAt8?=
 =?us-ascii?Q?51KDjLRnMefdztVHkxH8tMbQqFNoQDtLxFOozLPZSIJ4sZ6/pFsFuJEGrLFz?=
 =?us-ascii?Q?257wT8dMPIazMUxEJPxGKik+IQv1aEDu0lQnZOJVN2ZtZdF33kxKxifZnTOl?=
 =?us-ascii?Q?GqzfXzPrsRF9JahW2/z9oQoQ?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: eddf022c-fead-473f-973c-08d94d812ea4
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2021 02:25:47.9658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qAwdwL2ogRSAKqUIAwFPT9lJqSI5Ffo7fNmJFvdT1rlHejJYTupzUnFIHA28JCLcot+qBEUE0lffz71SLslN76XyZ2ChHU8PSQ3ktiM6BX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6176
X-Spam-Score: 3.5 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [171.252.155.201 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.124 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1m6ksw-00HPsh-0a
Subject: [tipc-discussion] [net] tipc: fix sleeping in tipc accept routine
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

The release_sock() is blocking function, it would change the state
after sleeping. In order to evaluate the stated condition outside
the socket lock context, switch to use wait_woken() instead.

Fixes: 6398e23cdb1d8 ("tipc: standardize accept routine")
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 9b0b311c7ec1..2c71828b7e5c 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2664,7 +2664,7 @@ static int tipc_listen(struct socket *sock, int len)
 static int tipc_wait_for_accept(struct socket *sock, long timeo)
 {
 	struct sock *sk = sock->sk;
-	DEFINE_WAIT(wait);
+	DEFINE_WAIT_FUNC(wait, woken_wake_function);
 	int err;
 
 	/* True wake-one mechanism for incoming connections: only
@@ -2673,12 +2673,12 @@ static int tipc_wait_for_accept(struct socket *sock, long timeo)
 	 * anymore, the common case will execute the loop only once.
 	*/
 	for (;;) {
-		prepare_to_wait_exclusive(sk_sleep(sk), &wait,
-					  TASK_INTERRUPTIBLE);
 		if (timeo && skb_queue_empty(&sk->sk_receive_queue)) {
+			add_wait_queue(sk_sleep(sk), &wait);
 			release_sock(sk);
-			timeo = schedule_timeout(timeo);
+			timeo = wait_woken(&wait, TASK_INTERRUPTIBLE, timeo);
 			lock_sock(sk);
+			remove_wait_queue(sk_sleep(sk), &wait);
 		}
 		err = 0;
 		if (!skb_queue_empty(&sk->sk_receive_queue))
@@ -2690,7 +2690,6 @@ static int tipc_wait_for_accept(struct socket *sock, long timeo)
 		if (signal_pending(current))
 			break;
 	}
-	finish_wait(sk_sleep(sk), &wait);
 	return err;
 }
 
-- 
2.30.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
