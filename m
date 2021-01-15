Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F72F7E93
	for <lists+tipc-discussion@lfdr.de>; Fri, 15 Jan 2021 15:50:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l0QR4-0006F8-Lp; Fri, 15 Jan 2021 14:50:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1l0QR3-0006Ex-Bg
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Jan 2021 14:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8TbVOdmaoNnf5UjCBN9L0P7g2YGWm7tbPVMqWEqzrUg=; b=fKeYPez8nEGLvICTmZkHnzsGiU
 y1zpodkJjk80Pxi7O6p3rTVbWrljwn323ODOqHafxWQK4ctJF2+qTi+QRnS1b8MqXUQgAHJ17fooE
 rD0qHmTth7nOd/6waqTpozrFZMazMTXh/5JU0xDMowRnBNAMpd8/e8bm+T75ifLgFR6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8TbVOdmaoNnf5UjCBN9L0P7g2YGWm7tbPVMqWEqzrUg=; b=bmahWLmg8rz5VvINh8Fibgpqsu
 caFKePTKLf//yP/gNVgrWKYu+BZQbaRVsAdTH3CeuBCTIooTyGwS7qp6Mhe3I9/ce2ZLpeCYBvCuI
 ERkcLlN3ltibd+N5rZZxoW07bGyUwtaYE4FdmYtfMvVH6gALA8kXro6WlUbVOqf8+Wiw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l0QQs-00FzcV-GL
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Jan 2021 14:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610722228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8TbVOdmaoNnf5UjCBN9L0P7g2YGWm7tbPVMqWEqzrUg=;
 b=BxQ4i9/YuOOge/FZ69uBtst70mukLWDwiDFNDH27reiPet3NUE6syTG5HDpy1e9pKdft9P
 po0BKFiAZBMqzSNPs6F/JSpyN7tR0VKiEC8DTs5YEPN2sfOrQ/jxf0jG0xl1B8ycDbr39W
 7lpaNbR/I2i0bMnKGb1h7ldV/C1YGM4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-35-1PJI3UVAOUewqlFq2syRcQ-1; Fri, 15 Jan 2021 09:50:24 -0500
X-MC-Unique: 1PJI3UVAOUewqlFq2syRcQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40E1C806673;
 Fri, 15 Jan 2021 14:50:23 +0000 (UTC)
Received: from [10.10.116.245] (ovpn-116-245.rdu2.redhat.com [10.10.116.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 917C560BF3;
 Fri, 15 Jan 2021 14:50:22 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20210115050736.61769-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <9dbf3c66-3b92-553d-ca7c-1a494c1ee204@redhat.com>
Date: Fri, 15 Jan 2021 09:50:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210115050736.61769-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l0QQs-00FzcV-GL
Subject: Re: [tipc-discussion] [net-next] tipc: clean up warnings detected
 by sparse
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 1/15/21 12:07 AM, Hoang Huu Le wrote:
> This patch fixes the following warning from sparse:
> ---
> net/tipc/monitor.c:263:35: sparse: warning: incorrect type in assignment..
> net/tipc/monitor.c:263:35: sparse:    expected unsigned int
> net/tipc/monitor.c:263:35: sparse:    got restricted __be32 [usertype]
> [...]
> net/tipc/monitor.c:522:35: sparse: warning: cast to restricted __be32
> [...]
> ---
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/crypto.c         | 12 ++++++------
>   net/tipc/monitor.c        | 32 ++++++++++++++++----------------
>   net/tipc/netlink_compat.c |  2 +-
>   net/tipc/node.c           |  5 +++++
>   4 files changed, 28 insertions(+), 23 deletions(-)
>
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index f4fca8f7f63f..096e1c903e3a 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -317,7 +317,7 @@ static int tipc_aead_key_generate(struct tipc_aead_key *skey);
>   
>   #define tipc_aead_rcu_replace(rcu_ptr, ptr, lock)			\
>   do {									\
> -	typeof(rcu_ptr) __tmp = rcu_dereference_protected((rcu_ptr),	\
> +	struct tipc_aead *__tmp = rcu_dereference_protected((rcu_ptr),	\
>   						lockdep_is_held(lock));	\
>   	rcu_assign_pointer((rcu_ptr), (ptr));				\
>   	tipc_aead_put(__tmp);						\
> @@ -798,7 +798,7 @@ static int tipc_aead_encrypt(struct tipc_aead *aead, struct sk_buff *skb,
>   	ehdr = (struct tipc_ehdr *)skb->data;
>   	salt = aead->salt;
>   	if (aead->mode == CLUSTER_KEY)
> -		salt ^= ehdr->addr; /* __be32 */
> +		salt ^= __be32_to_cpu(ehdr->addr); /* __be32 */
The /* __be32 */ comment looks redundant in this case, and even in other 
cases further down.
>   	else if (__dnode)
>   		salt ^= tipc_node_get_addr(__dnode);
>   	memcpy(iv, &salt, 4);
> @@ -929,7 +929,7 @@ static int tipc_aead_decrypt(struct net *net, struct tipc_aead *aead,
>   	ehdr = (struct tipc_ehdr *)skb->data;
>   	salt = aead->salt;
>   	if (aead->mode == CLUSTER_KEY)
> -		salt ^= ehdr->addr; /* __be32 */
> +		salt ^= __be32_to_cpu(ehdr->addr); /* __be32 */
>   	else if (ehdr->destined)
>   		salt ^= tipc_own_addr(net);
>   	memcpy(iv, &salt, 4);
> @@ -1946,16 +1946,16 @@ static void tipc_crypto_rcv_complete(struct net *net, struct tipc_aead *aead,
>   			goto rcv;
>   		}
>   		tipc_aead_put(aead);
> -		aead = tipc_aead_get(tmp);
> +		aead = tipc_aead_get((struct tipc_aead __force __rcu *)tmp);
>   	}
>   
>   	if (unlikely(err)) {
> -		tipc_aead_users_dec(aead, INT_MIN);
> +		tipc_aead_users_dec((struct tipc_aead __force __rcu *)aead, INT_MIN);
>   		goto free_skb;
>   	}
>   
>   	/* Set the RX key's user */
> -	tipc_aead_users_set(aead, 1);
> +	tipc_aead_users_set((struct tipc_aead __force __rcu *)aead, 1);
>   
>   	/* Mark this point, RX works */
>   	rx->timer1 = jiffies;
> diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
> index 48fac3b17e40..c9e753a1c98e 100644
> --- a/net/tipc/monitor.c
> +++ b/net/tipc/monitor.c
> @@ -260,16 +260,16 @@ static void mon_update_local_domain(struct tipc_monitor *mon)
>   		diff |= dom->members[i] != peer->addr;
>   		dom->members[i] = peer->addr;
>   		map_set(&dom->up_map, i, peer->is_up);
> -		cache->members[i] = htonl(peer->addr);
> +		cache->members[i] = (__force __u32)htonl(peer->addr);
>   	}
>   	diff |= dom->up_map != prev_up_map;
>   	if (!diff)
>   		return;
>   	dom->gen = ++mon->dom_gen;
> -	cache->len = htons(dom->len);
> -	cache->gen = htons(dom->gen);
> -	cache->member_cnt = htons(member_cnt);
> -	cache->up_map = cpu_to_be64(dom->up_map);
> +	cache->len = (__force __u32)htons(dom->len);
> +	cache->gen = (__force __u16)htons(dom->gen);
> +	cache->member_cnt = (__force __u32)htons(member_cnt);
> +	cache->up_map = (__force __u64)cpu_to_be64(dom->up_map);
>   	mon_apply_domain(mon, self);
>   }
>   
> @@ -455,10 +455,10 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
>   	struct tipc_mon_domain dom_bef;
>   	struct tipc_mon_domain *dom;
>   	struct tipc_peer *peer;
> -	u16 new_member_cnt = ntohs(arrv_dom->member_cnt);
> +	u16 new_member_cnt = ntohs((__force __be16)arrv_dom->member_cnt);
In general, it would be nice if we could have fewer of these ugly 
__force macros.
Unfortunately, since we are using the members of struct tipc_mon_domain 
in both NBO and HBO this seems hard to avoid.
So, until we have any better idea, ok.
>   	int new_dlen = dom_rec_len(arrv_dom, new_member_cnt);
> -	u16 new_gen = ntohs(arrv_dom->gen);
> -	u16 acked_gen = ntohs(arrv_dom->ack_gen);
> +	u16 new_gen = ntohs((__force __be16)arrv_dom->gen);
> +	u16 acked_gen = ntohs((__force __be16)arrv_dom->ack_gen);
>   	bool probing = state->probing;
>   	int i, applied_bef;
>   
> @@ -469,7 +469,7 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
>   		return;
>   	if (dlen != dom_rec_len(arrv_dom, new_member_cnt))
>   		return;
> -	if ((dlen < new_dlen) || ntohs(arrv_dom->len) != new_dlen)
> +	if (dlen < new_dlen || ntohs((__force __be16)arrv_dom->len) != new_dlen)
>   		return;
>   
>   	/* Synch generation numbers with peer if link just came up */
> @@ -517,9 +517,9 @@ void tipc_mon_rcv(struct net *net, void *data, u16 dlen, u32 addr,
>   	dom->len = new_dlen;
>   	dom->gen = new_gen;
>   	dom->member_cnt = new_member_cnt;
> -	dom->up_map = be64_to_cpu(arrv_dom->up_map);
> +	dom->up_map = be64_to_cpu((__force __be64)arrv_dom->up_map);
>   	for (i = 0; i < new_member_cnt; i++)
> -		dom->members[i] = ntohl(arrv_dom->members[i]);
> +		dom->members[i] = ntohl((__force __be32)arrv_dom->members[i]);
>   
>   	/* Update peers affected by this domain record */
>   	applied_bef = peer->applied;
> @@ -548,19 +548,19 @@ void tipc_mon_prep(struct net *net, void *data, int *dlen,
>   	if (likely(state->acked_gen == gen)) {
>   		len = dom_rec_len(dom, 0);
>   		*dlen = len;
> -		dom->len = htons(len);
> -		dom->gen = htons(gen);
> -		dom->ack_gen = htons(state->peer_gen);
> +		dom->len = (__force __u16)htons(len);
> +		dom->gen = (__force __u16)htons(gen);
> +		dom->ack_gen = (__force __u16)htons(state->peer_gen);
>   		dom->member_cnt = 0;
>   		return;
>   	}
>   	/* Send the full record */
>   	read_lock_bh(&mon->lock);
> -	len = ntohs(mon->cache.len);
> +	len = ntohs((__force __be16)mon->cache.len);
>   	*dlen = len;
>   	memcpy(data, &mon->cache, len);
>   	read_unlock_bh(&mon->lock);
> -	dom->ack_gen = htons(state->peer_gen);
> +	dom->ack_gen = (__force __u16)htons(state->peer_gen);
>   }
>   
>   void tipc_mon_get_state(struct net *net, u32 addr,
> diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
> index 5a1ce64039f7..0749df80454d 100644
> --- a/net/tipc/netlink_compat.c
> +++ b/net/tipc/netlink_compat.c
> @@ -696,7 +696,7 @@ static int tipc_nl_compat_link_dump(struct tipc_nl_compat_msg *msg,
>   	if (err)
>   		return err;
>   
> -	link_info.dest = nla_get_flag(link[TIPC_NLA_LINK_DEST]);
> +	link_info.dest = htonl(nla_get_flag(link[TIPC_NLA_LINK_DEST]));
This looks like bug correction. I suggest you put that in a separate patch.

Acked-by: Jon Maloy <jmaloy@redhat.com>

///jon

>   	link_info.up = htonl(nla_get_flag(link[TIPC_NLA_LINK_UP]));
>   	nla_strscpy(link_info.str, link[TIPC_NLA_LINK_NAME],
>   		    TIPC_MAX_LINK_NAME);
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 83d9eb830592..8b43ff3e4d95 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -372,26 +372,31 @@ static struct tipc_node *tipc_node_find_by_id(struct net *net, u8 *id)
>   }
>   
>   static void tipc_node_read_lock(struct tipc_node *n)
> +	__acquires(n->lock)
>   {
>   	read_lock_bh(&n->lock);
>   }
>   
>   static void tipc_node_read_unlock(struct tipc_node *n)
> +	__releases(n->lock)
>   {
>   	read_unlock_bh(&n->lock);
>   }
>   
>   static void tipc_node_write_lock(struct tipc_node *n)
> +	__acquires(n->lock)
>   {
>   	write_lock_bh(&n->lock);
>   }
>   
>   static void tipc_node_write_unlock_fast(struct tipc_node *n)
> +	__releases(n->lock)
>   {
>   	write_unlock_bh(&n->lock);
>   }
>   
>   static void tipc_node_write_unlock(struct tipc_node *n)
> +	__releases(n->lock)
>   {
>   	struct net *net = n->net;
>   	u32 addr = 0;



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
