Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDE1296B13
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Oct 2020 10:20:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kVsJ4-0001qc-OB; Fri, 23 Oct 2020 08:20:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1kVsJ2-0001qK-Q6
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 08:20:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=acADJ/VHg0J5nmaRDi5rRCuTsSDdRr91+ZbqMRiBU9Q=; b=gaApYUurystswSejI18W0CM7Qj
 cpVg6ysBLSdcO3HYg4dMDKiuQ0pjXgwaXMKXWwmU9SyP8/gOYyk9/3oLyFnQhFL2jKwIkBCXVjajM
 vqdrRB603wUyuOoPxY2bf9yfUNNfND2df1HMZV3URgXXYXObFbFmSKy9zPjjMyxwBVxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-Id:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=acADJ/VHg0J5nmaRDi5rRCuTsSDdRr91+ZbqMRiBU9Q=; b=V
 kKGW4WxoGbFsSWBkATAOjhySpXQT0u3yplKzxJO0Sy9p/b1hptlgIYplUEdu0hKTP22OXoPuE+WXN
 2jm7fK6OkXnfJZe+RGF59uNTOjDVc3AIycWLdK1+iErpbkGBP7lCuf9jevIJ5PYpqjGQRqsAlLd6i
 shUziplf2q1l2r5A=;
Received: from mail-vi1eur05on2104.outbound.protection.outlook.com
 ([40.107.21.104] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVsIj-009oIi-Ch
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 08:20:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HMa1V0w0RdPUUpOJsfnQh2GPEWfGVByBOlx95an2JM+nG7UknFAVcCR/lLztKq/2CBkaz97Dn4J6LD/bQtiwTKi567LDfLRVJDqw3Ogydgta2hFM+7g4u3nL9A+fh/Hx2VeG9LlFlHEwr1NUw5WD2ifkBWECYuoRngyYvQbbwPo50PzyHJjk6uTGRqg7A6Kz82LD2Fj1K+Sxv/y4cKKFosN3e1mNXmWcW99S8RoYHc9MR5NEtwgNKfynYsGi267/Jn2WYQ4uVfmfAJAR8AJix7+5uHEdMeu/KWviZJZKd8tmcS/YaxkXTNPEbuNE/xhkH3eqZdAeiAbS78ZsVjHO+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=acADJ/VHg0J5nmaRDi5rRCuTsSDdRr91+ZbqMRiBU9Q=;
 b=SQ1Fm9jTbDIyHBvnYvuqy3o/4nCL+aWqW5fB1Gg+uzNsoNAqcZCaje7oKalU1XbMYw0E7E2NuWN95AJnLUi6Y6cJsxPWhXo7KI0jl0Y0yrd4BWSj9H34WOfDuI1JjTre1OwxFeOOL9kCAkj0C42tdvB1rD/il0OQSlhtVgbEflZtpoj6MX7r/52Dn+y5H5YBFdheAnNNn+n5/kb7w5orR8cNfSKGDcFB9wqdEF3KQdw+JZyvvBSeP5ALSWgT9TXRG4b5nr+FHOywUcq0hT69krvRjzGj71c6q8wCQoTeNXR+SK5QDNypEIcKwDqJ8gjEuexwRTHXxQvWQcHFgBiA4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=acADJ/VHg0J5nmaRDi5rRCuTsSDdRr91+ZbqMRiBU9Q=;
 b=anbxqKH4dViDRw3UtIeDkKDsHlUNezgkX3rA7zpvHAHa+oNrSaIPjLMj0MZ+/skIkK3SCfuM/xLv3DhuwNwentluyOhBVof04eSw0Q8jVFBhPFOcCWb1v2duNuoNp3K9q4CVwLM+l0yGqcjVsfWeRLDFSLnJfEdwrOKEPA310pU=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR0502MB2999.eurprd05.prod.outlook.com (2603:10a6:4:97::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.24; Fri, 23 Oct 2020 08:19:45 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56%4]) with mapi id 15.20.3477.028; Fri, 23 Oct 2020
 08:19:45 +0000
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Fri, 23 Oct 2020 15:19:31 +0700
Message-Id: <20201023081931.23670-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.161.14.188]
X-ClientProxiedBy: SG2PR06CA0104.apcprd06.prod.outlook.com
 (2603:1096:3:14::30) To DB7PR05MB4315.eurprd05.prod.outlook.com
 (2603:10a6:5:1f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.dekvn.internal (14.161.14.188) by
 SG2PR06CA0104.apcprd06.prod.outlook.com (2603:1096:3:14::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.22 via Frontend Transport; Fri, 23 Oct 2020 08:19:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77b5e827-ed2c-4c42-2a47-08d8772c661f
X-MS-TrafficTypeDiagnostic: DB6PR0502MB2999:
X-Microsoft-Antispam-PRVS: <DB6PR0502MB2999DA7B5D41D0D0AB4712CD881A0@DB6PR0502MB2999.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0Mw21gPz+Fh45xclDaprAFG5dxStKG6RTCqnk637iTQJV0j19wlY5d+5I4CEBNQZxK21OjDEO742oAHaqoLr7s2s5WPvRlD3rozFndpANSKedwdzWIwUO3soJghjUvPAjEFs9fLyMyaq3cP9G1eaRR3JYjtIHOTHaUHcNVGAbcn1j5sQTq1pgVYmXIAOq1CZNvxL5tb9ELJXIEwTMDzDO04KrcZ3ohacPVCRnH9WN5wy5G3iaPmoA3ibQbt0+UAROjJyhIfA04T5dgFWTpYLGgWHo5EpzCHB0tY3Qi0OAwcqg70xVt1xG5vJB+b2mS1z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39850400004)(136003)(346002)(366004)(5660300002)(8676002)(26005)(956004)(6666004)(6506007)(2616005)(86362001)(2906002)(52116002)(36756003)(6512007)(103116003)(6486002)(478600001)(316002)(66946007)(1076003)(66476007)(16526019)(8936002)(186003)(66556008)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: kBu//M9jyys995rJZop1/dnqaWyu3UaII8vxw9FVkIli2RWv5bJ14FcaRJGv9fXUFAEOZc5vJL/rVinaW1TETXzUIK0visXO8asSI/cnHpayuNZ9f/VhyWUHxVNqC7tMyf6P2NQZljy+o2h6jdJbb+k5cO0mRZbcSvqnWul8ljnOEAWt8rECDKlxhgSrhC9PCtLovI7bO9pkTuMGayMRujx+ZZnKwtXzOX5Cboph7xBFL0oxu/lo1vBw32gnP4WPz8MMmFQJ1RdFTTcH5LFlqEwRIHFkbgXGSAlmmIfIlehAlsoNsk52lP37Wnycr6uU0W2CS9tehHXZn6PRYi3zBp/f+MUfO4kQ2tvI5wWRHI2npNwvCk7UO6iy/WsF9gU9WMWcQ0CJYE2cFqqYKNiY92l8/qRTNCn8tuG6wUU0i6pU/AG1fpdVPRplIhBNy7x0p6QeqAkThGmT/QkZZNlOHFpxCL2mUqifbfHWK8xWK8Ay6lzyUunURt2j6myM5h9MYgnECFLthTQAlaxioB2sZng/J35fZfpBxuY7mVEEXpwKVYMkNiuhKheYfYP6LwqxBX+9/UriIqAlu2L5VPidV8rqG89d3IDMczOepBr8kG4262e340GQ85GrLbNdWPSSotUr3aFLaecxzu1ZPzp9Vg==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 77b5e827-ed2c-4c42-2a47-08d8772c661f
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2020 08:19:45.1228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UybJ7bAKqBfUIx8eAAsQsdAHUEnXOwucOwp2416V1/7aDqlsccIL1ApOcVC7eXmIBzUiQG62Q8RgrHPnUXHS+JfMlqWKUKLlFc/H3UduXY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB2999
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.104 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.104 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kVsIj-009oIi-Ch
Subject: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by
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
to avoid use-after-free error reported by KASAN, kfree_skb(head) in
tipc_buf_append() is called only if the pointer to the appending skb
is not NULL.

v2: improve condition for freeing the appending skb to cover all error
cases.

Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/msg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2a78aa701572..46c36c5093de 100644
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
@@ -797,7 +796,8 @@ bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq)
 	return true;
 error:
 	pr_warn("Failed do clone local mcast rcv buffer\n");
-	kfree_skb(head);
+	if (head)
+		kfree_skb(head);
 	return false;
 }
 
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
