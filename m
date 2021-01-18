Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 166C92F9B2D
	for <lists+tipc-discussion@lfdr.de>; Mon, 18 Jan 2021 09:25:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l1PqW-0002U7-Os; Mon, 18 Jan 2021 08:25:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1l1PqU-0002TW-Eg
 for tipc-discussion@lists.sourceforge.net; Mon, 18 Jan 2021 08:25:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3GQlaY/rluCkfogk2CdTJXygCj8UrKp5PWKVHc8PxUc=; b=T2UlHCcF9l9pzNSVCZKUuBLS+0
 WXkoBukKHDt68AjxtkZdEmnCTpkHSb2UZTWYdfce9wTOO7H+vUuqiTEP3USn6rvG533cUk/bf2vcs
 iPPBKcsFPsBxeltD4X40FpPOd3xCnD6Yi7z1mHPc/eKibkZQNqOzL49irHi3EOEbruQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3GQlaY/rluCkfogk2CdTJXygCj8UrKp5PWKVHc8PxUc=; b=mxAlsrII8jFQspAEIj4Aek0rKP
 gfKIEMHjOLuxhGE5emsPabZHEM0b19RkTosI2ooLQ499e/0I23H41FkxfKFtRT5qvFOBRdeqFCeBi
 65p5GfKUo+Lz2oTyWd4gCWzfaHNLAMrboQZxbCFx76BsUy05yZ4N9LCPi+/dWicTucA8=;
Received: from mail-db8eur05on2117.outbound.protection.outlook.com
 ([40.107.20.117] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1PqJ-00C7Cl-T0
 for tipc-discussion@lists.sourceforge.net; Mon, 18 Jan 2021 08:25:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GfdGkUXA/0Mjp7tcCMMAeuqGuPubciiK3b+ewlvNQqFYx7Iq1laU40DKs6n0Rt6D574IPzgq4dcLwnDPFWfvU53FX1dDfGJckOyn/RyG04UMMJdv3OyHM42ac86R9lQsu1JkECN3YofNVdqs9WmGYazG2V/mp7yVcOWFiFiQpFJifkkuwCCziWAhFcjdBchWUSizCUl/Tvjb+a0l2LukQChCLwrmlY2izpc1s2itlB2F9jQu+6fgcHyYPsTAjqlRCW8RGJ2J4yRuPrE8JEAuNA+cpYS69UByYdlosGI5J7uvYUQvO01tGUra98RgRc25lrj/DS8Pug5OewggO1ZL8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3GQlaY/rluCkfogk2CdTJXygCj8UrKp5PWKVHc8PxUc=;
 b=iBFe2rrsmk10znyNCbfzT7zjzssiUtzvgN5M7Uo7CLHIUWPhQ3h961Fn6mIoSiLnCppY6VXtINbroOTLBMe9CqIMrBz8rfUgCqD08ft9u1cSayxTwYYCVyo5xEDWnUAa4w9kBDvarKVQBNnyQXMpCGvrxsmQp94tiUvd6LWKGxjX5FMX8/s0tcPbB0UdhxWxovT2P5o6/EIxUguOEAVBQB6mxpdptng8PQI/j4ALdlMxhovslA2S+TasUJWuZjwdmtRDIVOL3D31KN+5TQ1gxmxkJiphEZVZkeHO1JxFZSuuRsSa70J0ItVHzNBZVr/h0N/scETmXPT2AvKHi172JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3GQlaY/rluCkfogk2CdTJXygCj8UrKp5PWKVHc8PxUc=;
 b=bGGjbdVj+l9bJpwBZjKPgZoOAcaSbV+3Xgd8whh66mx1bQfPa/V+GhVWkH1gQYKl+eTQnHAnicateSFQgV8/Ub1blRglwSaCaNOca7LekFg9eQZeSFovfLxS1kUfN/v4LuA1vwA8ElDrPxUmF1EY5s+jxWWuaiaJkTE0ONzW30k=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB2943.eurprd05.prod.outlook.com (2603:10a6:800:b8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Mon, 18 Jan
 2021 08:09:04 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::9854:ed43:372d:2883%6]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 08:09:04 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 18 Jan 2021 15:08:45 +0700
Message-Id: <20210118080845.3771-2-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210118080845.3771-1-hoang.h.le@dektech.com.au>
References: <20210118080845.3771-1-hoang.h.le@dektech.com.au>
X-Originating-IP: [113.20.114.51]
X-ClientProxiedBy: SG2PR01CA0112.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::16) To VI1PR05MB4605.eurprd05.prod.outlook.com
 (2603:10a6:802:61::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (113.20.114.51) by
 SG2PR01CA0112.apcprd01.prod.exchangelabs.com (2603:1096:4:40::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend
 Transport; Mon, 18 Jan 2021 08:09:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d1806b7-9dc0-41c7-686a-08d8bb88522d
X-MS-TrafficTypeDiagnostic: VI1PR0502MB2943:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB2943595F90ECED93B106FA13F1A40@VI1PR0502MB2943.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Iuxi2ArknVbDdjIxmYzKhzyQnpj6MrqgJ7M+0L5Fk/NXRi8/TLQgDpUTHqJgxRm7FLyPDvRh2UxE2xomRz+tLg63T+W2FqPTM0ZtjVWXfutjoCumTaAMxl19RydfSbXnDcFoQL337OMeC04wX0eXTcAyutO7sDPBhnqUVgsNT4kocwqfHgl7gcCpN53IOpEHKTw4UO0fooi9AbtTQ/yo7CXqEL1iEb/NgrcqIERYo+Ayb6MJxaiMZAF0bY45aL15XerKE8zYi/A05d7i4rlao/ai5aXhs5x9VQ0KAlJJTxqXiQ5GiKcCVjiSyralCvcdirHwdxQIXfVnpeaSr7/CMxLDP+ioDCJSbjgQa2LZ+tcqt0KDXeVlrEjF2VkWqHP4TuKvqA/x+Ro6WrGH90KG+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39840400004)(396003)(136003)(366004)(346002)(376002)(8676002)(2906002)(55016002)(8936002)(86362001)(2616005)(956004)(103116003)(36756003)(6666004)(26005)(1076003)(66946007)(7696005)(186003)(316002)(52116002)(83380400001)(66476007)(66556008)(16526019)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?BOixlWnKUk8vR8Mng+nIVnXX/o7jEEX37SGfaZCSM1nXMcRuhsW6Yh6qxV5O?=
 =?us-ascii?Q?/jrTwWa7KqSxpTCRQwU0YPh4E8x997smTBZvudocvGBsRJbn8hBc7fYqcEKu?=
 =?us-ascii?Q?GXC4gfNv1qEJCvLFvR51EAfQYcyMgETu6AO0id3zSuUC9l4iY2CllzfYcGpr?=
 =?us-ascii?Q?1+W1C0JQ2gxcDAjjejUaMAoNkcOw8VsOLnGNO9f48+Q4vQ1sgXhF0qlGIAm+?=
 =?us-ascii?Q?VgsgiwgvDTSnGzZAuiLKMar45VEgxCyvOWL/vv2GvsccW7UAGjfYipuT8dBf?=
 =?us-ascii?Q?lzh+rdLgzM0/0V5ifmeAsWS3EvS+PkCqVrMHSRhzz5LNq8ExYjMcpw3vBLIc?=
 =?us-ascii?Q?bAB+KlRv1i2eYIB0V+UVtiAlvmylpQJLoF1SJn2nYylMGtjoLDqXS04XuYfU?=
 =?us-ascii?Q?N04Qwrw/STcjiHJvjQFTy7mKaKZuQV3SaK8Gl09jlNoC27jY4VeEYFSZqiuP?=
 =?us-ascii?Q?t/nMq7KlKFJ75Ar74jFqKvXUZsBMvqMHWcvMHdqD6q2bdakcFXNkfOWtsL54?=
 =?us-ascii?Q?n/tiFo2RJEn+ZALyDEh4GYj66tNBkCDUjY6U/tw3CLc9AcxUmeRwi+TFAsC0?=
 =?us-ascii?Q?gtrYTh27VMiJC6VTRjm78kbeJXdZl5Fg5izuXtLBXj4CIPp4v6e77xOCpACT?=
 =?us-ascii?Q?GwnAIhheBFnLY3b8V8Ma/TFACqGXiuTCfuNdht2muK4D3zywyxA1gm6Cg+vQ?=
 =?us-ascii?Q?nFcRmASzgAlzn+7XL7Cb6cMT+BKzjcuFa3r7rHSsSs0oBOk8jdyb1iSybCVm?=
 =?us-ascii?Q?n2AkLthmIT7BBBXkrjsoI9xOgk0gGV/VygnUSJ0NY2eheY95MZx/sOYCfTmy?=
 =?us-ascii?Q?fms7b+VyghmfLk8a7QXm1kLHE6T0PL3wObyJOTw3X9SlJWCmTgtxwepxsurp?=
 =?us-ascii?Q?6ztsYaYEfUTkwkjnLG1XbVauXWnHwaWOwaXGbuICzPBsBTovw4E9E/iBLjZF?=
 =?us-ascii?Q?ahG0kuG13N7lTXTNqK5ZEFu7Mk1RNXq1CZ/D83bOUI3IxCo2AjC1BjMoS8gi?=
 =?us-ascii?Q?fIBH?=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d1806b7-9dc0-41c7-686a-08d8bb88522d
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2021 08:09:04.3268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +gBNIYE7TBhpaeiwtH46hV7NH7ypHxzWQyl4tKxCOB0W84pFcXNTKcDnLSicJv49NTbfZdIHMLKBzS30s7z/G8e5uUnw90mQck6JMwKJPvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2943
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.117 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.117 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1l1PqJ-00C7Cl-T0
Subject: [tipc-discussion] [net-next v2 2/2] tipc: clean up warnings
 detected by sparse
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

net/tipc/monitor.c:263:35: warning: incorrect type in assignment (different base types)
net/tipc/monitor.c:263:35:    expected unsigned int
net/tipc/monitor.c:263:35:    got restricted __be32 [usertype]
[...]
net/tipc/node.c:374:13: warning: context imbalance in 'tipc_node_read_lock' - wrong count at exit
net/tipc/node.c:379:13: warning: context imbalance in 'tipc_node_read_unlock' - unexpected unlock
net/tipc/node.c:384:13: warning: context imbalance in 'tipc_node_write_lock' - wrong count at exit
net/tipc/node.c:389:13: warning: context imbalance in 'tipc_node_write_unlock_fast' - unexpected unlock
net/tipc/node.c:404:17: warning: context imbalance in 'tipc_node_write_unlock' - unexpected unlock
[...]
net/tipc/crypto.c:1201:9: warning: incorrect type in initializer (different address spaces)
net/tipc/crypto.c:1201:9:    expected struct tipc_aead [noderef] __rcu *__tmp
net/tipc/crypto.c:1201:9:    got struct tipc_aead *
[...]

Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
---
 net/tipc/crypto.c  | 12 ++++-----
 net/tipc/monitor.c | 63 ++++++++++++++++++++++++++++++++++------------
 net/tipc/node.c    |  5 ++++
 3 files changed, 58 insertions(+), 22 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index f4fca8f7f63f..6f64acef73dc 100644
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
+		salt ^= __be32_to_cpu(ehdr->addr);
 	else if (__dnode)
 		salt ^= tipc_node_get_addr(__dnode);
 	memcpy(iv, &salt, 4);
@@ -929,7 +929,7 @@ static int tipc_aead_decrypt(struct net *net, struct tipc_aead *aead,
 	ehdr = (struct tipc_ehdr *)skb->data;
 	salt = aead->salt;
 	if (aead->mode == CLUSTER_KEY)
-		salt ^= ehdr->addr; /* __be32 */
+		salt ^= __be32_to_cpu(ehdr->addr);
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
index 48fac3b17e40..407619697292 100644
--- a/net/tipc/monitor.c
+++ b/net/tipc/monitor.c
@@ -104,6 +104,36 @@ static struct tipc_monitor *tipc_monitor(struct net *net, int bearer_id)
 
 const int tipc_max_domain_size = sizeof(struct tipc_mon_domain);
 
+static inline u16 mon_cpu_to_le16(u16 val)
+{
+	return (__force __u16)htons(val);
+}
+
+static inline u32 mon_cpu_to_le32(u32 val)
+{
+	return (__force __u32)htonl(val);
+}
+
+static inline u64 mon_cpu_to_le64(u64 val)
+{
+	return (__force __u64)cpu_to_be64(val);
+}
+
+static inline u16 mon_le16_to_cpu(u16 val)
+{
+	return ntohs((__force __be16)val);
+}
+
+static inline u32 mon_le32_to_cpu(u32 val)
+{
+	return ntohl((__force __be32)val);
+}
+
+static inline u64 mon_le64_to_cpu(u64 val)
+{
+	return be64_to_cpu((__force __be64)val);
+}
+
 /* dom_rec_len(): actual length of domain record for transport
  */
 static int dom_rec_len(struct tipc_mon_domain *dom, u16 mcnt)
@@ -260,16 +290,16 @@ static void mon_update_local_domain(struct tipc_monitor *mon)
 		diff |= dom->members[i] != peer->addr;
 		dom->members[i] = peer->addr;
 		map_set(&dom->up_map, i, peer->is_up);
-		cache->members[i] = htonl(peer->addr);
+		cache->members[i] = mon_cpu_to_le32(peer->addr);
 	}
 	diff |= dom->up_map != prev_up_map;
 	if (!diff)
 		return;
 	dom->gen = ++mon->dom_gen;
-	cache->len = htons(dom->len);
-	cache->gen = htons(dom->gen);
-	cache->member_cnt = htons(member_cnt);
-	cache->up_map = cpu_to_be64(dom->up_map);
+	cache->len = mon_cpu_to_le16(dom->len);
+	cache->gen = mon_cpu_to_le16(dom->gen);
+	cache->member_cnt = mon_cpu_to_le16(member_cnt);
+	cache->up_map = mon_cpu_to_le64(dom->up_map);
 	mon_apply_domain(mon, self);
 }
 
@@ -455,10 +485,11 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
 	struct tipc_mon_domain dom_bef;
 	struct tipc_mon_domain *dom;
 	struct tipc_peer *peer;
-	u16 new_member_cnt = ntohs(arrv_dom->member_cnt);
+	u16 new_member_cnt = mon_le16_to_cpu(arrv_dom->member_cnt);
 	int new_dlen = dom_rec_len(arrv_dom, new_member_cnt);
-	u16 new_gen = ntohs(arrv_dom->gen);
-	u16 acked_gen = ntohs(arrv_dom->ack_gen);
+	u16 new_gen = mon_le16_to_cpu(arrv_dom->gen);
+	u16 acked_gen = mon_le16_to_cpu(arrv_dom->ack_gen);
+	u16 arrv_dlen = mon_le16_to_cpu(arrv_dom->len);
 	bool probing = state->probing;
 	int i, applied_bef;
 
@@ -469,7 +500,7 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
 		return;
 	if (dlen != dom_rec_len(arrv_dom, new_member_cnt))
 		return;
-	if ((dlen < new_dlen) || ntohs(arrv_dom->len) != new_dlen)
+	if (dlen < new_dlen || arrv_dlen != new_dlen)
 		return;
 
 	/* Synch generation numbers with peer if link just came up */
@@ -517,9 +548,9 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
 	dom->len = new_dlen;
 	dom->gen = new_gen;
 	dom->member_cnt = new_member_cnt;
-	dom->up_map = be64_to_cpu(arrv_dom->up_map);
+	dom->up_map = mon_le64_to_cpu(arrv_dom->up_map);
 	for (i = 0; i < new_member_cnt; i++)
-		dom->members[i] = ntohl(arrv_dom->members[i]);
+		dom->members[i] = mon_le32_to_cpu(arrv_dom->members[i]);
 
 	/* Update peers affected by this domain record */
 	applied_bef = peer->applied;
@@ -548,19 +579,19 @@ void tipc_mon_prep(struct net *net, void *data, int *dlen,
 	if (likely(state->acked_gen == gen)) {
 		len = dom_rec_len(dom, 0);
 		*dlen = len;
-		dom->len = htons(len);
-		dom->gen = htons(gen);
-		dom->ack_gen = htons(state->peer_gen);
+		dom->len = mon_cpu_to_le16(len);
+		dom->gen = mon_cpu_to_le16(gen);
+		dom->ack_gen = mon_cpu_to_le16(state->peer_gen);
 		dom->member_cnt = 0;
 		return;
 	}
 	/* Send the full record */
 	read_lock_bh(&mon->lock);
-	len = ntohs(mon->cache.len);
+	len = mon_le16_to_cpu(mon->cache.len);
 	*dlen = len;
 	memcpy(data, &mon->cache, len);
 	read_unlock_bh(&mon->lock);
-	dom->ack_gen = htons(state->peer_gen);
+	dom->ack_gen = mon_cpu_to_le16(state->peer_gen);
 }
 
 void tipc_mon_get_state(struct net *net, u32 addr,
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 008670d1f43e..9c95ef4b6326 100644
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
