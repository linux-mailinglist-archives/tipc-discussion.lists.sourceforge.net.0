Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B307625D390
	for <lists+tipc-discussion@lfdr.de>; Fri,  4 Sep 2020 10:26:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kE738-0003Ks-OO; Fri, 04 Sep 2020 08:26:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kE737-0003KT-Gz
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Sep 2020 08:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u7Nn97gDzoJ9xFuYPrIoJ2eA//t/ZN0c2cDbCwy3Y0Q=; b=BTkB87r+/QhVGZIKexVOCiwqHI
 pfhHl3VZuDZlXSdtzHgDEBqajfWccIDH4F6GHDAftETyT6MpyfI8pitVxtccVWZ0iWln1ONh/FlaG
 eby/EdEHNxANvmUF2EYPnwpWkQJ6ll8mqekKHWDVyRaWWvxrjAcDlFTsNT89GF7mtYiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=u7Nn97gDzoJ9xFuYPrIoJ2eA//t/ZN0c2cDbCwy3Y0Q=; b=U
 9cXXn9ebnfHigUmYC2ZKGFa8BSaT0sIJd6csIyzFhhwfpIljVAfvZKb5BQtfsfSBkQ2Cc+VXGqrYU
 BUZ0xi9FPBnZc/aqOhAMIQ6D5xwJVm+7G2/LvpLdBtkMk8na7mFd4ruOCXFWJeVVIECVCn09E1oOc
 P2tGF70Rkw2Y6+2E=;
Received: from mail-vi1eur05on2122.outbound.protection.outlook.com
 ([40.107.21.122] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kE72x-00CPCU-HB
 for tipc-discussion@lists.sourceforge.net; Fri, 04 Sep 2020 08:26:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixV7ZmhAI8HvLtS2nKsWS8sZFalA5vqyI28NHs8mAA7LYNjHvonBX5/QjRQrzAvBIdWwlOgbKppuMl8ca+fhLPu39nKMzi6cec5GZL+pDvRnbfOPrwxsEai9jleIuJdVOH7OS1nK9ZULpDFHOtzufL9kpHjIheeohU+FT3Wd1nhIuYX/Ch8a168n9727IyxBUie0EP7IoRDOHUt2Kgc36x7/aUDyerDM48StbXouI8HkWoGNysrmgYh3Y5JWnFw5mKup75aIoniPXAoZlPzI4LR4Ns+pXwhMKYgw29G4mWvFv7DDxZf3qDn4bK8iAXnNVVZMwJJtFlFs/4ma+xNmoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u7Nn97gDzoJ9xFuYPrIoJ2eA//t/ZN0c2cDbCwy3Y0Q=;
 b=itlAwn6XnMJGrZ3KWPNGjSwfJeXOmnAnOKrqNhScaDZdAgz2w/OB8gi29CxMBq/Oh3Xd5QeQX5pkzcvD/jINLS0nThWSUik/y0MDA8QcoXXxCRhJyB/mVEnlpJHtJsFtYxC7EeL+NSHYP2Vh/iD6K91vheSX+maZa8oUh4yhAZX48B8XvwVTjqkPXH4UIrWZu7lxR0IC2pNGrfaBT/VzXbovUuJFNouBzTnqi/2xil2Oaz5qRAyHbuLNGkl6xWUXfIzNWO4ptJG7+reR7voUSafiJA56TbunP315TVux8SdCKGbCWX3Qca7hYyM5E1qmZEUHLfqJP/st2MgPCnWX8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u7Nn97gDzoJ9xFuYPrIoJ2eA//t/ZN0c2cDbCwy3Y0Q=;
 b=fOGbRy633XyqO2zzbd/C3zscb5wQ/ISqgqU/RN/I2/ZNzsrus8JW93S0Bnq+v+MwoBd44b1ccoh549vdbRh4/EMMFQ30fDCE+IO8huH1aBuBlFEyNO01AFGm/rIJG0gxG2ZG6ean/DTGVBti8DtUmdhLRC1AeoKfRhXla4XwaqA=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com (2603:10a6:6:4d::19) by
 DB7PR05MB4187.eurprd05.prod.outlook.com (2603:10a6:5:18::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.15; Fri, 4 Sep 2020 08:26:03 +0000
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::2875:a69e:ac86:3347]) by DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::2875:a69e:ac86:3347%2]) with mapi id 15.20.3348.016; Fri, 4 Sep 2020
 08:26:03 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri,  4 Sep 2020 15:25:50 +0700
Message-Id: <20200904082550.394270-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SGBP274CA0019.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::31)
 To DB6PR05MB4598.eurprd05.prod.outlook.com
 (2603:10a6:6:4d::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (123.20.195.8) by
 SGBP274CA0019.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16 via Frontend Transport; Fri, 4 Sep 2020 08:26:01 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [123.20.195.8]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25c4f569-a233-4d99-fc7f-08d850ac2954
X-MS-TrafficTypeDiagnostic: DB7PR05MB4187:
X-Microsoft-Antispam-PRVS: <DB7PR05MB4187EC3E5A65203FB7036A98F12D0@DB7PR05MB4187.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jTm/Jm8Hpm5tA7n8xGykfS+oQEUULfUDjwFujrYaBjEVcoldJjK6YE8S8xhv4i82vKTGZrwZxHYG8sH6HuWyjZQjtMGgAKjp+o2Gg4Khu7xjTkFFv+kOc8U3Ix35GOjJVl05pQ1m24DyYSusfAQreEzZpFZgefb8VEQnvSPvUjA84OIreJ54hQZJ6Iek4wlrgv5kaM3GA1JTBs3KpP0AWIUBx6SzxG0bB/BryOoQXoR1XJHcVs9hIyLr9AstkEP8/XwJ/F+o7CjUsmEMnALeeZYwwKZXDzSfxA80GoWz9TwJz3X+lNerznpMh6MvFh3az72H7I/4bplYtJRjLiuYgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR05MB4598.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(346002)(366004)(376002)(136003)(16526019)(4326008)(186003)(26005)(2906002)(8676002)(8936002)(52116002)(7696005)(55236004)(6666004)(316002)(956004)(478600001)(2616005)(103116003)(5660300002)(66476007)(66556008)(66946007)(1076003)(86362001)(55016002)(83380400001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ek+0r2m8wmouTauhnSllmDR5P2NaogW8iwUhNpj3i5vbW+I/Z7bvnpbXWNfzZscsihEqCrn8VJJcOMgHIzdrKnDVT+d5ccGynOEzL6qisA99WxZe3OxxR1RYdMuBMNSYY7kFwkq8bopL9M4y9xuorUryw2vi3hZLtVMw3F1kPnx/Zg57B0yeFRLkPml83xKMmjEZXLTROZ3KLjxB8XPIYRjlsODRmmnevbkcAzJYf48CXnpxvuplPqpVz/9Vb0fH1lGzVx9sH10w7Lfm5ogpLiNHA4pnD4bc+54E01vB+JhZW/0J7nuNrkE41bLwmx3//B5+USKubdgaetbcqYAqkQxk7UKEu3fDXyVqNC7RrDQe4uZh27zwcwoIeJbDLliofhNigbFngIjTrwt12tPjRpp34DbYkxUgKVyQS7M/lz6uK4LgLpjgXn2ye1RffBObpJcyl0FKAAWJBjmvZqoR9HN5nBK06ejPF0cuamfszMirWq6zeeHWp70gS5TXF8rtyxGkOgh9VUA01ZpB/ogWyzITmcQMhrvV5ZBP/zv48OzbYkVINVap6l9c2vTrNnE8xcG+TnozUQiji5egH3hYn2Ble5/dzjeGDXUA90boUfYOcxaJC8FqHxmKxt2sAiU6EvR5iGZeMVNDw37rZdTN4A==
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 25c4f569-a233-4d99-fc7f-08d850ac2954
X-MS-Exchange-CrossTenant-AuthSource: DB6PR05MB4598.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2020 08:26:03.3926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9wI33mH60NWPOxr3EcR5M8ZxOayXmdON/kDXQMXKKrUoEzcG5aY+W7BHap5vkzHyamwIp+6DLTpDgJRSFeUNRwYlwzm2ziUYpuSkg1HEEls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB4187
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.122 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.122 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1kE72x-00CPCU-HB
Subject: [tipc-discussion] [net-next v3] tipc: fix a deadlock when flushing
 scheduled work
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
Cc: syzbot+d5aa7e0385f6a5d0f4fd@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

In the commit fdeba99b1e58
("tipc: fix use-after-free in tipc_bcast_get_mode"), we're trying
to make sure the tipc_net_finalize_work work item finished if it
enqueued. But calling flush_scheduled_work() is not just above
work item but either any scheduled work. This has turned out to be
overkill and this caused to deadlock as syzbot reported:

======================================================
WARNING: possible circular locking dependency detected
5.9.0-rc2-next-20200828-syzkaller #0 Not tainted
------------------------------------------------------
kworker/u4:6/349 is trying to acquire lock:
ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: flush_workqueue+0xe1/0x13e0 kernel/workqueue.c:2777

but task is already holding lock:
ffffffff8a879430 (pernet_ops_rwsem){++++}-{3:3}, at: cleanup_net+0x9b/0xb10 net/core/net_namespace.c:565

[...]
 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(pernet_ops_rwsem);
                               lock(&sb->s_type->i_mutex_key#13);
                               lock(pernet_ops_rwsem);
  lock((wq_completion)events);

 *** DEADLOCK ***
[...]

To fix the original issue, we replace above calling by introducing
a bit flag. When a namespace cleaned-up, bit flag is set to zero:
- tipc_net_finalize functionial just does return immediately.
- tipc_net_finalize_work does not enqueue into the scheduled work queue.

Reported-by: syzbot+d5aa7e0385f6a5d0f4fd@syzkaller.appspotmail.com
Fixes: fdeba99b1e58 ("tipc: fix use-after-free in tipc_bcast_get_mode")
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/core.c |  8 ++++----
 net/tipc/core.h |  1 +
 net/tipc/net.c  | 10 +++++++++-
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 37d8695548cf..5e7bb768f45c 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -60,6 +60,7 @@ static int __net_init tipc_init_net(struct net *net)
 	tn->trial_addr = 0;
 	tn->addr_trial_end = 0;
 	tn->capabilities = TIPC_NODE_CAPABILITIES;
+	test_and_set_bit_lock(0, &tn->net_exit_flag);
 	memset(tn->node_id, 0, sizeof(tn->node_id));
 	memset(tn->node_id_string, 0, sizeof(tn->node_id_string));
 	tn->mon_threshold = TIPC_DEF_MON_THRESHOLD;
@@ -110,10 +111,6 @@ static void __net_exit tipc_exit_net(struct net *net)
 	tipc_detach_loopback(net);
 	tipc_net_stop(net);
 
-	/* Make sure the tipc_net_finalize_work stopped
-	 * before releasing the resources.
-	 */
-	flush_scheduled_work();
 	tipc_bcast_stop(net);
 	tipc_nametbl_stop(net);
 	tipc_sk_rht_destroy(net);
@@ -124,6 +121,9 @@ static void __net_exit tipc_exit_net(struct net *net)
 
 static void __net_exit tipc_pernet_pre_exit(struct net *net)
 {
+	struct tipc_net *tn = tipc_net(net);
+
+	clear_bit_unlock(0, &tn->net_exit_flag);
 	tipc_node_pre_cleanup_net(net);
 }
 
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 631d83c9705f..aa75882dd932 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -143,6 +143,7 @@ struct tipc_net {
 	/* TX crypto handler */
 	struct tipc_crypto *crypto_tx;
 #endif
+	unsigned long net_exit_flag;
 };
 
 static inline struct tipc_net *tipc_net(struct net *net)
diff --git a/net/tipc/net.c b/net/tipc/net.c
index 85400e4242de..8ad5b9ad89c0 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -132,6 +132,9 @@ static void tipc_net_finalize(struct net *net, u32 addr)
 {
 	struct tipc_net *tn = tipc_net(net);
 
+	if (unlikely(!test_bit(0, &tn->net_exit_flag)))
+		return;
+
 	if (cmpxchg(&tn->node_addr, 0, addr))
 		return;
 	tipc_set_node_addr(net, addr);
@@ -153,8 +156,13 @@ static void tipc_net_finalize_work(struct work_struct *work)
 
 void tipc_sched_net_finalize(struct net *net, u32 addr)
 {
-	struct tipc_net_work *fwork = kzalloc(sizeof(*fwork), GFP_ATOMIC);
+	struct tipc_net *tn = tipc_net(net);
+	struct tipc_net_work *fwork;
+
+	if (unlikely(!test_bit(0, &tn->net_exit_flag)))
+		return;
 
+	fwork = kzalloc(sizeof(*fwork), GFP_ATOMIC);
 	if (!fwork)
 		return;
 	INIT_WORK(&fwork->work, tipc_net_finalize_work);
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
