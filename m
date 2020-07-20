Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEEF226E3A
	for <lists+tipc-discussion@lfdr.de>; Mon, 20 Jul 2020 20:26:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jxaUi-0000T2-3e; Mon, 20 Jul 2020 18:26:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jxaUh-0000Sv-DN
 for tipc-discussion@lists.sourceforge.net; Mon, 20 Jul 2020 18:26:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QJ/7oek+XI5fM72+7s89+FS6tfv7HggVu5bQAM67kb4=; b=gOMUj0UIxVSPwt3R6XYLuEJkIv
 gE3aOaBuA4tRbCcrnSuBCAtc710RQ77grssI9C8Z/QU307wcJIhAWzfdnC3alf0jPGV6IN6bGQhn/
 zxyZx45cqAMS1lQ9/ZbYYtQo8AptWPnzNZoB0hHFjURD83Pwyv0Hfg27GGHSyZgws5DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QJ/7oek+XI5fM72+7s89+FS6tfv7HggVu5bQAM67kb4=; b=KatgPPwzqrzKJeG226RDvTAR7E
 ynmE55xPPKiiPohr05enKZ/aywsYPjDFSiYS02ZOjA118UuUHbOPbgoW0nQHcey2foFBGPBXROxbj
 FPZtvFFpTdUXreRr9lVY6rofgwOMTa3mvxfSYDK5RggMbgqu3K0pfxEBvJmUOS3Lp4/k=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jxaUf-001vHQ-Ht
 for tipc-discussion@lists.sourceforge.net; Mon, 20 Jul 2020 18:26:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595269582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QJ/7oek+XI5fM72+7s89+FS6tfv7HggVu5bQAM67kb4=;
 b=ISwbqhIlWNT80pvYhdCWjlLuj2yz/ZlDqUv+0VaOy3StfMbNSZALm94F/Jxt3dw3e0frMj
 F7oJISYob/TzrFjK3u3gch/jEqiXVW98HrCA9N2Ck5KEk136qz2QjIKPjawCuBM7Qnqgcx
 Fv115jnLnZgomzgwXVC7cFCQ+EvPjaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-8uTiyKnbOmCK1fkV4UGZmg-1; Mon, 20 Jul 2020 14:26:19 -0400
X-MC-Unique: 8uTiyKnbOmCK1fkV4UGZmg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1881D100CCC2;
 Mon, 20 Jul 2020 18:26:18 +0000 (UTC)
Received: from [10.10.112.227] (ovpn-112-227.rdu2.redhat.com [10.10.112.227])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B838F5D9D5;
 Mon, 20 Jul 2020 18:26:16 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
 <20200710101128.19713-6-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <67184d4a-d1a8-906b-cf94-6237d6731ca3@redhat.com>
Date: Mon, 20 Jul 2020 14:26:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200710101128.19713-6-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxaUf-001vHQ-Ht
Subject: Re: [tipc-discussion] [PATCH RFC 5/5] tipc: add automatic rekeying
 for encryption key
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 7/10/20 6:11 AM, Tuong Lien wrote:
> Rekeying is required for security since a key is less secure when using
> for a long time. Also, key will be detached when its nonce value (or
> seqno ...) is exhausted. We now make the rekeying process automatic and
> configurable by user.
>
> Basically, TIPC will at a specific interval generate a new key by using
> the kernel 'Random Number Generator' cipher, then attach it as the node
> TX key and securely distribute to others in the cluster as RX keys (-
> the key exchange). The automatic key switching will then take over, and
> make the new key active shortly. Afterwards, the traffic from this node
> will be encrypted with the new session key. The same can happen in peer
> nodes but not necessarily at the same time.
>
> For simplicity, the automatically generated key will be initiated as a
> per node key. It is not too hard to also support a cluster key rekeying
> (e.g. a given node will generate a unique cluster key and update to the
> others in the cluster...), but that doesn't bring much benefit, while a
> per-node key is even more security.
s/security/secure/
>
> We also enable user to force a rekeying or change the rekeying interval
> via netlink, the new 'set key' command option: 'TIPC_NLA_NODE_REKEYING'
> is added for these purposes as follows:
> - A value >= 1 will be set as the rekeying interval (in minutes);
> - A value of 0 will disable the rekeying;
> - A value of 'TIPC_REKEYING_NOW' (~0) will force an immediate rekeying;
>
> The default rekeying interval is (60 * 24) minutes i.e. done every day.
> There isn't any restriction for the value but user shouldn't set it too
> small or too large which results in an "ineffective" rekeying (thats ok
> for testing though).
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   include/uapi/linux/tipc.h         |   2 +
>   include/uapi/linux/tipc_netlink.h |   1 +
>   net/tipc/crypto.c                 | 119 +++++++++++++++++++++++++++++++++++++-
>   net/tipc/crypto.h                 |   2 +
>   net/tipc/netlink.c                |   1 +
>   net/tipc/node.c                   |  28 ++++++++-
>   6 files changed, 148 insertions(+), 5 deletions(-)
>
> diff --git a/include/uapi/linux/tipc.h b/include/uapi/linux/tipc.h
> index add01db1daef..80ea15e12113 100644
> --- a/include/uapi/linux/tipc.h
> +++ b/include/uapi/linux/tipc.h
> @@ -254,6 +254,8 @@ static inline int tipc_aead_key_size(struct tipc_aead_key *key)
>   	return sizeof(*key) + key->keylen;
>   }
>   
> +#define TIPC_REKEYING_NOW		(~0U)
> +
>   /* The macros and functions below are deprecated:
>    */
>   
> diff --git a/include/uapi/linux/tipc_netlink.h b/include/uapi/linux/tipc_netlink.h
> index d484baa9d365..d847dd671d79 100644
> --- a/include/uapi/linux/tipc_netlink.h
> +++ b/include/uapi/linux/tipc_netlink.h
> @@ -166,6 +166,7 @@ enum {
>   	TIPC_NLA_NODE_ID,		/* data */
>   	TIPC_NLA_NODE_KEY,		/* data */
>   	TIPC_NLA_NODE_KEY_MASTER,	/* flag */
> +	TIPC_NLA_NODE_REKEYING,		/* u32 */
>   
>   	__TIPC_NLA_NODE_MAX,
>   	TIPC_NLA_NODE_MAX = __TIPC_NLA_NODE_MAX - 1
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index 9d00555ede83..d497585010ee 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -36,6 +36,7 @@
>   
>   #include <crypto/aead.h>
>   #include <crypto/aes.h>
> +#include <crypto/rng.h>
>   #include "crypto.h"
>   #include "msg.h"
>   #include "bcast.h"
> @@ -48,6 +49,8 @@
>   #define TIPC_MAX_TFMS_DEF	10
>   #define TIPC_MAX_TFMS_LIM	1000
>   
> +#define TIPC_REKEYING_INTV_DEF	(60 * 24) /* default: 1 day */
> +
>   /**
>    * TIPC Key ids
>    */
> @@ -181,6 +184,7 @@ struct tipc_crypto_stats {
>    * @wq: common workqueue on TX crypto
>    * @work: delayed work sched for TX/RX
>    * @key_distr: key distributing state
> + * @rekeying_intv: rekeying interval (in minutes)
>    * @stats: the crypto statistics
>    * @name: the crypto name
>    * @sndnxt: the per-peer sndnxt (TX)
> @@ -206,6 +210,7 @@ struct tipc_crypto {
>   #define KEY_DISTR_SCHED		1
>   #define KEY_DISTR_COMPL		2
>   	atomic_t key_distr;
> +	u32 rekeying_intv;
>   
>   	struct tipc_crypto_stats __percpu *stats;
>   	char name[48];
> @@ -294,7 +299,9 @@ static char *tipc_key_change_dump(struct tipc_key old, struct tipc_key new,
>   static int tipc_crypto_key_xmit(struct net *net, struct tipc_aead_key *skey,
>   				u16 gen, u8 mode, u32 dnode);
>   static bool tipc_crypto_key_rcv(struct tipc_crypto *rx, struct tipc_msg *hdr);
> +static void tipc_crypto_work_tx(struct work_struct *work);
>   static void tipc_crypto_work_rx(struct work_struct *work);
> +static int tipc_aead_key_generate(struct tipc_aead_key *skey);
>   
>   #define is_tx(crypto) (!(crypto)->node)
>   #define is_rx(crypto) (!is_tx(crypto))
> @@ -342,6 +349,27 @@ int tipc_aead_key_validate(struct tipc_aead_key *ukey)
>   	return 0;
>   }
>   
> +/**
> + * tipc_aead_key_generate - Generate new session key
> + * @skey: input/output key with new content
> + *
> + * Return: 0 in case of success, otherwise < 0
> + */
> +static int tipc_aead_key_generate(struct tipc_aead_key *skey)
> +{
> +	int rc = 0;
> +
> +	/* Fill the key's content with a random value via RNG cipher */
> +	rc = crypto_get_default_rng();
> +	if (likely(!rc)) {
> +		rc = crypto_rng_get_bytes(crypto_default_rng, skey->key,
> +					  skey->keylen);
> +		crypto_put_default_rng();
> +	}
> +
> +	return rc;
> +}
> +
>   static struct tipc_aead *tipc_aead_get(struct tipc_aead __rcu *aead)
>   {
>   	struct tipc_aead *tmp;
> @@ -1471,13 +1499,16 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
>   	atomic64_set(&c->sndnxt, 0);
>   	c->timer1 = jiffies;
>   	c->timer2 = jiffies;
> +	c->rekeying_intv = TIPC_REKEYING_INTV_DEF;
>   	spin_lock_init(&c->lock);
>   	scnprintf(c->name, 48, "%s(%s)", (is_rx(c)) ? "RX" : "TX",
>   		  (is_rx(c)) ? tipc_node_get_id_str(c->node) :
>   			       tipc_own_id_string(c->net));
>   
> -        if (is_rx(c))
> -                INIT_DELAYED_WORK(&c->work, tipc_crypto_work_rx);
> +	if (is_rx(c))
> +		INIT_DELAYED_WORK(&c->work, tipc_crypto_work_rx);
> +	else
> +		INIT_DELAYED_WORK(&c->work, tipc_crypto_work_tx);
>   
>   	*crypto = c;
>   	return 0;
> @@ -1492,8 +1523,11 @@ void tipc_crypto_stop(struct tipc_crypto **crypto)
>   		return;
>   
>   	/* Flush any queued works & destroy wq */
> -	if (is_tx(c))
> +	if (is_tx(c)) {
> +		c->rekeying_intv = 0;
> +		cancel_delayed_work_sync(&c->work);
>   		destroy_workqueue(c->wq);
> +	}
>   
>   	/* Release AEAD keys */
>   	rcu_read_lock();
> @@ -2346,3 +2380,82 @@ static void tipc_crypto_work_rx(struct work_struct *work)
>   
>   	tipc_node_put(rx->node);
>   }
> +
> +/**
> + * tipc_crypto_rekeying_sched - (Re)schedule rekeying w/o new interval
> + * @tx: TX crypto
> + * @changed: if the rekeying needs to be rescheduled with new interval
> + * @new_intv: new rekeying interval (when "changed" = true)
> + */
> +void tipc_crypto_rekeying_sched(struct tipc_crypto *tx, bool changed,
> +				u32 new_intv)
> +{
> +	unsigned long delay;
> +	bool now = false;
> +
> +	if (changed) {
> +		if (new_intv == TIPC_REKEYING_NOW)
> +			now = true;
> +		else
> +			tx->rekeying_intv = new_intv;
> +		cancel_delayed_work_sync(&tx->work);
> +	}
> +
> +	if (tx->rekeying_intv || now) {
> +		delay = (now) ? 0 : tx->rekeying_intv * 60 * 1000;
> +		queue_delayed_work(tx->wq, &tx->work, msecs_to_jiffies(delay));
> +	}
> +}
> +
> +/**
> + * tipc_crypto_work_tx - Scheduled TX works handler
> + * @work: the struct TX work
> + *
> + * The function processes the previous scheduled work, i.e. key rekeying, by
> + * generating a new session key based on current one, then attaching it to the
> + * TX crypto and finally distributing it to peers. It also re-schedules the
> + * rekeying if needed.
> + */
> +static void tipc_crypto_work_tx(struct work_struct *work)
> +{
> +	struct delayed_work *dwork = to_delayed_work(work);
> +	struct tipc_crypto *tx = container_of(dwork, struct tipc_crypto, work);
> +	struct tipc_aead_key *skey = NULL;
> +	struct tipc_key key = tx->key;
> +	struct tipc_aead *aead;
> +	int rc = -ENOMEM;
> +
> +	if (unlikely(key.pending))
> +		goto resched;
> +
> +	/* Take current key as a template */
> +	rcu_read_lock();
> +	aead = rcu_dereference(tx->aead[key.active ?: KEY_MASTER]);
> +	if (unlikely(!aead)) {
> +		rcu_read_unlock();
> +		/* At least one key should exist for securing */
> +		return;
> +	}
> +
> +	/* Lets duplicate it first */
> +	skey = kmemdup(aead->key, tipc_aead_key_size(aead->key), GFP_ATOMIC);
> +	rcu_read_unlock();
> +
> +	/* Now, generate new key, initiate & distribute it */
> +	if (likely(skey)) {
> +		rc = tipc_aead_key_generate(skey) ?:
> +		     tipc_crypto_key_init(tx, skey, PER_NODE_KEY, false);
> +		if (likely(rc > 0))
> +			rc = tipc_crypto_key_distr(tx, rc, NULL);
> +		kzfree(skey);
> +	}
> +
> +	if (likely(!rc))
> +		pr_info("%s: rekeying has been done\n", tx->name);
> +	else
> +		pr_warn_ratelimited("%s: rekeying returns %d\n", tx->name, rc);
> +
> +resched:
> +	/* Re-schedule rekeying if any */
> +	tipc_crypto_rekeying_sched(tx, false, 0);
> +}
> diff --git a/net/tipc/crypto.h b/net/tipc/crypto.h
> index 70bda3d7e174..e1f4e8fb5c10 100644
> --- a/net/tipc/crypto.h
> +++ b/net/tipc/crypto.h
> @@ -171,6 +171,8 @@ void tipc_crypto_key_flush(struct tipc_crypto *c);
>   int tipc_crypto_key_distr(struct tipc_crypto *tx, u8 key,
>   			  struct tipc_node *dest);
>   void tipc_crypto_msg_rcv(struct net *net, struct sk_buff *skb);
> +void tipc_crypto_rekeying_sched(struct tipc_crypto *tx, bool changed,
> +				u32 new_intv);
>   int tipc_aead_key_validate(struct tipc_aead_key *ukey);
>   bool tipc_ehdr_validate(struct sk_buff *skb);
>   
> diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
> index 1ec00fcc26ee..c447cb5f879e 100644
> --- a/net/tipc/netlink.c
> +++ b/net/tipc/netlink.c
> @@ -109,6 +109,7 @@ const struct nla_policy tipc_nl_node_policy[TIPC_NLA_NODE_MAX + 1] = {
>   	[TIPC_NLA_NODE_KEY]		= { .type = NLA_BINARY,
>   					    .len = TIPC_AEAD_KEY_SIZE_MAX},
>   	[TIPC_NLA_NODE_KEY_MASTER]	= { .type = NLA_FLAG },
> +	[TIPC_NLA_NODE_REKEYING]	= { .type = NLA_U32 },
>   };
>   
>   /* Properties valid for media, bearer and link */
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 186951b690d2..95f045cf9f55 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -2877,6 +2877,17 @@ static int tipc_nl_retrieve_nodeid(struct nlattr **attrs, u8 **node_id)
>   	return 0;
>   }
>   
> +static int tipc_nl_retrieve_rekeying(struct nlattr **attrs, u32 *intv)
> +{
> +	struct nlattr *attr = attrs[TIPC_NLA_NODE_REKEYING];
> +
> +	if (!attr)
> +		return -ENODATA;
> +
> +	*intv = nla_get_u32(attr);
> +	return 0;
> +}
> +
>   static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
>   {
>   	struct nlattr *attrs[TIPC_NLA_NODE_MAX + 1];
> @@ -2884,8 +2895,9 @@ static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
>   	struct tipc_crypto *tx = tipc_net(net)->crypto_tx, *c = tx;
>   	struct tipc_node *n = NULL;
>   	struct tipc_aead_key *ukey;
> -	bool master_key = false;
> +	bool rekeying = true, master_key = false;
>   	u8 *id, *own_id, mode;
> +	u32 intv = 0;
>   	int rc = 0;
>   
>   	if (!info->attrs[TIPC_NLA_NODE])
> @@ -2901,9 +2913,17 @@ static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
>   	if (!own_id)
>   		return -EPERM;
>   
> +	rc = tipc_nl_retrieve_rekeying(attrs, &intv);
> +	if (rc == -ENODATA)
> +		rekeying = false;
> +
>   	rc = tipc_nl_retrieve_key(attrs, &ukey);
> -	if (rc)
> +	if (rc == -ENODATA && rekeying) {
> +		rc = 0;
> +		goto rekeying;
> +	} else if (rc) {
>   		return rc;
> +	}
>   
>   	rc = tipc_aead_key_validate(ukey);
>   	if (rc)
> @@ -2938,6 +2958,10 @@ static int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
>   	if (!master_key)
>   		tipc_crypto_key_distr(tx, rc, NULL);
>   
> +rekeying:
> +	/* Schedule TX rekeying if needed */
> +	tipc_crypto_rekeying_sched(tx, rekeying, intv);
> +
>   exit:
>   	if (n)
>   		tipc_node_put(n);

As usual a nice job from you.

Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
