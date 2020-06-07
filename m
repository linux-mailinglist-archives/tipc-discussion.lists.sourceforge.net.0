Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 590CC1F0EE6
	for <lists+tipc-discussion@lfdr.de>; Sun,  7 Jun 2020 21:12:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ji0iB-00022N-U4; Sun, 07 Jun 2020 19:12:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1ji0iA-00022A-Rf
 for tipc-discussion@lists.sourceforge.net; Sun, 07 Jun 2020 19:12:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cT2qSbxlaMU3Xy3vnhmTAgB/RJaMafq8p8zTMNkqvGE=; b=nP5MAkB58bKexSwsy2Trp67hQl
 Wmzlvd/sK39FkO/B5XCI+OayjPexcggfg55Yv8hX4JPrItHkAXVPp1AlrXmiX6avz/a8U8S3P11Hp
 zD6elHZs8ZUJd5hA1cvZqRz/0Gb455SRN8grsGr8I26T0vQLzDCpG2o5u2ZXBTONiMQg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cT2qSbxlaMU3Xy3vnhmTAgB/RJaMafq8p8zTMNkqvGE=; b=cXrIuCQ5B2AnjN1PGPQaAmhPBC
 n3N90Ssw+EmkewFIeN6/Ue6Y+BIYTi9nqN548KWIGKPNPhXYQGBCJ/WsKNU3fsB2QzCElfTX1tnqd
 +/qwXwJmHjGY9uJ+EvUx3HGFEvlJgEpLeqIoBzD9SUhVyJwiAeUhznmDGRA7iKSkkWJw=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1ji0i9-009zpn-0Z
 for tipc-discussion@lists.sourceforge.net; Sun, 07 Jun 2020 19:12:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591557097;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cT2qSbxlaMU3Xy3vnhmTAgB/RJaMafq8p8zTMNkqvGE=;
 b=aIn2gvB7IwFbsgOW0ADBz5gvCXhJ8nOuqptb84XVlT8WzMgvp1E6v2ANoeXCNkHkpLROs4
 yu55oqK58W+kkj8KLATT0amDt9nXvulb/bIQp/vJ+SbXNVIKXNaClBkD/wvOdbqCiLSN4w
 e0nco6X4eiBTT+r7xsJ8yMYO2VBEHwE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-4Op-PwwHNLOiV-eHJhkmiw-1; Sun, 07 Jun 2020 15:11:34 -0400
X-MC-Unique: 4Op-PwwHNLOiV-eHJhkmiw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C792F1854C40;
 Sun,  7 Jun 2020 19:11:32 +0000 (UTC)
Received: from [10.10.112.90] (ovpn-112-90.rdu2.redhat.com [10.10.112.90])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 886C56606D;
 Sun,  7 Jun 2020 19:11:31 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200605075212.18700-1-hoang.h.le@dektech.com.au>
 <19d16ffb-f229-5e30-b392-7ecc41721576@redhat.com>
 <VI1PR05MB4605728F1F5CE529D5327784F1840@VI1PR05MB4605.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <50344054-9b8a-c57c-282b-ce69c4e3b6bd@redhat.com>
Date: Sun, 7 Jun 2020 15:11:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <VI1PR05MB4605728F1F5CE529D5327784F1840@VI1PR05MB4605.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ji0i9-009zpn-0Z
Subject: Re: [tipc-discussion] [next-net v6] tipc: update a binding service
 via broadcast
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



On 6/6/20 11:10 PM, Hoang Huu Le wrote:
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Friday, June 5, 2020 8:03 PM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Subject: Re: [next-net v6] tipc: update a binding service via broadcast
>
>
>
> On 6/5/20 3:52 AM, Hoang Huu Le wrote:
>> Currently, updating binding table (add service binding to
>> name table/withdraw a service binding) is being sent over replicast.
>> However, if we are scaling up clusters to > 100 nodes/containers this
>> method is less affection because of looping through nodes in a cluster one
>> by one.
>>
[...]
> Still not needed. This queue should be flushed in
> tipc_node_lost_contact(), which I now see we don't do.
> [Hoang] Yes, that's right. I will verify and send it out.
Actually, this might explain the mysterious "Failed to withdraw" 
printouts you observed during testing earlier.
Those withdraw items might be from a previous session just lingering in 
the queue.
On the other hand, such a bug is so obvious and would have such grave 
consequences (what if there are old 'publish' items in the queue?) that 
I find it hard to believe that it can have remain unnoticed all this time.
Are you sure we are not cleaning up this queue somewhere else?

If it really is so we must also issue a correction patch to 'net' for 
this issue.

///jon


>
> This has to e fixed too.
> ///jon
>> +		}
>> +	}
>> +	return NULL;
>> +}
>> +
>>    /**
>>     * tipc_named_rcv - process name table update messages sent by another node
>>     */
>> -void tipc_named_rcv(struct net *net, struct sk_buff_head *inputq)
>> +void tipc_named_rcv(struct net *net, struct sk_buff_head *namedq,
>> +		    u16 *rcv_nxt, bool *open)
>>    {
>> -	struct tipc_net *tn = net_generic(net, tipc_net_id);
>> -	struct tipc_msg *msg;
>> +	struct tipc_net *tn = tipc_net(net);
>>    	struct distr_item *item;
>> -	uint count;
>> -	u32 node;
>> +	struct tipc_msg *hdr;
>>    	struct sk_buff *skb;
>> -	int mtype;
>> +	u32 count, node = 0;
>>    
>>    	spin_lock_bh(&tn->nametbl_lock);
>> -	for (skb = skb_dequeue(inputq); skb; skb = skb_dequeue(inputq)) {
>> -		skb_linearize(skb);
>> -		msg = buf_msg(skb);
>> -		mtype = msg_type(msg);
>> -		item = (struct distr_item *)msg_data(msg);
>> -		count = msg_data_sz(msg) / ITEM_SIZE;
>> -		node = msg_orignode(msg);
>> +	while ((skb = tipc_named_dequeue(namedq, rcv_nxt, open))) {
>> +		hdr = buf_msg(skb);
>> +		node = msg_orignode(hdr);
>> +		item = (struct distr_item *)msg_data(hdr);
>> +		count = msg_data_sz(hdr) / ITEM_SIZE;
>>    		while (count--) {
>> -			tipc_update_nametbl(net, item, node, mtype);
>> +			tipc_update_nametbl(net, item, node, msg_type(hdr));
>>    			item++;
>>    		}
>>    		kfree_skb(skb);
>> @@ -345,6 +402,6 @@ void tipc_named_reinit(struct net *net)
>>    		publ->node = self;
>>    	list_for_each_entry_rcu(publ, &nt->cluster_scope, binding_node)
>>    		publ->node = self;
>> -
>> +	nt->rc_dests = 0;
>>    	spin_unlock_bh(&tn->nametbl_lock);
>>    }
>> diff --git a/net/tipc/name_distr.h b/net/tipc/name_distr.h
>> index 63fc73e0fa6c..092323158f06 100644
>> --- a/net/tipc/name_distr.h
>> +++ b/net/tipc/name_distr.h
>> @@ -67,11 +67,14 @@ struct distr_item {
>>    	__be32 key;
>>    };
>>    
>> +void tipc_named_bcast(struct net *net, struct sk_buff *skb);
>>    struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ);
>>    struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ);
>> -void tipc_named_node_up(struct net *net, u32 dnode);
>> -void tipc_named_rcv(struct net *net, struct sk_buff_head *msg_queue);
>> +void tipc_named_node_up(struct net *net, u32 dnode, u16 capabilities);
>> +void tipc_named_rcv(struct net *net, struct sk_buff_head *namedq,
>> +		    u16 *rcv_nxt, bool *open);
>>    void tipc_named_reinit(struct net *net);
>> -void tipc_publ_notify(struct net *net, struct list_head *nsub_list, u32 addr);
>> +void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
>> +		      u32 addr, u16 capabilities);
>>    
>>    #endif
>> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
>> index 359b2bc888cf..2ac33d32edc2 100644
>> --- a/net/tipc/name_table.c
>> +++ b/net/tipc/name_table.c
>> @@ -729,6 +729,7 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>>    	struct tipc_net *tn = tipc_net(net);
>>    	struct publication *p = NULL;
>>    	struct sk_buff *skb = NULL;
>> +	u32 rc_dests;
>>    
>>    	spin_lock_bh(&tn->nametbl_lock);
>>    
>> @@ -743,12 +744,14 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>>    		nt->local_publ_count++;
>>    		skb = tipc_named_publish(net, p);
>>    	}
>> +	rc_dests = nt->rc_dests;
>>    exit:
>>    	spin_unlock_bh(&tn->nametbl_lock);
>>    
>>    	if (skb)
>> -		tipc_node_broadcast(net, skb);
>> +		tipc_node_broadcast(net, skb, rc_dests);
>>    	return p;
>> +
>>    }
>>    
>>    /**
>> @@ -762,6 +765,7 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>>    	u32 self = tipc_own_addr(net);
>>    	struct sk_buff *skb = NULL;
>>    	struct publication *p;
>> +	u32 rc_dests;
>>    
>>    	spin_lock_bh(&tn->nametbl_lock);
>>    
>> @@ -775,10 +779,11 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>>    		pr_err("Failed to remove local publication {%u,%u,%u}/%u\n",
>>    		       type, lower, upper, key);
>>    	}
>> +	rc_dests = nt->rc_dests;
>>    	spin_unlock_bh(&tn->nametbl_lock);
>>    
>>    	if (skb) {
>> -		tipc_node_broadcast(net, skb);
>> +		tipc_node_broadcast(net, skb, rc_dests);
>>    		return 1;
>>    	}
>>    	return 0;
>> diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
>> index 728bc7016c38..8064e1986e2c 100644
>> --- a/net/tipc/name_table.h
>> +++ b/net/tipc/name_table.h
>> @@ -106,6 +106,8 @@ struct name_table {
>>    	struct list_head cluster_scope;
>>    	rwlock_t cluster_scope_lock;
>>    	u32 local_publ_count;
>> +	u32 rc_dests;
>> +	u32 snd_nxt;
>>    };
>>    
>>    int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
>> diff --git a/net/tipc/node.c b/net/tipc/node.c
>> index 803a3a6d0f50..ad8d7bce1f98 100644
>> --- a/net/tipc/node.c
>> +++ b/net/tipc/node.c
>> @@ -75,6 +75,8 @@ struct tipc_bclink_entry {
>>    	struct sk_buff_head arrvq;
>>    	struct sk_buff_head inputq2;
>>    	struct sk_buff_head namedq;
>> +	u16 named_rcv_nxt;
>> +	bool named_open;
>>    };
>>    
>>    /**
>> @@ -396,10 +398,10 @@ static void tipc_node_write_unlock(struct tipc_node *n)
>>    	write_unlock_bh(&n->lock);
>>    
>>    	if (flags & TIPC_NOTIFY_NODE_DOWN)
>> -		tipc_publ_notify(net, publ_list, addr);
>> +		tipc_publ_notify(net, publ_list, addr, n->capabilities);
>>    
>>    	if (flags & TIPC_NOTIFY_NODE_UP)
>> -		tipc_named_node_up(net, addr);
>> +		tipc_named_node_up(net, addr, n->capabilities);
>>    
>>    	if (flags & TIPC_NOTIFY_LINK_UP) {
>>    		tipc_mon_peer_up(net, addr, bearer_id);
>> @@ -1729,12 +1731,23 @@ int tipc_node_distr_xmit(struct net *net, struct sk_buff_head *xmitq)
>>    	return 0;
>>    }
>>    
>> -void tipc_node_broadcast(struct net *net, struct sk_buff *skb)
>> +void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
>>    {
>> +	struct sk_buff_head xmitq;
>>    	struct sk_buff *txskb;
>>    	struct tipc_node *n;
>> +	u16 dummy;
>>    	u32 dst;
>>    
>> +	/* Use broadcast if all nodes support it */
>> +	if (!rc_dests && tipc_bcast_get_mode(net) != BCLINK_MODE_RCAST) {
>> +		__skb_queue_head_init(&xmitq);
>> +		__skb_queue_tail(&xmitq, skb);
>> +		tipc_bcast_xmit(net, &xmitq, &dummy);
>> +		return;
>> +	}
>> +
>> +	/* Otherwise use legacy replicast method */
>>    	rcu_read_lock();
>>    	list_for_each_entry_rcu(n, tipc_nodes(net), list) {
>>    		dst = n->addr;
>> @@ -1749,7 +1762,6 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb)
>>    		tipc_node_xmit_skb(net, txskb, dst, 0);
>>    	}
>>    	rcu_read_unlock();
>> -
>>    	kfree_skb(skb);
>>    }
>>    
>> @@ -1844,7 +1856,9 @@ static void tipc_node_bc_rcv(struct net *net, struct sk_buff *skb, int bearer_id
>>    
>>    	/* Handle NAME_DISTRIBUTOR messages sent from 1.7 nodes */
>>    	if (!skb_queue_empty(&n->bc_entry.namedq))
>> -		tipc_named_rcv(net, &n->bc_entry.namedq);
>> +		tipc_named_rcv(net, &n->bc_entry.namedq,
>> +			       &n->bc_entry.named_rcv_nxt,
>> +			       &n->bc_entry.named_open);
>>    
>>    	/* If reassembly or retransmission failure => reset all links to peer */
>>    	if (rc & TIPC_LINK_DOWN_EVT)
>> @@ -2109,7 +2123,9 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
>>    		tipc_node_link_down(n, bearer_id, false);
>>    
>>    	if (unlikely(!skb_queue_empty(&n->bc_entry.namedq)))
>> -		tipc_named_rcv(net, &n->bc_entry.namedq);
>> +		tipc_named_rcv(net, &n->bc_entry.namedq,
>> +			       &n->bc_entry.named_rcv_nxt,
>> +			       &n->bc_entry.named_open);
>>    
>>    	if (unlikely(!skb_queue_empty(&n->bc_entry.inputq1)))
>>    		tipc_node_mcast_rcv(n);
>> diff --git a/net/tipc/node.h b/net/tipc/node.h
>> index a6803b449a2c..9f6f13f1604f 100644
>> --- a/net/tipc/node.h
>> +++ b/net/tipc/node.h
>> @@ -55,7 +55,8 @@ enum {
>>    	TIPC_MCAST_RBCTL      = (1 << 7),
>>    	TIPC_GAP_ACK_BLOCK    = (1 << 8),
>>    	TIPC_TUNNEL_ENHANCED  = (1 << 9),
>> -	TIPC_NAGLE            = (1 << 10)
>> +	TIPC_NAGLE            = (1 << 10),
>> +	TIPC_NAMED_BCAST      = (1 << 11)
>>    };
>>    
>>    #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
>> @@ -68,7 +69,8 @@ enum {
>>    				TIPC_MCAST_RBCTL       |   \
>>    				TIPC_GAP_ACK_BLOCK     |   \
>>    				TIPC_TUNNEL_ENHANCED   |   \
>> -				TIPC_NAGLE)
>> +				TIPC_NAGLE             |   \
>> +				TIPC_NAMED_BCAST)
>>    
>>    #define INVALID_BEARER_ID -1
>>    
>> @@ -101,7 +103,7 @@ int tipc_node_xmit_skb(struct net *net, struct sk_buff *skb, u32 dest,
>>    		       u32 selector);
>>    void tipc_node_subscribe(struct net *net, struct list_head *subscr, u32 addr);
>>    void tipc_node_unsubscribe(struct net *net, struct list_head *subscr, u32 addr);
>> -void tipc_node_broadcast(struct net *net, struct sk_buff *skb);
>> +void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests);
>>    int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32 peer_port);
>>    void tipc_node_remove_conn(struct net *net, u32 dnode, u32 port);
>>    int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected);



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
