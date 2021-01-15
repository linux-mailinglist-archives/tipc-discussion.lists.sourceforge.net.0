Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EB42F71F2
	for <lists+tipc-discussion@lfdr.de>; Fri, 15 Jan 2021 06:08:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l0HLV-0007XF-5U; Fri, 15 Jan 2021 05:08:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1l0HLS-0007Wa-7M
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Jan 2021 05:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=18sAcbPjKka8XIau9wHcP3KyA1wUdaIIURCCWNDPNvk=; b=ZC525dV5xHdMvnHoz91F8zk5iX
 pUiEiYAWK1Ied2nhPiQ2sjZZ5VNw5duWlh1An9OYgojFkvZqiuqS4EQWMZwQ1rd/klgyCMAlX8nrW
 IxWryC0SKHHlz+b0XgbNE3m/Rx1jsfF6vBaEhF11uqgYGOiXnOxKQvDA1FzyO4CE+RcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=18sAcbPjKka8XIau9wHcP3KyA1wUdaIIURCCWNDPNvk=; b=I
 JYwhOKX43Jnb1LHM4Z3VcZbFzQtylrGVcgQJoq6IZ//jGQ4QnmYZ+SSCmbt/rYPTLdvOjhz8r0VNF
 ko5/DG5VvZf0KTGvHpnWkO5KWrDhU6bV67lP6vJbGWQYsrERmKru6aBn9LDiOB/qosdyiT70N7H1V
 0XcHymnWDylTlHgI=;
Received: from mail-am6eur05on2121.outbound.protection.outlook.com
 ([40.107.22.121] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0HLA-00Doyb-AS
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Jan 2021 05:08:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITWIYMDu7OX5CdrkQoei9sKyBOoSk5dovgUlC8uuXwY9Xq/nJx9z8DzeoGtd8GB/9ACj9ZvDZ/FXunT4yCmCHbvUz58lz4RqNNurnUUx15czrlgXCvID82WLlM6yNY4wHkZzTQwKwPejQu3yBh53RMywY/KT9vFV9P2f1xMMO2uPlAL/byR5vukmlMr7q+xSDkkaKZizRAvwZtf/c0SIwgeDztlbGjBTmVzbjtSV9TIaenXF2GhkxAP2rXIX1zbFrRzBqfigLcbNa5vOXJHsKrWOxDKKFn3W7pjzS3hkvwDZwsyRk4Nsq2OzVjwz70csbxy4BmulC7rTO4tvrRGcBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=18sAcbPjKka8XIau9wHcP3KyA1wUdaIIURCCWNDPNvk=;
 b=melb/HVc28eM7WEQq9yQu2KY7++TCWa1M1gr7HN5vI9uRZVYNqqfi63xzYjCi6jGv05uCtVsVc7ORTg29OrKZ6wy8EfHw1Uk6j6n66d2P0V/44Bl0xsYCyx7ZD5GQfJYNOZRzch01oLz4tm/280plIepJto1pLcVrtLPTTvIjEMtJBfUPGKu+c7ys2t3139rJq8ZCeifyYjVL0eVDu0D0aNCI6fvl0R+cp3HTWumR9yHlv823pgDWIuYANeyNnB2x/Cf9+w6Wqn6gtXWdvbWzCGgYu/T3cq2vmZbrXeXZ7USSLpnpliyAD7Q//6lx/LJhfJa04eUxvtwy5DGz46iZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=18sAcbPjKka8XIau9wHcP3KyA1wUdaIIURCCWNDPNvk=;
 b=HUugn3sbca1bvYJpnPiVg8kzFlQE9vor9AMS38u6seeyoyel5uud1Z763WieAHGIZUA+ezl0snMeajjXcEEO7Zbi6ekCzIkUimakrhyVOJm01OJcj5nSEGpvHF2SJJ3ykdSC5vRz7kMN7kwnaJjrZ+zrhCePdb8zDYbWLjHoUZc=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB4079.eurprd05.prod.outlook.com (2603:10a6:803:26::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Fri, 15 Jan
 2021 05:07:52 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3763.011; Fri, 15 Jan 2021
 05:07:52 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 15 Jan 2021 12:07:36 +0700
Message-Id: <20210115050736.61769-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: HK2PR0401CA0008.apcprd04.prod.outlook.com
 (2603:1096:202:2::18) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 HK2PR0401CA0008.apcprd04.prod.outlook.com (2603:1096:202:2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11 via Frontend
 Transport; Fri, 15 Jan 2021 05:07:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed0f2df2-b9a8-407b-bc8c-08d8b913825a
X-MS-TrafficTypeDiagnostic: VI1PR0502MB4079:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB407969A5FD8D6FA236EEEE72F1A70@VI1PR0502MB4079.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:79;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YtTXOO9FvUR37nCe3mgtUacV6r2uiECyL+XUjn9NRpuM9h/geVRdRcbYjKpUeERIBFw+3hvYT9yVsTkqpavGKdjBHYsxayVMa02/9Pvd5boZL3hoc5pxx92balbUr4WrQcihoGJJL/3zPAI6oRA+i9TMDjwm6eUU+lnjpbHhz5S+aprwvBY6uWBKi8S0lAnqnAVu9IESRvkfESbOzYYv9jszSQHRllVle1MdxW9WdxgAd8TJFPxt/IH10QXtjAP1HSn8/VeUUXveAaR+tM/lFWFOgYgF0/DLsxmYHIX6VN5Zkv0ECsGSWeXef3DwBDzOm3IOEaoAktQeGoWeLsu1gjDgZu3idZpjXkQoyKnywloZXzbXshs8wwiIZS4DpXqA1F9i7gjSPwq0NHibcH53Rw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(376002)(366004)(346002)(39840400004)(5660300002)(86362001)(36756003)(6666004)(8676002)(2906002)(26005)(55016002)(8936002)(478600001)(16526019)(103116003)(1076003)(956004)(2616005)(66946007)(66476007)(66556008)(316002)(83380400001)(7696005)(52116002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?QgFamWH+eF36blTflIrHfXAZNuTvvHPfcMXSVVssxnbjZOeGCpjiWRPaCkMP?=
 =?us-ascii?Q?b6JZZ893yHyFAXuPDIfTnj9cvAsJg+Cup7YT4R2nbNWgFPmkjshEq/KldB+u?=
 =?us-ascii?Q?PmXwCYtmkH0ALtmg8ATjxJFeghPbMnm2sivXdmSyvQ6NvesuHg6igf5s0fdm?=
 =?us-ascii?Q?PvCbTz+cbO+HrzB7iNRjZTOMAI0eDqvOlathf1uLJ436MGk24ljs4tqXdg9B?=
 =?us-ascii?Q?G4PrWETSmT2Vcsg5G3kWN8zQwZZYFvk0DqTOvT5L21HqJPbfYjVOxVMhwVqe?=
 =?us-ascii?Q?//mSpNEzB59LJ9+K5Nol6VWzdgWLmx9WbkR2+EvZGWv8zMAT51zWjI8owk3J?=
 =?us-ascii?Q?3Tv0K4tsdCVxlDVzUKfwIbhtItmRfUCFEc8QetO+oMuAWPGiSi17V8o8L5Xx?=
 =?us-ascii?Q?vAM3nf4I7HyklEsDwLNz92SICFk5A9Q6OAUEnqYWYJw2vSKwY5QdP1PJBENf?=
 =?us-ascii?Q?25FcUqVlgJx5WkhoMPfYgDv0av3zCCBzq8smbE9tQoreTtqwGf0uU9yq+bDu?=
 =?us-ascii?Q?6gi+kYfoF6MOuVnvveXLn9uGCCBtJ6sWR1URel/Pz3t4AGZDUxQ8K+B1yQqB?=
 =?us-ascii?Q?c2f1sDqou+DF92LvEv/q7UmlxYlgW33QHV5gMXVqJnIbgTmLtW2doF2XM7kU?=
 =?us-ascii?Q?kXkoGk7W9xLHdmvTqhXH4EXP/BxabA9WDlZGTMbuOKEN/8lDDnTNuREQYNs5?=
 =?us-ascii?Q?8TDEH8C4gwLotmp9Us1raD0CenfkjOcPhvkRTE/2ryVIhDxBt9VtMd3NEC32?=
 =?us-ascii?Q?nH77WZe8TCzmstWDKO+MGumtM7qAqt4crZDYW3p7LrfBSlvYa4ocEAPzYT+z?=
 =?us-ascii?Q?kJCJTB0wr8InqGFhqSatzH9f7/gC1193O4RVuaMSPVK8tnj6nlEiKaCwDeNB?=
 =?us-ascii?Q?ygdhhskMaeipR4YCKyBPxQWlQ14RqRjhj8w9eUREHKtJz/bHUbsOD/4DD23c?=
 =?us-ascii?Q?apAOmUn8GzTvUUHCzqa5R0nOZMuyPs+VUd6ejreBxidMNCXQUAZ4uL7eW2q2?=
 =?us-ascii?Q?b8JO?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: ed0f2df2-b9a8-407b-bc8c-08d8b913825a
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2021 05:07:51.9484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3GRxO7OeTu9rW/taXBH0i6WnzWOJS3nvLOhl7nYRZxB6u5t8Eh2ilzDX030X7XxpN4i/x3Mn4+BPAIBo2zBtSINmMXpB9MykFDiYq+b0n68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4079
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.121 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.121 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1l0HLA-00Doyb-AS
Subject: [tipc-discussion] [net-next] tipc: clean up warnings detected by
 sparse
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

This patch fixes the following warning from sparse:
---
net/tipc/monitor.c:263:35: sparse: warning: incorrect type in assignment..
net/tipc/monitor.c:263:35: sparse:    expected unsigned int
net/tipc/monitor.c:263:35: sparse:    got restricted __be32 [usertype]
[...]
net/tipc/monitor.c:522:35: sparse: warning: cast to restricted __be32
[...]
---
Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/crypto.c         | 12 ++++++------
 net/tipc/monitor.c        | 32 ++++++++++++++++----------------
 net/tipc/netlink_compat.c |  2 +-
 net/tipc/node.c           |  5 +++++
 4 files changed, 28 insertions(+), 23 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index f4fca8f7f63f..096e1c903e3a 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -317,7 +317,7 @@ static int tipc_aead_key_generate(struct tipc_aead_key *skey);
 
 #define tipc_aead_rcu_replace(rcu_ptr, ptr, lock)			\
 do {									\
-	typeof(rcu_ptr) __tmp = rcu_dereference_protected((rcu_ptr),	\
+	struct tipc_aead *__tmp = rcu_dereference_protected((rcu_ptr),	\
 						lockdep_is_held(lock));	\
 	rcu_assign_pointer((rcu_ptr), (ptr));				\
 	tipc_aead_put(__tmp);						\
@@ -798,7 +798,7 @@ static int tipc_aead_encrypt(struct tipc_aead *aead, struct sk_buff *skb,
 	ehdr = (struct tipc_ehdr *)skb->data;
 	salt = aead->salt;
 	if (aead->mode == CLUSTER_KEY)
-		salt ^= ehdr->addr; /* __be32 */
+		salt ^= __be32_to_cpu(ehdr->addr); /* __be32 */
 	else if (__dnode)
 		salt ^= tipc_node_get_addr(__dnode);
 	memcpy(iv, &salt, 4);
@@ -929,7 +929,7 @@ static int tipc_aead_decrypt(struct net *net, struct tipc_aead *aead,
 	ehdr = (struct tipc_ehdr *)skb->data;
 	salt = aead->salt;
 	if (aead->mode == CLUSTER_KEY)
-		salt ^= ehdr->addr; /* __be32 */
+		salt ^= __be32_to_cpu(ehdr->addr); /* __be32 */
 	else if (ehdr->destined)
 		salt ^= tipc_own_addr(net);
 	memcpy(iv, &salt, 4);
@@ -1946,16 +1946,16 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 			goto rcv;
 		}
 		tipc_aead_put(aead);
-		aead = tipc_aead_get(tmp);
+		aead = tipc_aead_get((struct tipc_aead __force __rcu *)tmp);
 	}
 
 	if (unlikely(err)) {
-		tipc_aead_users_dec(aead, INT_MIN);
+		tipc_aead_users_dec((struct tipc_aead __force __rcu *)aead, INT_MIN);
 		goto free_skb;
 	}
 
 	/* Set the RX key's user */
-	tipc_aead_users_set(aead, 1);
+	tipc_aead_users_set((struct tipc_aead __force __rcu *)aead, 1);
 
 	/* Mark this point, RX works */
 	rx->timer1 = jiffies;
diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
index 48fac3b17e40..c9e753a1c98e 100644
--- a/net/tipc/monitor.c
+++ b/net/tipc/monitor.c
@@ -260,16 +260,16 @@ static void mon_update_local_domain(struct tipc_monitor *mon)
 		diff |= dom->members[i] != peer->addr;
 		dom->members[i] = peer->addr;
 		map_set(&dom->up_map, i, peer->is_up);
-		cache->members[i] = htonl(peer->addr);
+		cache->members[i] = (__force __u32)htonl(peer->addr);
 	}
 	diff |= dom->up_map != prev_up_map;
 	if (!diff)
 		return;
 	dom->gen = ++mon->dom_gen;
-	cache->len = htons(dom->len);
-	cache->gen = htons(dom->gen);
-	cache->member_cnt = htons(member_cnt);
-	cache->up_map = cpu_to_be64(dom->up_map);
+	cache->len = (__force __u32)htons(dom->len);
+	cache->gen = (__force __u16)htons(dom->gen);
+	cache->member_cnt = (__force __u32)htons(member_cnt);
+	cache->up_map = (__force __u64)cpu_to_be64(dom->up_map);
 	mon_apply_domain(mon, self);
 }
 
@@ -455,10 +455,10 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
 	struct tipc_mon_domain dom_bef;
 	struct tipc_mon_domain *dom;
 	struct tipc_peer *peer;
-	u16 new_member_cnt = ntohs(arrv_dom->member_cnt);
+	u16 new_member_cnt = ntohs((__force __be16)arrv_dom->member_cnt);
 	int new_dlen = dom_rec_len(arrv_dom, new_member_cnt);
-	u16 new_gen = ntohs(arrv_dom->gen);
-	u16 acked_gen = ntohs(arrv_dom->ack_gen);
+	u16 new_gen = ntohs((__force __be16)arrv_dom->gen);
+	u16 acked_gen = ntohs((__force __be16)arrv_dom->ack_gen);
 	bool probing = state->probing;
 	int i, applied_bef;
 
@@ -469,7 +469,7 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
 		return;
 	if (dlen != dom_rec_len(arrv_dom, new_member_cnt))
 		return;
-	if ((dlen < new_dlen) || ntohs(arrv_dom->len) != new_dlen)
+	if (dlen < new_dlen || ntohs((__force __be16)arrv_dom->len) != new_dlen)
 		return;
 
 	/* Synch generation numbers with peer if link just came up */
@@ -517,9 +517,9 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
 	dom->len = new_dlen;
 	dom->gen = new_gen;
 	dom->member_cnt = new_member_cnt;
-	dom->up_map = be64_to_cpu(arrv_dom->up_map);
+	dom->up_map = be64_to_cpu((__force __be64)arrv_dom->up_map);
 	for (i = 0; i < new_member_cnt; i++)
-		dom->members[i] = ntohl(arrv_dom->members[i]);
+		dom->members[i] = ntohl((__force __be32)arrv_dom->members[i]);
 
 	/* Update peers affected by this domain record */
 	applied_bef = peer->applied;
@@ -548,19 +548,19 @@ void tipc_mon_prep(struct net *net, void *data, int *dlen,
 	if (likely(state->acked_gen == gen)) {
 		len = dom_rec_len(dom, 0);
 		*dlen = len;
-		dom->len = htons(len);
-		dom->gen = htons(gen);
-		dom->ack_gen = htons(state->peer_gen);
+		dom->len = (__force __u16)htons(len);
+		dom->gen = (__force __u16)htons(gen);
+		dom->ack_gen = (__force __u16)htons(state->peer_gen);
 		dom->member_cnt = 0;
 		return;
 	}
 	/* Send the full record */
 	read_lock_bh(&mon->lock);
-	len = ntohs(mon->cache.len);
+	len = ntohs((__force __be16)mon->cache.len);
 	*dlen = len;
 	memcpy(data, &mon->cache, len);
 	read_unlock_bh(&mon->lock);
-	dom->ack_gen = htons(state->peer_gen);
+	dom->ack_gen = (__force __u16)htons(state->peer_gen);
 }
 
 void tipc_mon_get_state(struct net *net, u32 addr,
diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index 5a1ce64039f7..0749df80454d 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -696,7 +696,7 @@ static int tipc_nl_compat_link_dump(struct tipc_nl_compat_msg *msg,
 	if (err)
 		return err;
 
-	link_info.dest = nla_get_flag(link[TIPC_NLA_LINK_DEST]);
+	link_info.dest = htonl(nla_get_flag(link[TIPC_NLA_LINK_DEST]));
 	link_info.up = htonl(nla_get_flag(link[TIPC_NLA_LINK_UP]));
 	nla_strscpy(link_info.str, link[TIPC_NLA_LINK_NAME],
 		    TIPC_MAX_LINK_NAME);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 83d9eb830592..8b43ff3e4d95 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -372,26 +372,31 @@ static struct tipc_node *tipc_node_find_by_id(struct net *net, u8 *id)
 }
 
 static void tipc_node_read_lock(struct tipc_node *n)
+	__acquires(n->lock)
 {
 	read_lock_bh(&n->lock);
 }
 
 static void tipc_node_read_unlock(struct tipc_node *n)
+	__releases(n->lock)
 {
 	read_unlock_bh(&n->lock);
 }
 
 static void tipc_node_write_lock(struct tipc_node *n)
+	__acquires(n->lock)
 {
 	write_lock_bh(&n->lock);
 }
 
 static void tipc_node_write_unlock_fast(struct tipc_node *n)
+	__releases(n->lock)
 {
 	write_unlock_bh(&n->lock);
 }
 
 static void tipc_node_write_unlock(struct tipc_node *n)
+	__releases(n->lock)
 {
 	struct net *net = n->net;
 	u32 addr = 0;
-- 
2.25.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
