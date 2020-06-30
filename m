Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBC220ED0D
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Jun 2020 06:57:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jq8KK-0002WY-NS; Tue, 30 Jun 2020 04:57:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jq8KK-0002WR-28
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jun 2020 04:57:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y3YcuWh4TSNu11coZ7ClwrRSgUxfLBjxwfVMdLtZZCs=; b=bGqv1Vvht6B74tBuM0781mm1Bg
 uRf5G9V7SEb3GJeIZ1mGGofVWlEP7J8n/13AlePokTh5w6/FDejF8WwEksC8UjBsbw4w2ERJlap9b
 4EpJCB3W1U3aDmco3YHBB59a59xVsKVOhSVPoLDjnb/yZl57R9ggtwbsbwIgCjzi246w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y3YcuWh4TSNu11coZ7ClwrRSgUxfLBjxwfVMdLtZZCs=; b=X
 0VrXqgwH/K1P4Sl/OvesjOWyxBp8tqmK/DR+SbV4QYMSlDt92WYv0ZwL0/O+N3IWTLBCdJnNwAxnH
 zAciMguBy0xRTM0LnkB60FPQ3ORqQQiTjFmfVwm/kk0XRwM285Inz29kIRMSmllt2LkPmT4VTVzV4
 f+I5yM+xDmkbj9Uw=;
Received: from mail-eopbgr50096.outbound.protection.outlook.com ([40.107.5.96]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jq8KG-006suq-Lh
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jun 2020 04:56:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ntk7zqmCmjIG7MUvc/AotPwms6hacwCUadg9uPzCAgJO8Acn/XzmzYyq9J1MgbKUYxk5coH3SuH9Mi4RFBgu+wb0KiPQtrbXP6zUPypG65ssKkNgTStMVq0IQgHIGo2LmUbjpCpiFc4HF5j/AMRarp7PJcJJ1rCZlhhn0ynlWkAleImLVFXtkFD68xYsQ3Ox7KUdnEjdu+5PHqXC8SCc/GNk2hPnEOyH7qhrFR0WRqcUlcKmqvMwscAHQ0qP79tcNFTkTuz8bbTvXnCVbAXPo39LOx80CZwrLU6cQ5uWjiWOzI3kKMjovMLUA16HA+JPKE2EwKdxF1EL34XiR5aAvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3YcuWh4TSNu11coZ7ClwrRSgUxfLBjxwfVMdLtZZCs=;
 b=WejKd+SMncJGNvRiELRDKbF47VdD7IYDRdMD22aD6MjAGQAeaFOt+oF1NxkEyMyIG+wV1I6mCwGoFZsdYx4MzayiXPk+IL6ynWkKMugCj0D3N7br3aoeUjGldsZDhoS3xTwt/kBVjRoetWmZpwVm2WRYUE/DNzNvd306+KpyTKA2nx8r3ZiHLc4cWWuMkBy66OQal2i52epYWSHepp1+K86ADWoKHajdCE/+QMoU9I26EUov1i1vL1hOaPoiqtL8SGBZz8QT4vl/BjRjG9IEu7ICJ4knh85qyzuy79FIorhiOEL59e+jdNluY3L1Kd4aBvbxkrtJdH5qeWjuFV0cfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3YcuWh4TSNu11coZ7ClwrRSgUxfLBjxwfVMdLtZZCs=;
 b=nzw0CRgtL40AWSvcCkVPnEoGco/fKLoXm4TXxbe2rJ5u3ugyQUZt3eLn+4tkfiheTYBnmtQByx57d3q9Ti38QLtgmseS5OF7th9kA/4NKoDTxQllahYhMFdSoBLuzgBnx2kQ29h8blbbXQqhhcVOMKQk4YNqPRT0aoZszrFSQNE=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR05MB6278.eurprd05.prod.outlook.com (2603:10a6:20b:b3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Tue, 30 Jun
 2020 04:56:41 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3131.028; Tue, 30 Jun 2020
 04:56:41 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Tue, 30 Jun 2020 11:56:27 +0700
Message-Id: <20200630045627.24007-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: TY1PR01CA0184.jpnprd01.prod.outlook.com (2603:1096:403::14)
 To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 TY1PR01CA0184.jpnprd01.prod.outlook.com (2603:1096:403::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3131.21 via Frontend Transport; Tue, 30 Jun 2020 04:56:38 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f8f62742-94f9-42ee-dea6-08d81cb1fa38
X-MS-TrafficTypeDiagnostic: AM6PR05MB6278:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB6278A50E0906A7AE3E1154D1E26F0@AM6PR05MB6278.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0450A714CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G+1IKn2RXoZSy3ZalhzwPpSRDRl3sbtsZmp7Ph6WxpjWT9ENSzmYrWVKf+pG/niNwKcYF1ze7bEACF1TEHDM+Mp3ZAlWpdJhLL6jlbESldK7zW673n4GFvPhrYTQ6ngmqG1MIq6KYQf5HaApuXCMT3asvtKGTm5WtHlDycnQzJjCXLeI2bmoE0E+8AYAmt7tAL1JD5tQZCea8EQKDwJSI5g6icinqIGLzhjH/5vQnmsE2cx8KhEz5Tt81KPyOHeuU48ZgUPFbmeU63NkDUzSqDh28wBFfgAiV8E0HOV0x08a688aqCS024f2WEKaKvNgFvt/D+sRVgO/99IaSNMJgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(376002)(366004)(346002)(396003)(136003)(107886003)(52116002)(86362001)(1076003)(103116003)(36756003)(316002)(16526019)(186003)(4326008)(7696005)(26005)(478600001)(5660300002)(8676002)(66946007)(83380400001)(66556008)(66476007)(55016002)(8936002)(2616005)(956004)(2906002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: m2Xf42mqw0VxDMvEHW5jMFfEqFp51XYC1x7whQKYH8OmZblkeQZfqReYwdtq0wLluXELNn9IW0zbxPy+QEircn5rffUo0W0kBsfUfyMfEwwqbhgn/l2b797M9MIdJdyF1WJ4DXdtBOZWblZnRy08KTgroSy+TGjxBsuGQiYkdnBZeDENCjBVyRAL77ikjdhadlSSYDpFV8N4mS3WAR4jWwTyQGBbwO6ibbkCWs89rbGFObhLIb3ZKid5GvGV8qefNq3IaVcuEOsb67GBUotMg0QFwAE4O8V74txvi3I18F5ivlDAvBpfJY6aAki8GMO+i64NvzfTtSQivCUQlYVLy24gXGvi/UReWD9D4qANu4VCIs/jYbeMEiJJcrncGyNhd2PWOCRO1A23zWLmsQ2qdH50Pq+HLLOozCUHoRSHHoSqCuM1YDjR7AtO/eVgdcs804rh8miN5LY4O66LYM1TuicSPxHktcLk5bUP5OnwBzw=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: f8f62742-94f9-42ee-dea6-08d81cb1fa38
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0502MB3925.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2020 04:56:40.9582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0oZWLpqYd6Cp1xalRbM87ROtr8dJq4rwx1eMc9E4DU6+MHMUJzWvm/ZRtyhX+nbCcZswEN9c5PqCVoQxXWCTNbW1ykf7MkAf2R/BKCFia6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6278
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.96 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.96 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jq8KG-006suq-Lh
Subject: [tipc-discussion] [net] tipc: fix incorrect unicast link window
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

In commit 16ad3f4022bb ("tipc: introduce variable window congestion
control"), we enable user to set the link 'max_win' value which is used
as the upper threshold for the variable link window algorithm later.

However, since it is done by the same netlink command property
'TIPC_NLA_PROP_WIN' that was used to set the actual link window before,
it appears to be a non backward compatible issue when user tries to get
the value back but finds a different value (i.e. the variable window at
that moment).

Besides, there is another flaw with the 'max_win' where it is set to be
'TIPC_MAX_LINK_WIN' (i.e. 8191) by default that is obviously unexpected
(the variable link window will take place and go beyond that might harm
the underlying device...). The value is actually derived from the lower
bearer & media layers (i.e. 'eth' media) at the initializing time where
the default value should be 'TIPC_DEF_LINK_WIN' (i.e. 50) instead.

We fix the issue #1 by returning the 'max_win' which is exactly the one
set by user, while setting back the 'max_win' for the 'eth' media to be
the said value for the #2.

Note: the changes do not affect the variable link window mechanism, but
make the right thing i.e. it will work only when user really wants.

Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
Reported-by: Thang Ngo <thang.h.ngo@dektech.com.au>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/eth_media.c | 2 +-
 net/tipc/link.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/eth_media.c b/net/tipc/eth_media.c
index 8b0bb600602d..675b947eab89 100644
--- a/net/tipc/eth_media.c
+++ b/net/tipc/eth_media.c
@@ -93,7 +93,7 @@ struct tipc_media eth_media_info = {
 	.priority	= TIPC_DEF_LINK_PRI,
 	.tolerance	= TIPC_DEF_LINK_TOL,
 	.min_win	= TIPC_DEF_LINK_WIN,
-	.max_win	= TIPC_MAX_LINK_WIN,
+	.max_win	= TIPC_DEF_LINK_WIN,
 	.type_id	= TIPC_MEDIA_TYPE_ETH,
 	.hwaddr_len	= ETH_ALEN,
 	.name		= "eth"
diff --git a/net/tipc/link.c b/net/tipc/link.c
index ee3b8d0576b8..28834dafdc98 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -2662,7 +2662,7 @@ int __tipc_nl_add_link(struct net *net, struct tipc_nl_msg *msg,
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, link->tolerance))
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN,
-			link->window))
+			link->max_win))
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_PRIO, link->priority))
 		goto prop_msg_full;
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
