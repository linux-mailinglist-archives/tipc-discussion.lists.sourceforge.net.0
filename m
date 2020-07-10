Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F1721B300
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Jul 2020 12:12:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jtq0h-0005TJ-Lc; Fri, 10 Jul 2020 10:12:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jtq0X-0005Qy-Gb
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fGM2lBhrzVDYLGv2c85PRcub/C+meVLnqdb+fUXzazY=; b=hmSLrmYrtL5DRJ6wuWm8n2ajLW
 ICDJKIqWFS4JWo2CwnQPe6sXbYwkk7vpoWbofXD5NqfNIuu/nBGzNWCmhu0ISjNzfiuCiYwgs7+11
 FE22P0BKM+4dIOZyzvxHWayAgogdTGf+j8C5x0Lem/Api+TI2bIYA4RfkEHBHOD2NrTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fGM2lBhrzVDYLGv2c85PRcub/C+meVLnqdb+fUXzazY=; b=mpil2HczJ1d4IS5mhwvdlkEER+
 UNLTgvnDc6+8yk6EKz52LSkV6YnmQFzJsamOZLAy7MKBuYQWqCbU+mjPef0C8SrPL1VCKyEISTARN
 1vfff76f/0AUh6zqKBtpUXp01yFJz9gwIMB9svpY2f+zi9dKqXrIB6Z7JQpJrZPFiPrE=;
Received: from mail-am6eur05on2102.outbound.protection.outlook.com
 ([40.107.22.102] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtq0V-001t9E-0b
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 10:11:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmsV3kEx1dVRrsi8LYS/cSUJUh8VJR97SB/mIpy6oBa92xGWWjvkB4oGJ4q/7KmP25EwuU4eSfgSoSuyzD0Cr1CS+KWEZ76Ub7MY5RdCl/LV0mU3Kom+Img29gW4Vq1D7gcvUIFogJ2GORs55Qcx9bKurVOHEs0IIDT1/eSBV54DLif4LgQm7nWtN/R4bxE6UyuUM9pyoDsPSR8LZlb2oIxwsf7qJWhMsfR99YVZ9Vh6KKr2EarZCSRxNJ1vUD+lJc9TcNLZ0eSKriF3VMUJtaDNvgp2spIjToSw6wQVggyXxBBz8LYUTM9gnGK0UpJZZH4n9y+/aR+5SUjdY5Nw4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fGM2lBhrzVDYLGv2c85PRcub/C+meVLnqdb+fUXzazY=;
 b=nFoz2zF75J2UTPmAkQjb6+fvSGiiHHxuoLpeKn/Q5OhJCGT11gtyQyE62Ihj47eXiHZlZ+oWALUm3TRYwu5yFClUV6Ane4auqVA6KxWcdODKNDl8+J+xpxQgjdCjvYWBKlTJJMDS9kHwrNuGetzpuWGwVrwb9aJBp7PdU5NwoSkg6H75jR+Lj5YsdwiP72OJB9x9aKZLnGsxdwMRLLasyJ7vUTA6XSXV8JxKZLmVI6qeutKt1hfuNoK+QlTsK6fYvfaohEN1ulnLi42qFOebPf6SS9kCv4kwROh397H6/0Mr7WTJuJu40HwOPjXYlsOR4fE8WRCOiXp0LYHSTFE3QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fGM2lBhrzVDYLGv2c85PRcub/C+meVLnqdb+fUXzazY=;
 b=nj3JRW/CLOSxxa4Ah5Gpi/pJAhn/KKMQqI1qmhut8SP/KKbmrA9cNoVfnVXseC4QYRwssYeME4nq9eseon4r9v+PvtjhXU8KHz35FlkbnmGUZiW0AKLFWjJibgC1Q2bA7GHqhLLyVLzagghbHGXbAZ3gE2Y6yYhfkRou6DMp/iY=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR05MB5975.eurprd05.prod.outlook.com (2603:10a6:20b:ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Fri, 10 Jul
 2020 10:11:40 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 10:11:40 +0000
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Fri, 10 Jul 2020 17:11:25 +0700
Message-Id: <20200710101128.19713-3-tuong.t.lien@dektech.com.au>
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
 15.20.3174.20 via Frontend Transport; Fri, 10 Jul 2020 10:11:38 +0000
X-Mailer: git-send-email 2.13.7
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de6e9837-fac4-4d2c-04f1-08d824b9a2e3
X-MS-TrafficTypeDiagnostic: AM6PR05MB5975:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB5975D30621B8B7FA4F89292FE2650@AM6PR05MB5975.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:311;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AAb67nqxJ8BFO8EmIeimGCkQZHQmG94Ijpwh0mPq7sCaDlcEjquwMNCTWRKhFBqaQO9P6awkv4wBFMH+sag3P7Le8ZILIhHfR8BgvjSIrt/rJhuS3Z9drfAGreBpKoMq4eKK+Y+VBOxxy+DYy6hPACMiwqGNQo9z7+2muZrLotE7U0/9xGGlMr2Qsv/9YffC1IJK9BxEi8Yk4Vy9kpzQTqKGCSgOBSEw22U9liFHnNdOlHz+WkJtohusLku4ZdKShtx1Crwg8IWQyi9roBLfT67G6odS9lIh/228Rc4TgS4x8At8YqH1BPUODDWxLHA3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39840400004)(366004)(346002)(136003)(478600001)(5660300002)(8936002)(107886003)(66556008)(7696005)(52116002)(66476007)(83380400001)(4326008)(86362001)(66946007)(30864003)(55016002)(186003)(16526019)(8676002)(316002)(6666004)(2616005)(956004)(1076003)(26005)(36756003)(103116003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: jR5hnBXEYJTQdnpYhaeBwYWgII0uOQiTqbizsOkwON9PbcHpcaoWJfScN8XEpIE1FsYe0XYfN/xvoPndjVd7ns150THvmN+GYcEP2JtHnbmIYRinQXDpucYYWue3gcu0IiNbuAWHbeCJKA2urU82R3D/LBaxAfSZuzHlDWIC4as6i3DbIwZanghZKnEiGmlGzPOBwGNg9Ju/pxUZ1Sc7LuPZYsxMfNcXS9ArcfwkCz45dnSi52E3xwWmSjGP3C6Z5vclz8QZARhFhaIBYSxUIF+CNbPwMclnlHZJICzuAgla+YCtnpQ1onrWzQ8vPdCr/ZGeCGSqZrRcU1D4eHLpGXjQCZy3w3z6rBvx9BXo+YrX+bqAa6//HJG1reXSSMoyP6TyTC7nazq5N/w4J7Y2/WpeczpGUEHHy0zVK3MKbLbTxDUdVVnYndzjY7rgflRYlFk6yg+Hm8p2F37K2CzTY89Hvwb2dbTQ2dN+dJcIuhU=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: de6e9837-fac4-4d2c-04f1-08d824b9a2e3
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0502MB3925.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2020 10:11:39.9328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RMzkM/t0B56roLKHoZ/nGMNi23EcFYSyMyVSqNxFdMkXYWdvZ0Bf/5bhVfm3iBPrZWatI3GMG2buxXWFsuAcJkR911M0HGGP5IuT0RKuBtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5975
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.102 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jtq0V-001t9E-0b
Subject: [tipc-discussion] [PATCH RFC 2/5] tipc: optimize key switching time
 and logic
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

We reduce the lasting time for a pending TX key to be active as well as
for a passive RX key to be freed which generally helps speed up the key
switching. It is not expected to be too fast but should not be too slow
either. Also the key handling logic is simplified that a pending RX key
will be removed automatically if it is found not working after a number
of times; the probing for a pending TX key is now carried on a specific
message user ('LINK_PROTOCOL' or 'LINK_CONFIG') which is more efficient
than using a timer on broadcast messages, the timer is reserved for use
later as needed.

The kernel logs or 'pr***()' are now made as clear as possible to user.
Some prints are added, removed or changed to the debug-level. The
'TIPC_CRYPTO_DEBUG' definition is removed, and the 'pr_debug()' is used
instead which will be much helpful in runtime.

Besides we also optimize the code in some other places as a preparation
for later commits.

This commit does not change the en/decryption functionalities.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/crypto.c | 344 ++++++++++++++++++++++--------------------------------
 1 file changed, 141 insertions(+), 203 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index 1827ce4fac5d..f1046ab4bd01 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -38,10 +38,10 @@
 #include <crypto/aes.h>
 #include "crypto.h"
 
-#define TIPC_TX_PROBE_LIM	msecs_to_jiffies(1000) /* > 1s */
-#define TIPC_TX_LASTING_LIM	msecs_to_jiffies(120000) /* 2 mins */
+#define TIPC_TX_LASTING_TIME	msecs_to_jiffies(10000) /* 10s */
 #define TIPC_RX_ACTIVE_LIM	msecs_to_jiffies(3000) /* 3s */
-#define TIPC_RX_PASSIVE_LIM	msecs_to_jiffies(180000) /* 3 mins */
+#define TIPC_RX_PASSIVE_LIM	msecs_to_jiffies(15000) /* 15s */
+
 #define TIPC_MAX_TFMS_DEF	10
 #define TIPC_MAX_TFMS_LIM	1000
 
@@ -144,7 +144,7 @@ struct tipc_aead {
 	u32 salt;
 	u8 authsize;
 	u8 mode;
-	char hint[TIPC_AEAD_HINT_LEN + 1];
+	char hint[2 * TIPC_AEAD_HINT_LEN + 1];
 	struct rcu_head rcu;
 
 	atomic64_t seqno ____cacheline_aligned;
@@ -168,9 +168,10 @@ struct tipc_crypto_stats {
  * @key: the key states
  * @working: the crypto is working or not
  * @stats: the crypto statistics
+ * @name: the crypto name
  * @sndnxt: the per-peer sndnxt (TX)
  * @timer1: general timer 1 (jiffies)
- * @timer2: general timer 1 (jiffies)
+ * @timer2: general timer 2 (jiffies)
  * @lock: tipc_key lock
  */
 struct tipc_crypto {
@@ -181,6 +182,7 @@ struct tipc_crypto {
 	struct tipc_key key;
 	u8 working:1;
 	struct tipc_crypto_stats __percpu *stats;
+	char name[48];
 
 	atomic64_t sndnxt ____cacheline_aligned;
 	unsigned long timer1;
@@ -239,18 +241,17 @@ static bool tipc_crypto_key_try_align(struct tipc_crypto *rx, u8 new_pending);
 static struct tipc_aead *tipc_crypto_key_pick_tx(struct tipc_crypto *tx,
 						 struct tipc_crypto *rx,
 						 struct sk_buff *skb);
-static void tipc_crypto_key_synch(struct tipc_crypto *rx, u8 new_rx_active,
-				  struct tipc_msg *hdr);
+static void tipc_crypto_key_synch(struct tipc_crypto *rx, struct sk_buff *skb);
 static int tipc_crypto_key_revoke(struct net *net, u8 tx_key);
 static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 				     struct tipc_bearer *b,
 				     struct sk_buff **skb, int err);
 static void tipc_crypto_do_cmd(struct net *net, int cmd);
 static char *tipc_crypto_key_dump(struct tipc_crypto *c, char *buf);
-#ifdef TIPC_CRYPTO_DEBUG
 static char *tipc_key_change_dump(struct tipc_key old, struct tipc_key new,
 				  char *buf);
-#endif
+#define is_tx(crypto) (!(crypto)->node)
+#define is_rx(crypto) (!is_tx(crypto))
 
 #define key_next(cur) ((cur) % KEY_MAX + 1)
 
@@ -290,7 +291,7 @@ int tipc_aead_key_validate(struct tipc_aead_key *ukey)
 	if (unlikely(keylen != TIPC_AES_GCM_KEY_SIZE_128 &&
 		     keylen != TIPC_AES_GCM_KEY_SIZE_192 &&
 		     keylen != TIPC_AES_GCM_KEY_SIZE_256))
-		return -EINVAL;
+		return -EKEYREJECTED;
 
 	return 0;
 }
@@ -501,9 +502,9 @@ static int tipc_aead_init(struct tipc_aead **aead, struct tipc_aead_key *ukey,
 		return err;
 	}
 
-	/* Copy some chars from the user key as a hint */
-	memcpy(tmp->hint, ukey->key, TIPC_AEAD_HINT_LEN);
-	tmp->hint[TIPC_AEAD_HINT_LEN] = '\0';
+	/* Form a hex string of some last bytes as the key's hint */
+	bin2hex(tmp->hint, ukey->key + keylen - TIPC_AEAD_HINT_LEN,
+		TIPC_AEAD_HINT_LEN);
 
 	/* Initialize the other data */
 	tmp->mode = mode;
@@ -663,13 +664,11 @@ static int tipc_aead_encrypt(struct tipc_aead *aead, struct sk_buff *skb,
 	 * but there is no frag_list, it should be still fine!
 	 * Otherwise, we must cow it to be a writable buffer with the tailroom.
 	 */
-#ifdef TIPC_CRYPTO_DEBUG
 	SKB_LINEAR_ASSERT(skb);
 	if (tailen > skb_tailroom(skb)) {
-		pr_warn("TX: skb tailroom is not enough: %d, requires: %d\n",
-			skb_tailroom(skb), tailen);
+		pr_debug("TX(): skb tailroom is not enough: %d, requires: %d\n",
+			 skb_tailroom(skb), tailen);
 	}
-#endif
 
 	if (unlikely(!skb_cloned(skb) && tailen <= skb_tailroom(skb))) {
 		nsg = 1;
@@ -1017,23 +1016,16 @@ static inline void tipc_crypto_key_set_state(struct tipc_crypto *c,
 					     u8 new_active,
 					     u8 new_pending)
 {
-#ifdef TIPC_CRYPTO_DEBUG
 	struct tipc_key old = c->key;
 	char buf[32];
-#endif
 
 	c->key.keys = ((new_passive & KEY_MASK) << (KEY_BITS * 2)) |
 		      ((new_active  & KEY_MASK) << (KEY_BITS)) |
 		      ((new_pending & KEY_MASK));
 
-#ifdef TIPC_CRYPTO_DEBUG
-	pr_info("%s(%s): key changing %s ::%pS\n",
-		(c->node) ? "RX" : "TX",
-		(c->node) ? tipc_node_get_id_str(c->node) :
-			    tipc_own_id_string(c->net),
-		tipc_key_change_dump(old, c->key, buf),
-		__builtin_return_address(0));
-#endif
+	pr_debug("%s: key changing %s ::%pS\n", c->name,
+		 tipc_key_change_dump(old, c->key, buf),
+		 __builtin_return_address(0));
 }
 
 /**
@@ -1055,20 +1047,20 @@ int tipc_crypto_key_init(struct tipc_crypto *c, struct tipc_aead_key *ukey,
 
 	/* Initiate with the new user key */
 	rc = tipc_aead_init(&aead, ukey, mode);
+	if (unlikely(rc)) {
+		pr_err("%s: unable to init key, err %d\n", c->name, rc);
+		return rc;
+	}
 
 	/* Attach it to the crypto */
-	if (likely(!rc)) {
-		rc = tipc_crypto_key_attach(c, aead, 0);
-		if (rc < 0)
-			tipc_aead_free(&aead->rcu);
+	rc = tipc_crypto_key_attach(c, aead, 0);
+	if (rc < 0) {
+		pr_err("%s: unable to attach key, err %d\n", c->name, rc);
+		tipc_aead_free(&aead->rcu);
+		return rc;
 	}
 
-	pr_info("%s(%s): key initiating, rc %d!\n",
-		(c->node) ? "RX" : "TX",
-		(c->node) ? tipc_node_get_id_str(c->node) :
-			    tipc_own_id_string(c->net),
-		rc);
-
+	pr_info("%s: key[%d] is successfully attached\n", c->name, rc);
 	return rc;
 }
 
@@ -1083,49 +1075,42 @@ int tipc_crypto_key_init(struct tipc_crypto *c, struct tipc_aead_key *ukey,
 static int tipc_crypto_key_attach(struct tipc_crypto *c,
 				  struct tipc_aead *aead, u8 pos)
 {
-	u8 new_pending, new_passive, new_key;
 	struct tipc_key key;
 	int rc = -EBUSY;
+	u8 new_key;
 
 	spin_lock_bh(&c->lock);
 	key = c->key;
 	if (key.active && key.passive)
 		goto exit;
-	if (key.passive && !tipc_aead_users(c->aead[key.passive]))
-		goto exit;
 	if (key.pending) {
-		if (pos)
-			goto exit;
 		if (tipc_aead_users(c->aead[key.pending]) > 0)
 			goto exit;
+		/* if (pos): ok with replacing, will be aligned when needed */
 		/* Replace it */
-		new_pending = key.pending;
-		new_passive = key.passive;
-		new_key = new_pending;
+		new_key = key.pending;
 	} else {
 		if (pos) {
 			if (key.active && pos != key_next(key.active)) {
-				new_pending = key.pending;
-				new_passive = pos;
-				new_key = new_passive;
+				key.passive = pos;
+				new_key = pos;
 				goto attach;
 			} else if (!key.active && !key.passive) {
-				new_pending = pos;
-				new_passive = key.passive;
-				new_key = new_pending;
+				key.pending = pos;
+				new_key = pos;
 				goto attach;
 			}
 		}
-		new_pending = key_next(key.active ?: key.passive);
-		new_passive = key.passive;
-		new_key = new_pending;
+		key.pending = key_next(key.active ?: key.passive);
+		new_key = key.pending;
 	}
 
 attach:
 	aead->crypto = c;
-	tipc_crypto_key_set_state(c, new_passive, key.active, new_pending);
 	tipc_aead_rcu_replace(c->aead[new_key], aead, &c->lock);
-
+	if (likely(c->key.keys != key.keys))
+		tipc_crypto_key_set_state(c, key.passive, key.active,
+					  key.pending);
 	c->working = 1;
 	c->timer1 = jiffies;
 	c->timer2 = jiffies;
@@ -1204,7 +1189,8 @@ static bool tipc_crypto_key_try_align(struct tipc_crypto *rx, u8 new_pending)
 		rcu_assign_pointer(rx->aead[new_passive], tmp2);
 	refcount_set(&tmp1->refcnt, 1);
 	aligned = true;
-	pr_info("RX(%s): key is aligned!\n", tipc_node_get_id_str(rx->node));
+	pr_info_ratelimited("%s: key[%d] -> key[%d]\n", rx->name, key.pending,
+			    new_pending);
 
 exit:
 	spin_unlock(&rx->lock);
@@ -1274,8 +1260,7 @@ static struct tipc_aead *tipc_crypto_key_pick_tx(struct tipc_crypto *tx,
 /**
  * tipc_crypto_key_synch: Synch own key data according to peer key status
  * @rx: RX crypto handle
- * @new_rx_active: latest RX active key from peer
- * @hdr: TIPCv2 message
+ * @skb: TIPCv2 message buffer (incl. the ehdr from peer)
  *
  * This function updates the peer node related data as the peer RX active key
  * has changed, so the number of TX keys' users on this node are increased and
@@ -1283,44 +1268,35 @@ static struct tipc_aead *tipc_crypto_key_pick_tx(struct tipc_crypto *tx,
  *
  * The "per-peer" sndnxt is also reset when the peer key has switched.
  */
-static void tipc_crypto_key_synch(struct tipc_crypto *rx, u8 new_rx_active,
-				  struct tipc_msg *hdr)
+static void tipc_crypto_key_synch(struct tipc_crypto *rx, struct sk_buff *skb)
 {
-	struct net *net = rx->net;
-	struct tipc_crypto *tx = tipc_net(net)->crypto_tx;
-	u8 cur_rx_active;
-
-	/* TX might be even not ready yet */
-	if (unlikely(!tx->key.active && !tx->key.pending))
-		return;
-
-	cur_rx_active = atomic_read(&rx->peer_rx_active);
-	if (likely(cur_rx_active == new_rx_active))
-		return;
+	struct tipc_ehdr *ehdr = (struct tipc_ehdr *)skb_network_header(skb);
+	struct tipc_crypto *tx = tipc_net(rx->net)->crypto_tx;
+	struct tipc_msg *hdr = buf_msg(skb);
+	u32 self = tipc_own_addr(rx->net);
+	u8 cur, new;
 
-	/* Make sure this message destined for this node */
-	if (unlikely(msg_short(hdr) ||
-		     msg_destnode(hdr) != tipc_own_addr(net)))
+	/* Ensure this message is destined to us first */
+	if (!ehdr->destined || msg_short(hdr) || msg_destnode(hdr) != self)
 		return;
 
-	/* Peer RX active key has changed, try to update owns' & TX users */
-	if (atomic_cmpxchg(&rx->peer_rx_active,
-			   cur_rx_active,
-			   new_rx_active) == cur_rx_active) {
-		if (new_rx_active)
-			tipc_aead_users_inc(tx->aead[new_rx_active], INT_MAX);
-		if (cur_rx_active)
-			tipc_aead_users_dec(tx->aead[cur_rx_active], 0);
+	/* Peer RX active key has changed, let's update own TX users */
+	cur = atomic_read(&rx->peer_rx_active);
+	new = ehdr->rx_key_active;
+	if (tx->key.keys &&
+	    cur != new &&
+	    atomic_cmpxchg(&rx->peer_rx_active, cur, new) == cur) {
+		if (new)
+			tipc_aead_users_inc(tx->aead[new], INT_MAX);
+		if (cur)
+			tipc_aead_users_dec(tx->aead[cur], 0);
 
 		atomic64_set(&rx->sndnxt, 0);
 		/* Mark the point TX key users changed */
 		tx->timer1 = jiffies;
 
-#ifdef TIPC_CRYPTO_DEBUG
-		pr_info("TX(%s): key users changed %d-- %d++, peer RX(%s)\n",
-			tipc_own_id_string(net), cur_rx_active,
-			new_rx_active, tipc_node_get_id_str(rx->node));
-#endif
+		pr_debug("%s: key users changed %d-- %d++, peer %s\n",
+			 tx->name, cur, new, rx->name);
 	}
 }
 
@@ -1338,7 +1314,7 @@ static int tipc_crypto_key_revoke(struct net *net, u8 tx_key)
 	tipc_crypto_key_detach(tx->aead[key.active], &tx->lock);
 	spin_unlock(&tx->lock);
 
-	pr_warn("TX(%s): key is revoked!\n", tipc_own_id_string(net));
+	pr_warn("%s: key is revoked\n", tx->name);
 	return -EKEYREVOKED;
 }
 
@@ -1371,25 +1347,26 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
 	c->timer1 = jiffies;
 	c->timer2 = jiffies;
 	spin_lock_init(&c->lock);
-	*crypto = c;
+	scnprintf(c->name, 48, "%s(%s)", (is_rx(c)) ? "RX" : "TX",
+		  (is_rx(c)) ? tipc_node_get_id_str(c->node) :
+			       tipc_own_id_string(c->net));
 
+	*crypto = c;
 	return 0;
 }
 
 void tipc_crypto_stop(struct tipc_crypto **crypto)
 {
-	struct tipc_crypto *c, *tx, *rx;
-	bool is_rx;
+	struct tipc_crypto *c = *crypto, *tx, *rx;
 	u8 k;
 
-	if (!*crypto)
+	if (!c)
 		return;
 
 	rcu_read_lock();
 	/* RX stopping? => decrease TX key users if any */
-	is_rx = !!((*crypto)->node);
-	if (is_rx) {
-		rx = *crypto;
+	if (is_rx(c)) {
+		rx = c;
 		tx = tipc_net(rx->net)->crypto_tx;
 		k = atomic_read(&rx->peer_rx_active);
 		if (k) {
@@ -1400,15 +1377,10 @@ void tipc_crypto_stop(struct tipc_crypto **crypto)
 	}
 
 	/* Release AEAD keys */
-	c = *crypto;
 	for (k = KEY_MIN; k <= KEY_MAX; k++)
 		tipc_aead_put(rcu_dereference(c->aead[k]));
 	rcu_read_unlock();
-
-	pr_warn("%s(%s) has been purged, node left!\n",
-		(is_rx) ? "RX" : "TX",
-		(is_rx) ? tipc_node_get_id_str((*crypto)->node) :
-			  tipc_own_id_string((*crypto)->net));
+	pr_debug("%s: has been stopped\n", c->name);
 
 	/* Free this crypto statistics */
 	free_percpu(c->stats);
@@ -1422,102 +1394,81 @@ void tipc_crypto_timeout(struct tipc_crypto *rx)
 	struct tipc_net *tn = tipc_net(rx->net);
 	struct tipc_crypto *tx = tn->crypto_tx;
 	struct tipc_key key;
-	u8 new_pending, new_passive;
 	int cmd;
 
-	/* TX key activating:
-	 * The pending key (users > 0) -> active
-	 * The active key if any (users == 0) -> free
-	 */
+	/* TX pending: taking all users & stable -> active */
 	spin_lock(&tx->lock);
 	key = tx->key;
 	if (key.active && tipc_aead_users(tx->aead[key.active]) > 0)
 		goto s1;
 	if (!key.pending || tipc_aead_users(tx->aead[key.pending]) <= 0)
 		goto s1;
-	if (time_before(jiffies, tx->timer1 + TIPC_TX_LASTING_LIM))
+	if (time_before(jiffies, tx->timer1 + TIPC_TX_LASTING_TIME))
 		goto s1;
 
 	tipc_crypto_key_set_state(tx, key.passive, key.pending, 0);
 	if (key.active)
 		tipc_crypto_key_detach(tx->aead[key.active], &tx->lock);
 	this_cpu_inc(tx->stats->stat[STAT_SWITCHES]);
-	pr_info("TX(%s): key %d is activated!\n", tipc_own_id_string(tx->net),
-		key.pending);
+	pr_info("%s: key[%d] is activated\n", tx->name, key.pending);
 
 s1:
 	spin_unlock(&tx->lock);
 
-	/* RX key activating:
-	 * The pending key (users > 0) -> active
-	 * The active key if any -> passive, freed later
-	 */
+	/* RX pending: having user -> active */
 	spin_lock(&rx->lock);
 	key = rx->key;
 	if (!key.pending || tipc_aead_users(rx->aead[key.pending]) <= 0)
 		goto s2;
 
-	new_pending = (key.passive &&
-		       !tipc_aead_users(rx->aead[key.passive])) ?
-				       key.passive : 0;
-	new_passive = (key.active) ?: ((new_pending) ? 0 : key.passive);
-	tipc_crypto_key_set_state(rx, new_passive, key.pending, new_pending);
+	if (key.active)
+		key.passive = key.active;
+	key.active = key.pending;
+	rx->timer2 = jiffies;
+	tipc_crypto_key_set_state(rx, key.passive, key.active, 0);
 	this_cpu_inc(rx->stats->stat[STAT_SWITCHES]);
-	pr_info("RX(%s): key %d is activated!\n",
-		tipc_node_get_id_str(rx->node),	key.pending);
+	pr_info("%s: key[%d] is activated\n", rx->name, key.pending);
 	goto s5;
 
 s2:
-	/* RX key "faulty" switching:
-	 * The faulty pending key (users < -30) -> passive
-	 * The passive key (users = 0) -> pending
-	 * Note: This only happens after RX deactivated - s3!
-	 */
-	key = rx->key;
-	if (!key.pending || tipc_aead_users(rx->aead[key.pending]) > -30)
-		goto s3;
-	if (!key.passive || tipc_aead_users(rx->aead[key.passive]) != 0)
+	/* RX pending: not working -> remove */
+	if (!key.pending || tipc_aead_users(rx->aead[key.pending]) > -10)
 		goto s3;
 
-	new_pending = key.passive;
-	new_passive = key.pending;
-	tipc_crypto_key_set_state(rx, new_passive, key.active, new_pending);
+	tipc_crypto_key_set_state(rx, key.passive, key.active, 0);
+	tipc_crypto_key_detach(rx->aead[key.pending], &rx->lock);
+	pr_info("%s: key[%d] is removed\n", rx->name, key.pending);
 	goto s5;
 
 s3:
-	/* RX key deactivating:
-	 * The passive key if any -> pending
-	 * The active key -> passive (users = 0) / pending
-	 * The pending key if any -> passive (users = 0)
-	 */
-	key = rx->key;
+	/* RX active: timed out or no user -> pending */
 	if (!key.active)
 		goto s4;
-	if (time_before(jiffies, rx->timer1 + TIPC_RX_ACTIVE_LIM))
+	if (time_before(jiffies, rx->timer1 + TIPC_RX_ACTIVE_LIM) &&
+	    tipc_aead_users(rx->aead[key.active]) > 0)
 		goto s4;
 
-	new_pending = (key.passive) ?: key.active;
-	new_passive = (key.passive) ? key.active : key.pending;
-	tipc_aead_users_set(rx->aead[new_pending], 0);
-	if (new_passive)
-		tipc_aead_users_set(rx->aead[new_passive], 0);
-	tipc_crypto_key_set_state(rx, new_passive, 0, new_pending);
-	pr_info("RX(%s): key %d is deactivated!\n",
-		tipc_node_get_id_str(rx->node), key.active);
+	if (key.pending)
+		key.passive = key.active;
+	else
+		key.pending = key.active;
+	rx->timer2 = jiffies;
+	tipc_crypto_key_set_state(rx, key.passive, 0, key.pending);
+	tipc_aead_users_set(rx->aead[key.pending], 0);
+	pr_info("%s: key[%d] is deactivated\n", rx->name, key.active);
 	goto s5;
 
 s4:
-	/* RX key passive -> freed: */
-	key = rx->key;
-	if (!key.passive || !tipc_aead_users(rx->aead[key.passive]))
+	/* RX passive: outdated or not working -> free */
+	if (!key.passive)
 		goto s5;
-	if (time_before(jiffies, rx->timer2 + TIPC_RX_PASSIVE_LIM))
+	if (time_before(jiffies, rx->timer2 + TIPC_RX_PASSIVE_LIM) &&
+	    tipc_aead_users(rx->aead[key.passive]) > -10)
 		goto s5;
 
 	tipc_crypto_key_set_state(rx, 0, key.active, key.pending);
 	tipc_crypto_key_detach(rx->aead[key.passive], &rx->lock);
-	pr_info("RX(%s): key %d is freed!\n", tipc_node_get_id_str(rx->node),
-		key.passive);
+	pr_info("%s: key[%d] is freed\n", rx->name, key.passive);
 
 s5:
 	spin_unlock(&rx->lock);
@@ -1560,10 +1511,12 @@ int tipc_crypto_xmit(struct net *net, struct sk_buff **skb,
 	struct tipc_crypto *__rx = tipc_node_crypto_rx(__dnode);
 	struct tipc_crypto *tx = tipc_net(net)->crypto_tx;
 	struct tipc_crypto_stats __percpu *stats = tx->stats;
+	struct tipc_msg *hdr = buf_msg(*skb);
 	struct tipc_key key = tx->key;
 	struct tipc_aead *aead = NULL;
-	struct sk_buff *probe;
+	struct sk_buff *_skb;
 	int rc = -ENOKEY;
+	u32 user = msg_user(hdr);
 	u8 tx_key;
 
 	/* No encryption? */
@@ -1581,17 +1534,18 @@ int tipc_crypto_xmit(struct net *net, struct sk_buff **skb,
 			goto encrypt;
 		if (__rx && atomic_read(&__rx->peer_rx_active) == tx_key)
 			goto encrypt;
-		if (TIPC_SKB_CB(*skb)->probe)
+		if (TIPC_SKB_CB(*skb)->probe) {
+			pr_debug("%s: probing for key[%d]\n", tx->name,
+				 key.pending);
 			goto encrypt;
-		if (!__rx &&
-		    time_after(jiffies, tx->timer2 + TIPC_TX_PROBE_LIM)) {
-			tx->timer2 = jiffies;
-			probe = skb_clone(*skb, GFP_ATOMIC);
-			if (probe) {
-				TIPC_SKB_CB(probe)->probe = 1;
-				tipc_crypto_xmit(net, &probe, b, dst, __dnode);
-				if (probe)
-					b->media->send_msg(net, probe, b, dst);
+		}
+		if (user == LINK_CONFIG || user == LINK_PROTOCOL) {
+			_skb = skb_clone(*skb, GFP_ATOMIC);
+			if (_skb) {
+				TIPC_SKB_CB(_skb)->probe = 1;
+				tipc_crypto_xmit(net, &_skb, b, dst, __dnode);
+				if (_skb)
+					b->media->send_msg(net, _skb, b, dst);
 			}
 		}
 	}
@@ -1673,22 +1627,12 @@ int tipc_crypto_rcv(struct net *net, struct tipc_crypto *rx,
 	if (unlikely(!rx))
 		goto pick_tx;
 
-	/* Pick RX key according to TX key, three cases are possible:
-	 * 1) The current active key (likely) or;
-	 * 2) The pending (new or deactivated) key (if any) or;
-	 * 3) The passive or old active key (i.e. users > 0);
-	 */
 	tx_key = ((struct tipc_ehdr *)(*skb)->data)->tx_key;
+	/* Pick RX key according to TX key if any */
 	key = rx->key;
-	if (likely(tx_key == key.active))
+	if (tx_key == key.active || tx_key == key.pending ||
+	    tx_key == key.passive)
 		goto decrypt;
-	if (tx_key == key.pending)
-		goto decrypt;
-	if (tx_key == key.passive) {
-		rx->timer2 = jiffies;
-		if (tipc_aead_users(rx->aead[key.passive]) > 0)
-			goto decrypt;
-	}
 
 	/* Unknown key, let's try to align RX key(s) */
 	if (tipc_crypto_key_try_align(rx, tx_key))
@@ -1747,21 +1691,17 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 	struct tipc_aead *tmp = NULL;
 	struct tipc_ehdr *ehdr;
 	struct tipc_node *n;
-	u8 rx_key_active;
-	bool destined;
 
 	/* Is this completed by TX? */
-	if (unlikely(!rx->node)) {
+	if (unlikely(is_tx(aead->crypto))) {
 		rx = skb_cb->tx_clone_ctx.rx;
-#ifdef TIPC_CRYPTO_DEBUG
-		pr_info("TX->RX(%s): err %d, aead %p, skb->next %p, flags %x\n",
-			(rx) ? tipc_node_get_id_str(rx->node) : "-", err, aead,
-			(*skb)->next, skb_cb->flags);
-		pr_info("skb_cb [recurs %d, last %p], tx->aead [%p %p %p]\n",
-			skb_cb->tx_clone_ctx.recurs, skb_cb->tx_clone_ctx.last,
-			aead->crypto->aead[1], aead->crypto->aead[2],
-			aead->crypto->aead[3]);
-#endif
+		pr_debug("TX->RX(%s): err %d, aead %p, skb->next %p, flags %x\n",
+			 (rx) ? tipc_node_get_id_str(rx->node) : "-", err, aead,
+			 (*skb)->next, skb_cb->flags);
+		pr_debug("skb_cb [recurs %d, last %p], tx->aead [%p %p %p]\n",
+			 skb_cb->tx_clone_ctx.recurs, skb_cb->tx_clone_ctx.last,
+			 aead->crypto->aead[1], aead->crypto->aead[2],
+			 aead->crypto->aead[3]);
 		if (unlikely(err)) {
 			if (err == -EBADMSG && (*skb)->next)
 				tipc_rcv(net, (*skb)->next, b);
@@ -1782,9 +1722,6 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 				goto free_skb;
 		}
 
-		/* Skip cloning this time as we had a RX pending key */
-		if (rx->key.pending)
-			goto rcv;
 		if (tipc_aead_clone(&tmp, aead) < 0)
 			goto rcv;
 		if (tipc_crypto_key_attach(rx, tmp, ehdr->tx_key) < 0) {
@@ -1809,8 +1746,12 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 
 	/* Remove ehdr & auth. tag prior to tipc_rcv() */
 	ehdr = (struct tipc_ehdr *)(*skb)->data;
-	destined = ehdr->destined;
-	rx_key_active = ehdr->rx_key_active;
+
+	/* Mark this point, RX passive still works */
+	if (rx->key.passive && ehdr->tx_key == rx->key.passive)
+		rx->timer2 = jiffies;
+
+	skb_reset_network_header(*skb);
 	skb_pull(*skb, tipc_ehdr_size(ehdr));
 	pskb_trim(*skb, (*skb)->len - aead->authsize);
 
@@ -1820,9 +1761,8 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
 		goto free_skb;
 	}
 
-	/* Update peer RX active key & TX users */
-	if (destined)
-		tipc_crypto_key_synch(rx, rx_key_active, buf_msg(*skb));
+	/* Ok, everything's fine, try to synch own keys according to peers' */
+	tipc_crypto_key_synch(rx, *skb);
 
 	/* Mark skb decrypted */
 	skb_cb->decrypted = 1;
@@ -1881,7 +1821,7 @@ static void tipc_crypto_do_cmd(struct net *net, int cmd)
 	/* Print crypto statistics */
 	for (i = 0, j = 0; i < MAX_STATS; i++)
 		j += scnprintf(buf + j, 200 - j, "|%11s ", hstats[i]);
-	pr_info("\nCounter     %s", buf);
+	pr_info("Counter     %s", buf);
 
 	memset(buf, '-', 115);
 	buf[115] = '\0';
@@ -1939,7 +1879,7 @@ static char *tipc_crypto_key_dump(struct tipc_crypto *c, char *buf)
 		aead = rcu_dereference(c->aead[k]);
 		if (aead)
 			i += scnprintf(buf + i, 200 - i,
-				       "{\"%s...\", \"%s\"}/%d:%d",
+				       "{\"0x...%s\", \"%s\"}/%d:%d",
 				       aead->hint,
 				       (aead->mode == CLUSTER_KEY) ? "c" : "p",
 				       atomic_read(&aead->users),
@@ -1948,14 +1888,13 @@ static char *tipc_crypto_key_dump(struct tipc_crypto *c, char *buf)
 		i += scnprintf(buf + i, 200 - i, "\n");
 	}
 
-	if (c->node)
+	if (is_rx(c))
 		i += scnprintf(buf + i, 200 - i, "\tPeer RX active: %d\n",
 			       atomic_read(&c->peer_rx_active));
 
 	return buf;
 }
 
-#ifdef TIPC_CRYPTO_DEBUG
 static char *tipc_key_change_dump(struct tipc_key old, struct tipc_key new,
 				  char *buf)
 {
@@ -1986,4 +1925,3 @@ static char *tipc_key_change_dump(struct tipc_key old, struct tipc_key new,
 	i += scnprintf(buf + i, 32 - i, "]");
 	return buf;
 }
-#endif
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
