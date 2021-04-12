Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9911B35BEA9
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Apr 2021 11:02:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lVsSk-0007BY-Dk; Mon, 12 Apr 2021 09:02:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1lVsSg-0007B3-Tr
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Apr 2021 09:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qDOB/guuBX7womWwy3oIc7rNKkLytC3Zd9j+9cfroOY=; b=Ck3uONovrmlbArl47dWC11aiZP
 vTpgHtONqm4JioGK72PPv6d0LEONEwaAhlS65OWyxggbmPLS24ojqhBSa8zqCl78qEI1IpnX94wXf
 VK5fkx5asGq9jVsrmifZRAeralahWr5TJJ1BgPslFgMma3tY3HcEQv/RTkwwnr2IuQG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qDOB/guuBX7womWwy3oIc7rNKkLytC3Zd9j+9cfroOY=; b=F
 +82NGk9PHgv0KJvZYL/10MQVs8wEdH+zGeVTohxQ7dU13ufJ+fRhrgrpOCBYOOS3ZWLSpoJMS3k7z
 cNYzvdcPKPOIKXHszvVLEnBQfNnGBMVvjo/LIgdQyxVHgaaESferjwY9Vfk7CIxWv0g94GfvyuM2c
 rcbrK5ADcvYaIUTE=;
Received: from mail-db8eur05on2113.outbound.protection.outlook.com
 ([40.107.20.113] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lVsSV-00025d-E5
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Apr 2021 09:02:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iZKcScdVwxaKFZX7hSsWB02HWuuRkVuaDBr0emVm7pVzCTekVLxEr54CbWtEmO1GedCV6fVskPRd6ADMZxM28yyOlw294UyihT2f9B4wHA4INnZSPda1SKxahHn47e+2INNaTZ6FWmx+4tGezN/9mN8Tp+cNMp91MkKsvkS1a5QoLcHgETjuYZZYrJiznR6xWQuM9E6llbc9l1RriYiqmq3ob0aOmX/Ah4QHSUnVh0LqIWv2rg7Up0eChVCFMvGplUzf5Eo4XRYXUvl6Dr9DtgRqmmGvA4az+6s5C5exV0BVQ0BwJhpAqkgACxyT9kb7O6FZT+tDRbKjhAjpDUe9dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qDOB/guuBX7womWwy3oIc7rNKkLytC3Zd9j+9cfroOY=;
 b=eYMfQ45FYDEWlU5THL4bi+cFKak1vWs4c0cEXVEyi2oEhj3Fdd/GJ26La5QcNqSSgo5fPAd4KvdRWXFjKnye1mAI5CyMAMmOkAdnI9IGnG1eIYtgnN9bSvsW47/4SCI9naF1xmEzDsvJUevp6i1+simN3Jbn3zkCRBjdYWmMjHi7Hcsy+lg5iP9CjGqGx/hV5nkqYuwhT2jSH1PLY2e9+PEIGpo7fCODcU2VAHoHLz6Jh5MUEl+Wt8NIj63qKySPPIPP0/EaaHdqB0aPwBGnLKclUtYbYrYlpMz3hyILuYlJR4zq0gHYYE1fFKMdvtF2HPQCeOMGAAR1Ek9bOm/5YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qDOB/guuBX7womWwy3oIc7rNKkLytC3Zd9j+9cfroOY=;
 b=QiMwZYHRk7A13/RyXxydovGjspM+AkcSD/iBRZWVG0f/YEPcw9RTpIJIMir4wEt8BRlIusR4DPFlET4pSNv7CBs4mgCKDlVrQJu51tZqzaejLSBYf51w23Itfv8+1tlSsgAOo2OsyVTuYJ6x7FZAc63F4faxTTAQwwRskqoE5dQ=
Authentication-Results: mail.ustc.edu.cn; dkim=none (message not signed)
 header.d=none;mail.ustc.edu.cn; dmarc=none action=none
 header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB5183.eurprd05.prod.outlook.com (2603:10a6:803:a9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Mon, 12 Apr
 2021 09:02:08 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::5573:2fb4:56e0:1cc3%6]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 09:02:08 +0000
From: Hoang Le <hoang.h.le@dektech.com.au>
To: lyl2019@mail.ustc.edu.cn, davem@davemloft.net,
 tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
Date: Mon, 12 Apr 2021 16:01:49 +0700
Message-Id: <20210412090149.57171-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: HKAPR03CA0022.apcprd03.prod.outlook.com
 (2603:1096:203:c9::9) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 HKAPR03CA0022.apcprd03.prod.outlook.com (2603:1096:203:c9::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.6 via Frontend Transport; Mon, 12 Apr 2021 09:02:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5074101-a5d8-469b-f2a1-08d8fd91a678
X-MS-TrafficTypeDiagnostic: VI1PR05MB5183:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB51834C6E1224D55F3116310DF1709@VI1PR05MB5183.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:95;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zd0sKsAfESuGZWbBWy7EB3gpyQcmyrEtZESwn4IsDClr0u6CIxCXcyfN/XPpHrkIk9zKTGUjZys5Ouwn4PotkIbuhx9ZOAGheoEk+MFibNMQLh3TmUMSUkaH1X7MjjNbg5Tsq838Y+1NbVIVGA7mXJoyzwt2Ciu7LEl1+SHsRUhTELDnxSKOkW1/9NalFCHeOmpnl27LXX1S/WH7DSE2LmdNdrxOluJ1gY5HvzubATQjF8LIuegHcuRTG/TupCGGgq3JUov7rvLZmAh+bISi6uMZtUPC7KzyN7nv7X7twctb1o7vNlsxOkD5qdl5stqmebNu4MsNyPM768M1wHiNPlxD/GSYrSnVpiukWd97YSsFcd3tVLlsaaFSAjh/oAdpJqNfMweU/jWm7rWAHWuZICmB1+L2TyvL9PVQbH7/dYbrpc6uL9S5PptmxqlhozFZa8Rvwk8o+oXQJ3Ot1ofi6YJy8lWa+j1WCPMrKD9Vz92263eKio7lQtx7W+FkqKzJMCPcUFA5eog0WgnbRLyE4PBBrgOlb7B2c03XNfpGzHoBJgWzrUgE6I4sGYug5hAZ+gM+VpsM5EjD6gfGYoAUrCWOA/H59Wv3kAFcU+oWivMJw7v6O3lRfbU8FHpWBJsrMsbyLHVhq3P8paISgSjxXu61ApdWZJg2t9oWEIpG9tE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(346002)(39840400004)(396003)(376002)(4744005)(1076003)(86362001)(66476007)(66556008)(66946007)(5660300002)(478600001)(316002)(38350700002)(7696005)(38100700002)(52116002)(2906002)(36756003)(6636002)(6666004)(8676002)(55016002)(103116003)(186003)(26005)(16526019)(8936002)(956004)(2616005)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?0pzUvaIFTkw4HDRvVag3Q7Zugi94kThmLcOOiXwHzUmMFXp4Cz6PchRob0oy?=
 =?us-ascii?Q?Q19ymoOSy1CXqceL/DExU6rtx0AwKbQSnfclg/l86Nex4NPhXPWRtIPXLRKB?=
 =?us-ascii?Q?gvTRsOd4NnF96GpJEoskfAzARWeLFdD+b1rEFJ2kLqFAaRtp1tOhyaSCd5Q9?=
 =?us-ascii?Q?FeCkog8EYtRjF15RTPjL/hGhXEkGrqJ5a5Cb7R1wMvmjJm4oJlnjok4XDif+?=
 =?us-ascii?Q?paOQ6IzTF34viwmObDzEWSWtYldbnP5opl8oUrfxVhJqy8lKqgosTC5tlkCx?=
 =?us-ascii?Q?s4twbAsDJMcyg7ygKdAyhuHioQarouPjpIQWWHudxllIsHcmKzWHvvMee2Aw?=
 =?us-ascii?Q?gQdwinte3PqxfEyN8G8RZKjyjSdf2BZHuE4O8NoEHdAu/TYIuWiJAvyIBTTj?=
 =?us-ascii?Q?5yFyTwLxDfvdrSNU4RUIarx10L+4y/JWVeWE9LXNfdkbZnXeo1dZVjqHtCYT?=
 =?us-ascii?Q?hPYPhIjYD5jZ66mfOJiCmbCYx1kmZV6+cDtu3OMP1yFEssWtUM30HmLkw1/W?=
 =?us-ascii?Q?CR6sYEx00QGh2j7iOfjpcW0GJrqZJExT9hFrSsspLQuhRkkBDBCuS5byuf1T?=
 =?us-ascii?Q?u5GGpHCQJdDfTrgRyjvOt1eLr7FjeQGpZC5WgSli+umUGxNM6O3NnqmBfUmX?=
 =?us-ascii?Q?BtRa2BH6mE4bv/+qh2+nfOrmaiEXzSUDE1Nby0LbevUERHEQGB6YhMkTW3fh?=
 =?us-ascii?Q?COE+Q7O67ipDdJtzmoQhGEv6UYqMkQFedJHzUN7NDcBHVd1EhTchJ+Wp8lkK?=
 =?us-ascii?Q?FYl4dBO19jKdixQRHmnuRTY68E+y7wofnLrkAs0jQSaX9FfjJf8E6KOYW1Gp?=
 =?us-ascii?Q?NQm5hB+54rQr1dIFIYr4wC4XKXDJQIz1G7cieyqDXAQPDwinyZkEGEXmJTYc?=
 =?us-ascii?Q?fcb/heFalCa91mVnWVJZuGCoYPFrMxq6YmxNAOSRo1N3V2V+HJ0ckGD2pQP7?=
 =?us-ascii?Q?tshPp4OChsNl3GAQ+egLtmeWqTPf3t8xQgMQCMSW/0nziIRLH+c/XMzLXTYT?=
 =?us-ascii?Q?UbwJv9105iBrnuy8cDjyhe7S/HtNtxrrrmJ20f4Go/bX4z6XOhJQ4nbRFHfk?=
 =?us-ascii?Q?m8uWewhyd3I1djzIvelHyyHx/og48gJZIWc+2JJjD9fwTw7l0WH0tltpRTKJ?=
 =?us-ascii?Q?jJQ0PKSMDdwVcbD7VGg2s1xpVDPfQbmrjUmIYHIeAPrJQbIjyM176+iWYFAl?=
 =?us-ascii?Q?6RXY5MyLf6h8N85VKNDMRRm9aHw8gy/icBJQrKE3sbvZQGtjvNRGttNtNMXO?=
 =?us-ascii?Q?KUWwzpYCWhlys4blNLhTvOJjiHmxBRpPMf26ok9P/Hn/BiLYXZ9ap+Vghfcn?=
 =?us-ascii?Q?hULlQpKFVpb/FlVM4fCr3yWK?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: c5074101-a5d8-469b-f2a1-08d8fd91a678
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2021 09:02:08.1832 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CiOsYkG3EaWck/qTdBPc9viZZrHjsuWehFzM50iwfFviLH7gntL71eMEmTq3jPrcSZ6ye/hzDIA7uPhbbiymsiwC1htFZXBXGn5uloj6i9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5183
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.113 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.113 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lVsSV-00025d-E5
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

Above fix is not correct and caused memory leak issue:
In the function tipc_skb_peek, skb's refcnt increasing. Then
we have to call kfree_skb twice to decrease skb's refcnt and
free a skb.

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/socket.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 58935cd0d068..f21162aa0cf7 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1262,7 +1262,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		spin_lock_bh(&inputq->lock);
 		if (skb_peek(arrvq) == skb) {
 			skb_queue_splice_tail_init(&tmpq, inputq);
-			__skb_dequeue(arrvq);
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
