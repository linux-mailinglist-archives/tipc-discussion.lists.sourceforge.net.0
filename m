Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF91021B302
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Jul 2020 12:12:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jtq0j-0001V3-5V; Fri, 10 Jul 2020 10:12:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jtq0e-0001UO-Ou
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9bHzc/o1hMiBLhU4/DTPPbrOXTa2KLr/lLxJrjHKK8I=; b=If0VmnLq6i7Wmcna2RqYzjOnWP
 8h7dVrmiEaNogkpQ993k1HrBd+bUlSGqDk+jal+iw26pCzn6BxNTFsestsYTIX6r5v+px/5UOUaAO
 nf9kj16HRvRMD70Bi0kWkU112Ag7I4aGeSfw55PJPyS3n2wwBcxhIeQRXkNJ39qQ0hKM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9bHzc/o1hMiBLhU4/DTPPbrOXTa2KLr/lLxJrjHKK8I=; b=L53bXm81Xf5NaHGJPlAmrIXdog
 RSMzGuRfcTpJsjLdcohYN2zWWOB32dLeu6V+xeu83SgJtu+YQf3sNj0wkVieUV1H15fgm4fWU4tHq
 Yh3ipBQmp17G2kMW8gXfrM5TSvvJLOSAiL07Vr9lW60YKB6wvo9cJpzMPRKkvAzgEz6E=;
Received: from mail-am6eur05on2097.outbound.protection.outlook.com
 ([40.107.22.97] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtq0b-001t9b-1Y
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:12:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b8a6DoM8AmDkiGmC/rxfiRP1Ch/taB0Ca8/KMQB2T5/hZCTDfpj9wqP21bIx12tlOK+8B+aHp/9dq9CfXNvo3FBK0lyJt2xCilCnnvr4O1u0xyDWim9c9+jSZVhKyOqWlPF3ukzeV0AjA9RyvV7/Lz6KsHO2Pn2K/ytRDFTlUfTFLacmmhHimYazzoMHHspc+3EsLCAX7j5N3BAcFr/247+ezv3zaFqf+JlT8KjAXWLM130sqg3rO3gtxCAFwLBvu3kaly5fYrXX8tANZWVZ63Vx3b6lXIaEXVFIzIaL8gqKVd7cdS0tRpnHoQEA5aXZMp2pR0LFDkuoFJF30HVnHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9bHzc/o1hMiBLhU4/DTPPbrOXTa2KLr/lLxJrjHKK8I=;
 b=NE0kos/olPW3WZuer8MGIFHVqo6rwdWkGK0XGMYQktv6nq6vVYYuA6TQYACszngog1h7T6O/IjkkW2qAvi/iKiapmjFGltXoMUN8j+qDbY6LQljd2PPalocp9llNl9oBKqSC6/a1VeQN89TOAil9TxKKsWkjmeazCTA/gw5YfwV/2LoRC6cF3oT+ZMcdZ7WoRlx1lN5ZQXe89gP6ebTiCfMEBCSfh2Q7IW3fQNgJ4eB2Ur7tzAhMnQRXqkPhSspCd5bX/4mVeKwHctZmO94A0TvLiu83N2WiDhW5RqB5PYKGHAtfQ4OP+wOb4MtzDKalE6dmFbwaIHzG/gjIpMrcVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9bHzc/o1hMiBLhU4/DTPPbrOXTa2KLr/lLxJrjHKK8I=;
 b=Kjlni4a9+u8o9zpzGd2D9qpikTeKBoYiknU11YVx3+rRwKYvZI59E6fwcFkNMhnUf6X0FG6xiHMv+cwo3CS0egqO1Bs/jAIFFpPmbi8xRQxVgKGiW9tdkCHlMKNCQfsYdlH832nB8ilO2hYxfZ+vu97Y2AInsBPFTAh/H7LgJUk=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR05MB5975.eurprd05.prod.outlook.com (2603:10a6:20b:ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Fri, 10 Jul
 2020 10:11:46 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 10:11:46 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 10 Jul 2020 17:11:28 +0700
Message-Id: <20200710101128.19713-6-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
References: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: SG2PR06CA0089.apcprd06.prod.outlook.com
 (2603:1096:3:14::15) To AM6PR0502MB3925.eurprd05.prod.outlook.com
 (2603:10a6:209:5::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from dektech.com.au (14.161.14.188) by
 SG2PR06CA0089.apcprd06.prod.outlook.com (2603:1096:3:14::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3174.20 via Frontend Transport; Fri, 10 Jul 2020 10:11:44 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 89ef4d6c-25b6-4157-1f57-08d824b9a6f6
X-MS-TrafficTypeDiagnostic: AM6PR05MB5975:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB59759C2917AE03E050C89255E2650@AM6PR05MB5975.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N/UTWGD9Uv6NHno0+WBQGL2lKP9dFu6eMbtFse8eWWEB9X+9Ej8j137pO0gP3t3sRRVyCpnolITYFkpH3NTOoZfw9/BOQK1slq78eGY8ISNCDu1bB07a/sZSst9mvlrxA0QCREaBqh82q8+RI8iMtcpXWoQ6hYrevQrzBmoQncOPEzLYvbH2ZbC8ESMx381uHtncLTxqaY+3jKNYJvziTR0N0s0NZ9E5vhYHHa+0MhzLeC9jvH4LjSRAqPzpgG3H0aGVjEJNeR1tyjjjCNAbdE8ErfUrGa1w2syX6bl9pVvEuqMAlCdKeI2Oimk0IV5IXNb+QUPXi02YWoCqBMT8NQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39840400004)(366004)(346002)(136003)(478600001)(5660300002)(8936002)(107886003)(66556008)(7696005)(52116002)(66476007)(83380400001)(4326008)(86362001)(66946007)(30864003)(55016002)(186003)(16526019)(8676002)(316002)(6666004)(2616005)(956004)(1076003)(26005)(36756003)(103116003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: dmp6CG1+Fjy5Pf1GZwyD/76JvFJ8AbyRMTRBDY+quPKu4AZoCgHEv5IXhg94vkZlV5z0CTMJ7nhrB4NJxYBFtYKR1hNgmC2GS0dzUU6EtJD+qLLBJI9xKsIkX/IxPhv0Qhe5UEUjIBv1SBMp+lhEczaNbIqzljRr0Udj8Hny7lKOVSN/1AGxtAmw/Zi5D7+uBqaGP6nlZm3iSfZQJMOCmYbwPWR3D4fL45VAXHposzOCB2dt7xyhx1BTOg8fZadAjUjTublBjMkMb/shpRhM5OMl4ZJa1MkMIc5z1v3Q0C785ecJ5/3mUtd9vk5JQROLArinifNPHa5XxQ0QRDWefVefkzqPblLc/jH84wwYxhgygohbVzzbSYAcPdziedPdg7BLrvgD5iNx1nTPcrNmO4tw4PvWlVUzG2/skxi0VtSuMTVdGy7U/+XLH6a7WjFRcRdLzCVWFN56SNYOAT3SntR5gz7OjiS1asTnF8GvKMc=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 89ef4d6c-25b6-4157-1f57-08d824b9a6f6
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0502MB3925.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2020 10:11:46.4750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NOV36TyyVe2LZVzBtev+xqFegBbx6jCkVOfRayjMpH9YBxg3uIGUftQYjJp4cDm/Wb3EtcJmWguU/9i06t+rHx9HA7xMpGLmZiCYDj0ges0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5975
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.97 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtq0b-001t9b-1Y
Subject: [tipc-discussion] [PATCH RFC 5/5] tipc: add automatic rekeying for
 encryption key
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

Rekeying is required for security since a key is less secure when using
for a long time. Also, key will be detached when its nonce value (or
seqno ...) is exhausted. We now make the rekeying process automatic and
configurable by user.

Basically, TIPC will at a specific interval generate a new key by using
the kernel 'Random Number Generator' cipher, then attach it as the node
TX key and securely distribute to others in the cluster as RX keys (-
the key exchange). The automatic key switching will then take over, and
make the new key active shortly. Afterwards, the traffic from this node
will be encrypted with the new session key. The same can happen in peer
nodes but not necessarily at the same time.

For simplicity, the automatically generated key will be initiated as a
per node key. It is not too hard to also support a cluster key rekeying
(e.g. a given node will generate a unique cluster key and update to the
others in the cluster...), but that doesn't bring much benefit, while a
per-node key is even more security.

We also enable user to force a rekeying or change the rekeying interval
via netlink, the new 'set key' command option: 'TIPC_NLA_NODE_REKEYING'
is added for these purposes as follows:
- A value >= 1 will be set as the rekeying interval (in minutes);
- A value of 0 will disable the rekeying;
- A value of 'TIPC_REKEYING_NOW' (~0) will force an immediate rekeying;

The default rekeying interval is (60 * 24) minutes i.e. done every day.
There isn't any restriction for the value but user shouldn't set it too
small or too large which results in an "ineffective" rekeying (thats ok
for testing though).

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 include/uapi/linux/tipc.h         |   2 +
 include/uapi/linux/tipc_netlink.h |   1 +
 net/tipc/crypto.c                 | 119 +++++++++++++++++++++++++++++++++++++-
 net/tipc/crypto.h                 |   2 +
 net/tipc/netlink.c                |   1 +
 net/tipc/node.c                   |  28 ++++++++-
 6 files changed, 148 insertions(+), 5 deletions(-)

diff --git a/include/uapi/linux/tipc.h b/include/uapi/linux/tipc.h
index add01db1daef..80ea15e12113 100644
--- a/include/uapi/linux/tipc.h
+++ b/include/uapi/linux/tipc.h
@@ -254,6 +254,8 @@ static inline int tipc_aead_key_size(struct tipc_aead_key *key)
 	return sizeof(*key) + key->keylen;
 }
 
+#define TIPC_REKEYING_NOW		(~0U)
+
 /* The macros and functions below are deprecated:
  */
 
diff --git a/include/uapi/linux/tipc_netlink.h b/include/uapi/linux/tipc_netlink.h
index d484baa9d365..d847dd671d79 100644
--- a/include/uapi/linux/tipc_netlink.h
+++ b/include/uapi/linux/tipc_netlink.h
@@ -166,6 +166,7 @@ enum {
 	TIPC_NLA_NODE_ID,		/* data */
 	TIPC_NLA_NODE_KEY,		/* data */
 	TIPC_NLA_NODE_KEY_MASTER,	/* flag */
+	TIPC_NLA_NODE_REKEYING,		/* u32 */
 
 	__TIPC_NLA_NODE_MAX,
 	TIPC_NLA_NODE_MAX = __TIPC_NLA_NODE_MAX - 1
diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index 9d00555ede83..d497585010ee 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -36,6 +36,7 @@
 
 #include <crypto/aead.h>
 #include <crypto/aes.h>
+#include <crypto/rng.h>
 #include "crypto.h"
 #include "msg.h"
 #include "bcast.h"
@@ -48,6 +49,8 @@
 #define TIPC_MAX_TFMS_DEF	10
 #define TIPC_MAX_TFMS_LIM	1000
 
+#define TIPC_REKEYING_INTV_DEF	(60 * 24) /* default: 1 day */
+
 /**
  * TIPC Key ids
  */
@@ -181,6 +184,7 @@ struct tipc_crypto_stats {
  * @wq: common workqueue on TX crypto
  * @work: delayed work sched for TX/RX
  * @key_distr: key distributing state
+ * @rekeying_intv: rekeying interval (in minutes)
  * @stats: the crypto statistics
  * @name: the crypto name
  * @sndnxt: the per-peer sndnxt (TX)
@@ -206,6 +210,7 @@ struct tipc_crypto {
 #define KEY_DISTR_SCHED		1
 #define KEY_DISTR_COMPL		2
 	atomic_t key_distr;
+	u32 rekeying_intv;
 
 	struct tipc_crypto_stats __percpu *stats;
 	char name[48];
@@ -294,7 +299,9 @@ static char *tipc_key_change_dump(struct tipc_key old, struct tipc_key new,
 static int tipc_crypto_key_xmit(struct net *net, struct tipc_aead_key *skey,
 				u16 gen, u8 mode, u32 dnode);
 static bool tipc_crypto_key_rcv(struct tipc_crypto *rx, struct tipc_msg *hdr);
+static void tipc_crypto_work_tx(struct work_struct *work);
 static void tipc_crypto_work_rx(struct work_struct *work);
+static int tipc_aead_key_generate(struct tipc_aead_key *skey);
 
 #define is_tx(crypto) (!(crypto)->node)
 #define is_rx(crypto) (!is_tx(crypto))
@@ -342,6 +349,27 @@ int tipc_aead_key_validate(struct tipc_aead_key *ukey)
 	return 0;
 }
 
+/**
+ * tipc_aead_key_generate - Generate new session key
+ * @skey: input/output key with new content
+ *
+ * Return: 0 in case of success, otherwise < 0
+ */
+static int tipc_aead_key_generate(struct tipc_aead_key *skey)
+{
+	int rc = 0;
+
+	/* Fill the key's content with a random value via RNG cipher */
+	rc = crypto_get_default_rng();
+	if (likely(!rc)) {
+		rc = crypto_rng_get_bytes(crypto_default_rng, skey->key,
+					  skey->keylen);
+		crypto_put_default_rng();
+	}
+
+	return rc;
+}
+
 static struct tipc_aead *tipc_aead_get(struct tipc_aead __rcu *aead)
 {
 	struct tipc_aead *tmp;
@@ -1471,13 +1499,16 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
 	atomic64_set(&c->sndnxt, 0);
 	c->timer1 = jiffies;
 	c->timer2 = jiffies;
+	c->rekeying_intv = TIPC_REKEYING_INTV_DEF;
 	spin_lock_init(&c->lock);
 	scnprintf(c->name, 48, "%s(%s)", (is_rx(c)) ? "RX" : "TX",
 		  (is_rx(c)) ? tipc_node_get_id_str(c->node) :
 			       tipc_own_id_string(c->net));
 
-        if (is_rx(c))
-                INIT_DELAYED_WORK(&c->work, tipc_crypto_work_rx);
+	if (is_rx(c))
+		INIT_DELAYED_WORK(&c->work, tipc_crypto_work_rx);
+	else
+		INIT_DELAYED_WORK(&c->work, tipc_crypto_work_tx);
 
 	*crypto = c;
 	return 0;
@@ -1492,8 +1523,11 @@ void tipc_crypto_stop(struct tipc_crypto **crypto)
 		return;
 
 	/* Flush any queued works & destroy wq */
-	if (is_tx(c))
+	if (is_tx(c)) {
+		c->rekeying_intv = 0;
+		cancel_delayed_work_sync(&c->work);
 		destroy_workqueue(c->wq);
+	}
 
 	/* Release AEAD keys */
 	rcu_read_lock();
@@ -2346,3 +2380,82 @@ static void tipc_crypto_work_rx(struct work_struct *work)
 
 	tipc_node_put(rx->node);
 }
+
+/**
+ * tipc_crypto_rekeying_sched - (Re)schedule rekeying w/o new interval
+ * @tx: TX crypto
+ * @changed: if the rekeying needs to be rescheduled with new interval
+ * @new_intv: new rekeying interval (when "changed" = true)
+ */
+void tipc_crypto_rekeying_sched(struct tipc_crypto *tx, bool changed,
+				u32 new_intv)
+{
+	unsigned long delay;
+	bool now = false;
+
+	if (changed) {
+		if (new_intv == TIPC_REKEYING_NOW)
+			now = true;
+		else
+			tx->rekeying_intv = new_intv;
+		cancel_delayed_work_sync(&tx->work);
+	}
+
+	if (tx->rekeying_intv || now) {
+		delay = (now) ? 0 : tx->rekeying_intv * 60 * 1000;
+		queue_delayed_work(tx->wq, &tx->work, msecs_to_jiffies(delay));
+	}
+}
+
+/**
+ * tipc_crypto_work_tx - Scheduled TX works handler
+ * @work: the struct TX work
+ *
+ * The function processes the previous scheduled work, i.e. key rekeying, by
+ * generating a new session key based on current one, then attaching it to the
+ * TX crypto and finally distributing it to peers. It also re-schedules the
+ * rekeying if needed.
+ */
+static void tipc_crypto_work_tx(struct work_struct *work)
+{
+	struct delayed_work *dwork = to_delayed_work(work);
+	struct tipc_crypto *tx = container_of(dwork, struct tipc_crypto, work);
+	struct tipc_aead_key *skey = NULL;
+	struct tipc_key key = tx->key;
+	struct tipc_aead *aead;
+	int rc = -ENOMEM;
+
+	if (unlikely(key.pending))
+		goto resched;
+
+	/* Take current key as a template */
+	rcu_read_lock();
+	aead = rcu_dereference(tx->aead[key.active ?: KEY_MASTER]);
+	if (unlikely(!aead)) {
+		rcu_read_unlock();
+		/* At least one key should exist for securing */
+		return;
+	}
+
+	/* Lets duplicate it first */
+	skey = kmemdup(aead->key, tipc_aead_key_size(aead->key), GFP_ATOMIC);
+	rcu_read_unlock();
+
+	/* Now, generate new key, initiate & distribute it */
+	if (likely(skey)) {
+		rc = tipc_aead_key_generate(skey) ?:
+		     tipc_crypto_key_init(tx, skey, PER_NODE_KEY, false);
+		if (likely(rc > 0))
+			rc = tipc_crypto_key_distr(tx, rc, NULL);
+		kzfree(skey);
+	}
+
+	if (likely(!rc))
+		pr_info("%s: rekeying has been done\n", tx->name);
+	else
+		pr_warn_ratelimited("%s: rekeying returns %d\n", tx->name, rc);
+
+resched:
+	/* Re-schedule rekeying if any */
+	tipc_crypto_rekeying_sched(tx, false, 0);
+}
diff --git a/net/tipc/crypto.h b/net/tipc/crypto.h
index 70bda3d7e174..e1f4e8fb5c10 100644
--- a/net/tipc/crypto.h
+++ b/net/tipc/crypto.h
@@ -171,6 +171,8 @@ void tipc_crypto_key_flush(struct tipc_crypto *c);
 int tipc_crypto_key_distr(struct tipc_crypto *tx, u8 key,
 			  struct tipc_node *dest);
 void tipc_crypto_msg_rcv(struct net *net, struct sk_buff *skb);
+void tipc_crypto_rekeying_sched(struct tipc_crypto *tx, bool changed,
+				u32 new_intv);
 int tipc_aead_key_validate(struct tipc_aead_key *ukey);
 bool tipc_ehdr_validate(struct sk_buff *skb);
 
diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
index 1ec00fcc26ee..c447cb5f879e 100644
--- a/net/tipc/netlink.c
+++ b/net/tipc/netlink.c
@@ -109,6 +109,7 @@ const struct nla_policy tipc_nl_node_policy[TIPC_NLA_NODE_MAX + 1] = {
 	[TIPC_NLA_NODE_KEY]		= { .type = NLA_BINARY,
 					    .len = TIPC_AEAD_KEY_SIZE_MAX},
 	[TIPC_NLA_NODE_KEY_MASTER]	= { .type = NLA_FLAG },
+	[TIPC_NLA_NODE_REKEYING]	= { .type = NLA_U32 },
 };
 
 /* Properties valid for media, bearer and link */
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 186951b690d2..95f045cf9f55 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2877,6 +2877,17 @@ static int tipc_nl_retrieve_nodeid(struct nlattr **attrs, u8 **node_id)
 	return 0;
 }
 
+static int tipc_nl_retrieve_rekeying(struct nlattr **attrs, u32 *intv)
+{
+	struct nlattr *attr = attrs[TIPC_NLA_NODE_REKEYING];
+
+	if (!attr)
+		return -ENODATA;
+
+	*intv = nla_get_u32(attr);
+	return 0;
+}
+
 static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
 {
 	struct nlattr *attrs[TIPC_NLA_NODE_MAX + 1];
@@ -2884,8 +2895,9 @@ static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
 	struct tipc_crypto *tx = tipc_net(net)->crypto_tx, *c = tx;
 	struct tipc_node *n = NULL;
 	struct tipc_aead_key *ukey;
-	bool master_key = false;
+	bool rekeying = true, master_key = false;
 	u8 *id, *own_id, mode;
+	u32 intv = 0;
 	int rc = 0;
 
 	if (!info->attrs[TIPC_NLA_NODE])
@@ -2901,9 +2913,17 @@ static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
 	if (!own_id)
 		return -EPERM;
 
+	rc = tipc_nl_retrieve_rekeying(attrs, &intv);
+	if (rc == -ENODATA)
+		rekeying = false;
+
 	rc = tipc_nl_retrieve_key(attrs, &ukey);
-	if (rc)
+	if (rc == -ENODATA && rekeying) {
+		rc = 0;
+		goto rekeying;
+	} else if (rc) {
 		return rc;
+	}
 
 	rc = tipc_aead_key_validate(ukey);
 	if (rc)
@@ -2938,6 +2958,10 @@ static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
 	if (!master_key)
 		tipc_crypto_key_distr(tx, rc, NULL);
 
+rekeying:
+	/* Schedule TX rekeying if needed */
+	tipc_crypto_rekeying_sched(tx, rekeying, intv);
+
 exit:
 	if (n)
 		tipc_node_put(n);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
