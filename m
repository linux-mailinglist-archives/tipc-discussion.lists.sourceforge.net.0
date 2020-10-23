Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CD8296A4F
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Oct 2020 09:28:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kVrUl-0000hN-3e; Fri, 23 Oct 2020 07:28:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1kVrUh-0000gy-L1
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 07:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NAr88LlgSZNioICAdP5FBxZl7z/2jQXYIh5qChqarkk=; b=CSTxl5hpTL7C+D4zBCMV/WniLM
 S6PuAFJiGV9BhuKdyR6xIjSpGrEgb45t7LyReQB6cgumiGwlhen19MuhO0i3wEI2+89VaVl3KF0Ye
 MsFpEqwiG88o4TEJjsGe29IWVOuenb+cDwv6EbtqmBfRRP2TA7ljc703ywhBublnsGVQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NAr88LlgSZNioICAdP5FBxZl7z/2jQXYIh5qChqarkk=; b=E
 wqv539hMKL+EJojCJOSWVFCGwYWA6HGa+S/Skw5kP1/+qg/SCt9fkUFlERqNTWRvcZXtZI3PW4EKa
 bmONCKNd+kQNhMLetRXb5A5riLaxake1cld653dT30mpgFkNVm9z04gYT/RV63PoMUdf+txmjzESb
 rzCfmtvlIVr7MUdg=;
Received: from mail-am6eur05on2138.outbound.protection.outlook.com
 ([40.107.22.138] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVrUS-003Zlh-BM
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 07:28:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PzK6JQMonzg2on38In3XMZ9ILFvN6zA9C63QCWKPNQGaFCQFVqF6NotTQeiNRmicIiJ0L1Kv0gB2ujKGY2bn4fa/8Y8Mc+JFjuTrMotNr8a3tfBmLTV5sQ2PsK/+wEzGVt8+gvfagyCtKQMVLJm3Ie9jgWDWdX7BZ84XA4CoGXcUBKF0RfjqMbp2nLe1bgF0GYOZt/CZr8OwVYqIhisDK6CN+MTQZjke1R+stk61bj918S0iUUb1CQF/ouWrJQI5zg+qIJVVgws1tEeOmoLzVcGsAy/Oh8wOC7mueeG2YwWDJcIyQA7/8dfbsjjnZ/w5LYpxoS+1FhXS2vd7wjKbYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NAr88LlgSZNioICAdP5FBxZl7z/2jQXYIh5qChqarkk=;
 b=JVN6tkIkZEe8/shBVX7D6uuSc/4hn4rUKVBM+pHLqFl/JPnQVT8AZqEgxXU4kbCT7NrY3A+HgPRhXZxXm97EY0rB8SKKl6GLX6w0dg+8TfjWf5DLvWhSi4vqFi7wSv5p8BEYjqE5N5GTT+DEK7YgRpe+l4r9UPuzt5Amg0fXB1reRJghI+2HsS/jPqObHGuxxXYTHPNGDodPrk+hIz36nS+p5kTX9LlQxys82NIKubaHr38Syl8GTpP6XG8ugtTH6uiN6SDO4ja0PZa5fMf33bCsJfbkfYxhdQHS9nEDztnuKfKyKLmcA3tWTtffJbXApZj69hMJcyxqADxg3OoO7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NAr88LlgSZNioICAdP5FBxZl7z/2jQXYIh5qChqarkk=;
 b=QpV9fQklsQaA8yw5YiZsDu42oxlncSe52XZeciizq7J6NoXUeja7Vj5FFIBIu6Qj9ZovQ7e/7nR/91BYbJlVjwFCMoHrnpRkcLX/HW1hI8j3/LGCIFnyIJhMAvHfVg5sUbMtr7bAuHMqKsL5mKIkuL1HfSZ8/s468dnfOnS504c=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DBAPR05MB7206.eurprd05.prod.outlook.com (2603:10a6:10:1b2::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.20; Fri, 23 Oct 2020 07:27:39 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56%4]) with mapi id 15.20.3477.028; Fri, 23 Oct 2020
 07:27:39 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Fri, 23 Oct 2020 14:27:25 +0700
Message-Id: <20201023072725.2143-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SGBP274CA0023.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::35)
 To DB7PR05MB4315.eurprd05.prod.outlook.com
 (2603:10a6:5:1f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.dekvn.internal (113.20.114.51) by
 SGBP274CA0023.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18 via Frontend Transport; Fri, 23 Oct 2020 07:27:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b11bc8a4-a46e-4ecf-2e0b-08d877251ef2
X-MS-TrafficTypeDiagnostic: DBAPR05MB7206:
X-Microsoft-Antispam-PRVS: <DBAPR05MB7206AD2DC8A3BBECFBC8547A881A0@DBAPR05MB7206.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:608;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +o3/uwtDqoYgL0ns70Mp4QDkD9AzQWu5ldPDCoefsyNhdJYgK316op1l+SZAB5vVDsuQdx77Qarzg2ChtXdsoDf3KSr9+eG5nN6IOcM5HFzH2dxKGSU3ehohr04WJTpV0u1ZoK/q3WFqjxBDkhEFwAl6+IFIBTJdDLQ2IbC6tXhJHfFY2aTpyf92jhpwU+Y1PIwEG54zGxPMMiTanFmoYKulkGrNmqxQE5azwEJ8yWrrpZ8p9pKENkEMKC0WbXGkr4rzlAbR0k/iQYabA1vwQqDC5pFFe0Tw81OobC8t21KxH6g42m9fXLn4r+tyY3R7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(39850400004)(136003)(366004)(396003)(478600001)(8676002)(6486002)(6512007)(103116003)(8936002)(2906002)(26005)(316002)(36756003)(66556008)(52116002)(1076003)(66946007)(6666004)(16526019)(66476007)(6506007)(83380400001)(186003)(5660300002)(956004)(86362001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: DuKw/Z0UyAD95ZDXM1Pi625my0GECilM0lSKHna2IflCDFHsXi9rgO8AwE9+CeJvcc7+NsujxypVZnC3Ffp1eRgmZjRY0E98O4yK8jgg9gyBekEdvOasE1QYU4+1JtQ4DW+OHYrkUnBE017GEUWDtZDh3zsVi2RlYixaaMXbLtpMtzztl98moiYhTk/VPZh5ai/M0Im9qadd2yzv57+cfS16ixm6S1Ey9qV4fVuQQM9nxCm+ydXDUxO9O75WLUTV5rBKaA7j16tU2NJScLelzVnPFyRIZRAC93xkfCM49QRlKf0OrSl/TIXeLBTSJxn2cBrJNPo2jAXkxf4jzZRC5IFu6BjLM2vAvjLFSdTRB+Lq/0RSigFlSeAgMpXZEUtkfZpyuYLFR0HDb1w8JIK8AXmOQsn1VJsXLMlUkLsGY6FD6nBl4l+bn8yF7agDltESnS1MohxPCPJ4a00F9gptelm9Ur76nRLafsg9x6S+vR7qeMVzPDJZh7/Xgg/5zyKt3DfJiFKmMpiHxFo/1dHPFL3b8Nc8DckFVS4BTFjDX4l0N5Jmr5ccVdfpx2dqPsinSNG3X2JGE3pAJNv0m0j6m4ke5DQhb6VkMT2Z4cduSbmxWFqtM4LMH4meVu1crOV+WvRwpFKx4TJyqYvIlyL0Dg==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: b11bc8a4-a46e-4ecf-2e0b-08d877251ef2
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2020 07:27:39.2286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OfaqTjOtVAyhlC6WrO798/BKkn/caGdGWz0u6sxg0P9rscdWrlfNNyFWA7PhcbuY/SibDXTYoxfcDwKEmmy5l5Kano68dCDvrb22dqqmeSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR05MB7206
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.138 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.138 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kVrUS-003Zlh-BM
Subject: [tipc-discussion] [net v1 1/1] tipc: fix memmory leak caused by
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
to avoid use-after-free error reported by KASAN, kfree_skb(head)
calling is removed from tipc_msg_reassemble() because the appending
skb is always freed inside tipc_buf_append() in the case of error.

Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/msg.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2a78aa701572..a193da26eb44 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -150,8 +150,7 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 	if (fragid == FIRST_FRAGMENT) {
 		if (unlikely(head))
 			goto err;
-		if (skb_cloned(frag))
-			frag = skb_copy(frag, GFP_ATOMIC);
+		frag = skb_unshare(frag, GFP_ATOMIC);
 		if (unlikely(!frag))
 			goto err;
 		head = *headbuf = frag;
@@ -797,7 +796,6 @@ bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq)
 	return true;
 error:
 	pr_warn("Failed do clone local mcast rcv buffer\n");
-	kfree_skb(head);
 	return false;
 }
 
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
