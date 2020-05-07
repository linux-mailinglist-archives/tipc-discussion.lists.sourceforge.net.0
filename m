Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4421C87BC
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 May 2020 13:13:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jWeSy-0000Nc-7q; Thu, 07 May 2020 11:13:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jWeSv-0000Mo-Er
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 11:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RgyKfyqGvldGKJZYXp91ixKmwbaZ1ZSl5Qrl+b70nSc=; b=JsjC/+psVreO6L3y2ILInJ/e6R
 WVXLCeQqmIX32FgrHZ4CqgB6J217eFU23/fSc1GMD/yNca6XOIBa1nayGfYCzdcS6nY6Bhxws5TYp
 WpoyRRz70HslndmhEKK3VsyVHFRzCIg/Hgt9gI5hAyauGr2QvQA6aDrYELtlYdL92gv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RgyKfyqGvldGKJZYXp91ixKmwbaZ1ZSl5Qrl+b70nSc=; b=WzcLviaR0Nu1NEU05NcTInyt8j
 FKjycXPXeRagc8oxI3XMMKtCD1HSih2dIqAmKgVZ8lf0B7Lte5rQdB6LS2lqTg3tkHi+YwcCIMspd
 +SmWaHrgNcJQ9igvquVmYEFkqpKGwI300A7/ToX5clwUjiS2Jy5hVvvaeCjP9gYQKeqo=;
Received: from mail-eopbgr50126.outbound.protection.outlook.com
 ([40.107.5.126] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWeSt-00E6tO-Kv
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 11:13:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WBV67MsMn1/L6BDEP3f1OjdF9uiojUQHlwIybmV5UdfnUMt3eQkL2HP+LyJ1+BVhjY3tOkSX/i+9YdpHIJvS1uLejYrgf0Oy0X7xeL94b2RHp8BLZULV/Oa/Q3UtPeaJjn7b8ecZq0uZIIFMYxigsqcquFvfgBty6oH1HFYkFFf1NmK/ZOxmbWO/i8WOnHp54NGgw3liadKD+vxkhPGWk30HUmf+AiquXCuBTcXYep0inN4+1lF0lQWujJYLy0E0omghGj2WO7JiQtEYRRfVi6/Sr85r0NUZhi44AeocU3kJW8KeqrMyn+c5P1xkmx7adXxoZh4TcNbNkEeGqxZHNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgyKfyqGvldGKJZYXp91ixKmwbaZ1ZSl5Qrl+b70nSc=;
 b=JC/nB5RoMS605rHxu/fptTxOJ1uPAzQWwNwSZm85VSgrAx77iJrXKJY3KUBP8Ga8rB81xirzW73xw3X00h+/hySldexrqLEgp5X+phBRzu0VDX/b5vX79d1wYnjU1nwo1kF7pIYvFaFp9569omwt/VF6NyILZKw0/hGOcP8btxoiL8EYLPEVBjrzx2l8WzqMyRL01uiIATS+8msL5/VBCD1Zda6c00XsgaEsptNw9o6urbVh4DrQTU/V/t+njBG5VfNRiyQmd26qy24CRt3lJKChiZrWqH89oudk636wayKIrA75SQ853OXRxHAV9EAWgbJ5eQ+QjZd8kvhWSuhNfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgyKfyqGvldGKJZYXp91ixKmwbaZ1ZSl5Qrl+b70nSc=;
 b=LcJF+t3cgFTdGzWW5u39035y2KbjyPl/SYNU6vwXGA0FF77in0Vbz9pn37sjqvweWVEDhpLy+gME8bhjN7W4BMPcBi6s6D15wYzWGHkfFMbi9+hZEq07u87ZH7D/zceggELFP3wxVadEaE3KuxRrfSXyo63qVq7R7OfxDpVJXZU=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3877.eurprd05.prod.outlook.com (2603:10a6:209:3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 7 May
 2020 11:13:05 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2979.027; Thu, 7 May 2020
 11:13:05 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Thu,  7 May 2020 18:12:48 +0700
Message-Id: <20200507111249.8760-2-tuong.t.lien@dektech.com.au>
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
 15.20.2979.27 via Frontend Transport; Thu, 7 May 2020 11:13:02 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3fea6307-aebf-4488-f93a-08d7f2779d49
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3877:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0502MB387748B3B1051D55F0EA24AEE2A50@AM6PR0502MB3877.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:530;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qT2Y94+dncYiNQYXhLJfKn7zVmoljVp6YChTzywRXkNJUw2+aAm0PPRN3WMtCWYVzqwi5A4yVW6xwfTvQfsd93lX4yLQr1ht02VenjDp0MuQne9aItcMH9Bzn7in1b4QpoWDrErImIn89vduv9N4gfFgEyFrPPs/ITDgS02ncI17afWJA2DeFMVujEzhSmArWsPwoIbnprvET5eqVqv7MKVnlKMkVUdSOSNq1lHYVLPyRV2eS9fPU5A2jc6H3DH7+QL+MnYCWV0A+7NEmRIBWv0phN8o5CcWJFDFuv5ju1jKO6ci+OvHfkFKjMITh5caqCUnLhhmqgFfZCy2OLYAIQHDOUD1grkVHHc/JMcT93pcxVfuhy4YnRhfQHwkA1n5j7u6TCxWVpn8/f0byWbOyVFHgE1Nf2sHAbOlzh7oA30IgMaGMEhn6/pkeLTABBVCqGEegln68UEugzOX91X7TnvUS4z19ZfVayzB5vmXsblTPGUTAvRYMgCWZYdSGzYSwySpqARKWWpRhocnibSJ+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39850400004)(136003)(366004)(346002)(33430700001)(7696005)(66476007)(66556008)(52116002)(8676002)(1076003)(66946007)(33440700001)(103116003)(2616005)(8936002)(316002)(5660300002)(6666004)(956004)(508600001)(36756003)(83280400001)(83320400001)(83290400001)(26005)(55016002)(186003)(2906002)(4326008)(83310400001)(83300400001)(16526019)(107886003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: G8g2VYubhqfZrioSVYyYoKo8eOZybP2DwjdKDU+i/ybGKpM3u3Y28cc+h4C4EssS2eA/GSxnbRLPG/K6Jlupvsj93/IYcDRTZ4cyjhQcYQma+csvO3dn3Q1qPAnl0fqz9ceBE4XRZMS0eEWeyHYiuNaHLXrXlpV+rKMjrFsy8jbZCTyxE6TwIdzft4F7YIp5h4ZJ+Mh6xV5LHlhD8J/GjwFluYCF0JgijLqJNNEvnBdte/a+o/ZXKegwp2W35spssc22JJ6WrFnYY0fX1YlpBk0nRfgzJhHHdAFkC0RenTpPvaqvr1QLItQUyGatgsVU0pyOBtw3+sB6XataPumhRHimfLQ6MbQn8RazDZVFjQgj5NAxojFdasqo5N06uuN4hNO1JeWeoOygCHQujFJr4kzl+ecMQPfyWdWPcK5PbCeqm5kMijGcVUoX9IlTrO40YN59wXOP3szkoI7c5986rSvQvKqbnK16bbEklqxbfepZlFTTcyKQ1Z9isHR99yvheshZJ7IIxUNNDe6xs9rTXtR1kkyTBlQunJgY/tIqZNCm6YgRcY8pHOJIRTDNWHnCMx67m5RfCEQfuXq20EgKEERsOgrV0V39SkewM4pi6WS1o75z4T64/RJoqy1fgU+JZsTGn1WXYY7ZP4DrrD/Ep3SNcooTC5ffb8dqfAlXYSh87rEZ4TWOhjNPUOpfB8SXQjUGPR68dGMZQUS2d66jBTFuA1VJNrKKZdNrNuu6vZqqS/aaZ69rh7jshibqiuNyUGHtzBJIjv9i9e9z6kBM5SNZK7JEgWftah1Rg7ypWiA=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fea6307-aebf-4488-f93a-08d7f2779d49
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 11:13:05.3983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jFsVSYI3P5WVx+CouSHe6O8FlFOF2DRUOiFyZetnDRLkmDl2pbBh5Cv4ahQqHXcRTfr8xmuTPI5Gq4PMJUy44r6++98RdeGdpceC73MPKP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3877
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.126 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWeSt-00E6tO-Kv
Subject: [tipc-discussion] [net 1/2] tipc: fix memory leak in service
 subscripting
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

Upon receipt of a service subscription request from user via a topology
connection, one 'sub' object will be allocated in kernel, so it will be
able to send an event of the service if any to the user correspondingly
then. Also, in case of any failure, the connection will be shutdown and
all the pertaining 'sub' objects will be freed.

However, there is a race condition as follows resulting in memory leak:

       receive-work       connection        send-work
              |                |                |
        sub-1 |<------//-------|                |
        sub-2 |<------//-------|                |
              |                |<---------------| evt for sub-x
        sub-3 |<------//-------|                |
              :                :                :
              :                :                :
              |       /--------|                |
              |       |        * peer closed    |
              |       |        |                |
              |       |        |<-------X-------| evt for sub-y
              |       |        |<===============|
        sub-n |<------/        X    shutdown    |
    -> orphan |                                 |

That is, the 'receive-work' may get the last subscription request while
the 'send-work' is shutting down the connection due to peer close.

We had a 'lock' on the connection, so the two actions cannot be carried
out simultaneously. If the last subscription is allocated e.g. 'sub-n',
before the 'send-work' closes the connection, there will be no issue at
all, the 'sub' objects will be freed. In contrast the last subscription
will become orphan since the connection was closed, and we released all
references.

This commit fixes the issue by simply adding one test if the connection
remains in 'connected' state soon after we obtain the connection's lock
then a subscription object can be created as usual, otherwise we ignore
it.

Reported-by: Thang Ngo <thang.h.ngo@dektech.com.au>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/topsrv.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
index 73dbed0c4b6b..399a89f6f1bf 100644
--- a/net/tipc/topsrv.c
+++ b/net/tipc/topsrv.c
@@ -400,7 +400,9 @@ static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
 		return -EWOULDBLOCK;
 	if (ret == sizeof(s)) {
 		read_lock_bh(&sk->sk_callback_lock);
-		ret = tipc_conn_rcv_sub(srv, con, &s);
+		/* RACE: the connection can be closed in meanwhile */
+		if (likely(connected(con)))
+			ret = tipc_conn_rcv_sub(srv, con, &s);
 		read_unlock_bh(&sk->sk_callback_lock);
 		if (!ret)
 			return 0;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
