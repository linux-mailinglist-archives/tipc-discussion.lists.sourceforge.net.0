Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE831A9C6A
	for <lists+tipc-discussion@lfdr.de>; Wed, 15 Apr 2020 13:35:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOgK7-00007Z-7w; Wed, 15 Apr 2020 11:35:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jOgK5-00007D-A0
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Apr 2020 11:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5gh/2NdgvetxP4k4eQjfDU2laTC+uwc/yg5UlMCp2nk=; b=BPpIFiWVFTC05wynNHa1GrvaP8
 ijcQnLLSnjExK/db2tbjGws3PPK/7jV+dkFdxn2FbKCsjwY4l7rF7+n1uWWiuL5FJl/WZ5P7+7hkX
 u4p++XZJaUp6xCpDwd0Haj4PoTqBHVB3KB1MAeCRrYHG9VKCENJRxwh/0ps9+VYIjqWw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5gh/2NdgvetxP4k4eQjfDU2laTC+uwc/yg5UlMCp2nk=; b=j
 /DUCqp9EFV1HzPx2+A5BpKBmOnuJG37IGFeVxc+HiU4HkjeVG0Wp/pud4+mveU/L7/8WHVooDp33k
 vZE8reFZIgN/OURd19Nub+peL3DKAQFO2WUznbGGKv51DWBe66LjlzXpTvXLPZcS012/R63Vr7xOZ
 lu/rVTjxi05oAP0k=;
Received: from mail-am6eur05on2127.outbound.protection.outlook.com
 ([40.107.22.127] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOgJu-002XMK-T2
 for tipc-discussion@lists.sourceforge.net; Wed, 15 Apr 2020 11:35:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LhzP1uGNnQk6csSdnY0ACZ/q/TWh4j4oGbtaD9G0oi/FoAnkkeqf//DwVhfCpOFlzHIQh2e6KYHrz3R6FG0Hykdfm3DxJYZJvR5u5Q0ulYMXXcet8DMIuM2Hmuu0oMpOf09SwmSCXf8Z69a7CDNveKVZM4GVI3U8mpb+JTGrJaXHy0Q6v8WlClzdSH9+SCBxKZ8xcITgPEa4Oz7gAqeqOd6Bumk/Bix/PXmeBO5+mk15ge58P+6vSY0VB/lalh+7PXrYrO0dfdBq1Aa2utrEnLjqbWWbGRIqWnK/eLwp1dbIl7zfEvDomTbZYIN6+Z4numXd1F8/Buykv8y7vm42KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gh/2NdgvetxP4k4eQjfDU2laTC+uwc/yg5UlMCp2nk=;
 b=ezYusPOkE7xMbSZy10OsWCI8DTLPjJPhN3mtaJerDaj7ox5ROKgJKNUxb9J9EdO5EiTDu64K9utHKmj5oXujTc1Mtgd7lGo0POSjhlF3jc3Rp/Wg66JMuhJmyGBxSCZuxc02duo5ZPWwumBpEtPBWOLROXL3YV9SvpSsgRVCD/ju8EOl8GYWBYV47J+3y3zj6qsloOqDRFYOa8H6j/j2VWIOldLibsVG0nBmIMiqPJ9sGU6+Ohz5Zl7bsxQMdPnx68rklgj3HLuTEWyTGglKMeAHgAf0kvhkr3MoaYEqRDw6b5h2hFGPExCh/dpBU1seVIHYJOfUwG1y5KDqkxfSKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gh/2NdgvetxP4k4eQjfDU2laTC+uwc/yg5UlMCp2nk=;
 b=iyG1BWw5nOwepAjVWUr7QkVPVnVgfImZKmHkR0D0IEE56uNlLLZKVmszc63r/KlkSET/+vR+yoFc0SyUCZA99kBgE4k0O2NCAluYfQZQAsOuSsXLxslcPudacZYHXaOqNJq8h/DTZT8BogSS0wzWzGY4eGIU/UmJQeZxGMFa8W4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3991.eurprd05.prod.outlook.com (2603:10a6:209:1e::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Wed, 15 Apr
 2020 11:34:58 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 11:34:58 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Wed, 15 Apr 2020 18:34:49 +0700
Message-Id: <20200415113449.7289-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-ClientProxiedBy: SG2PR01CA0101.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::27) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.22.229.239) by
 SG2PR01CA0101.apcprd01.prod.exchangelabs.com (2603:1096:3:15::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2921.25 via Frontend
 Transport; Wed, 15 Apr 2020 11:34:56 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [113.22.229.239]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86beeef1-20ae-4022-2edf-08d7e13106de
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3991:
X-Microsoft-Antispam-PRVS: <AM6PR0502MB3991FD00AE1EA6DEDD1747ADE2DB0@AM6PR0502MB3991.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(136003)(39840400004)(376002)(346002)(396003)(4326008)(6666004)(316002)(66476007)(66556008)(2616005)(2906002)(8936002)(52116002)(956004)(7696005)(5660300002)(8676002)(55016002)(478600001)(86362001)(103116003)(1076003)(36756003)(16526019)(186003)(81156014)(26005)(66946007);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1bQw7psW8vQPTFWUHKOOmmwAXBiunW6dD+/kB3Tr9EsyAFx+MU6gWWqJCs1giRsXK9G80RsHTv4tEku5j1SgIXgwxhTLyceZddg8zoSmtj8e/8/sPAsrivCS4U+dVqdgorWRbvm82jdJI7OXbfDVOLe+yGB2Z0r0Wk9GEUzLua1W563P5sxRf920PFjkd4UNXrE1yOv5+jR86cz4DWLeKoDXK0PaCtDlDazSsoDLmoyE8Ns9lOIHPF6wf7SZ9l96bIaqQ+vIir4FGMAaB4nafDg9bZGZXMBhYuaTXNF2o2WS0K9QPRVdO1stuCmf2QFQv86AjGpddujEKcj/Yj7WzJMWsoehFLQU1MII1PWKEWtkx3CdTIlPBQzkUoTC0oV2W2oXbS6XmYGzZv7XuhTAOwborbH0CKVPcKD4oMVspFIcPcwVj09OTsOwZVMYQd7y
X-MS-Exchange-AntiSpam-MessageData: L3FpgzSCyUNll8nva/eSmQGZlbsvRTnIqpv/YsW7vXz8wCyIuhJ1Lq6jFKBxkys5Uf0qZqxR7xwFX2Yam9TVu5c8OuMN7zJxUHHlqi/p4GVkBfx+jwn8M0hn9J/zOX4KMuvjB0Ky8URPtDoAgAr4Ig==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 86beeef1-20ae-4022-2edf-08d7e13106de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 11:34:58.4344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KZ8NbuXKeqJSZHQ4DsS6+FgwgN/BvAX6OTnfDw8q8+mEyeybu3FdTmU9YxTBuPlRJnmR4gwOH6/rp98Z2/pRdozv0NX9AAJxOo054q33dWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3991
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.127 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOgJu-002XMK-T2
Subject: [tipc-discussion] [net] tipc: fix incorrect increasing of link
 window
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

In commit 16ad3f4022bb ("tipc: introduce variable window congestion
control"), we allow link window to change with the congestion avoidance
algorithm. However, there is a bug that during the slow-start if packet
retransmission occurs, the link will enter the fast-recovery phase, set
its window to the 'ssthresh' which is never less than 300, so the link
window suddenly increases to that limit instead of decreasing.

Consequently, two issues have been observed:

- For broadcast-link: it can leave a gap between the link queues that a
new packet will be inserted and sent before the previous ones, i.e. not
in-order.

- For unicast: the algorithm does not work as expected, the link window
jumps to the slow-start threshold whereas packet retransmission occurs.

This commit fixes the issues by avoiding such the link window increase,
but still decreasing if the 'ssthresh' is lowered.

Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 467c53a1fb5c..d4675e922a8f 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1065,7 +1065,7 @@ static void tipc_link_update_cwin(struct tipc_link *l, int released,
 	/* Enter fast recovery */
 	if (unlikely(retransmitted)) {
 		l->ssthresh = max_t(u16, l->window / 2, 300);
-		l->window = l->ssthresh;
+		l->window = min_t(u16, l->ssthresh, l->window);
 		return;
 	}
 	/* Enter slow start */
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
