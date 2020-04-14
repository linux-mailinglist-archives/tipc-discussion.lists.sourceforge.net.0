Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3FE1A8B77
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 21:51:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jORb4-00018q-HR; Tue, 14 Apr 2020 19:51:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jORb3-00018j-Ud
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 19:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FS+p/i/E33zKevxH/FWcqYaDxCyV8KC3ETXO0xbi3PI=; b=Uxk9ULK6wfkzVBl0JikdJt+IUl
 p+x+7TggQkkycy7ddcBl+2w6QCFCj2moKIyJ257AqRCd+pWCO1FKvoiDIjjAaxYqOCYKnT0K8Tvfy
 3svznrtGBO4gXCs54huIL/n8NbE7CECT5TqAgxCR4LHZ0bhfIx+bc+yqjyB/TV5VE8Ao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FS+p/i/E33zKevxH/FWcqYaDxCyV8KC3ETXO0xbi3PI=; b=fN/Y2wD7vB8OaZM6IZ96UhT5Yn
 jmA1sjgU+bgUh9+QOPCOng/I0lCCvzwEE4SBp+dhqObD7k/XkPPWzuuputqIqhw60lMlwDUwMxWUC
 JRJuH0+uenMtfnEB55u2k/mVdMW9OLYWaTB5jnr5ns+RvWYwqxXigYAWLdqTF1vSperE=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jORb0-00FBcD-EE
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 19:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586893900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FS+p/i/E33zKevxH/FWcqYaDxCyV8KC3ETXO0xbi3PI=;
 b=f+SOer/WwqTAfQI5S26yPH8mANE7JSXn3oQDu4H5npqHg+Jv9LbX/bO3wUc5s8l/9ac9FG
 BswJmuovMfnTV8UKmasymZ1MTEWYqyjuloexVyUrMpGqtjQHF9nK7hkOzuFsoBaiJUTz6O
 n1QcoGtOqcRaEEXcyNdnE9CPSKFo7Ts=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-rejHTaeMNiG-sSWC13skSw-1; Tue, 14 Apr 2020 15:51:36 -0400
X-MC-Unique: rejHTaeMNiG-sSWC13skSw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E234107ACC4;
 Tue, 14 Apr 2020 19:51:35 +0000 (UTC)
Received: from [10.10.112.203] (ovpn-112-203.rdu2.redhat.com [10.10.112.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8F1565D9CD;
 Tue, 14 Apr 2020 19:51:33 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200414073011.18322-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <8fa3fc84-c65d-7092-15cf-356a3457157a@redhat.com>
Date: Tue, 14 Apr 2020 15:51:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414073011.18322-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jORb0-00FBcD-EE
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: make peer node cleanup
 timer configurable
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



On 4/14/20 3:30 AM, Tuong Lien wrote:
> Since commit 6a939f365bdb ("tipc: Auto removal of peer down node
> instance"), a peer node instance is automatically clean up after 5 mins
> without contact. This changed behavior is not really expected from user
> who would expect to see the node with the "down" state in the node list
> as before instead.
> Also, the timer value is said to be small that the peer node might just
> be rebooting, so will come back soon. This is absolutely no problem but
> one wants to extend it to 10 minutes.
>
> This commit makes the timer configurable via the sysctl file:
>
> /proc/sys/net/tipc/node_cleanup
>
> which indicates in seconds how long a peer down node should be removed.
> The default value is 300 i.e. 5 mins, while a value of '0' will disable
> the auto removal feature.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/core.h   |  1 +
>   net/tipc/node.c   | 15 +++++++++------
>   net/tipc/sysctl.c |  8 ++++++++
>   3 files changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 631d83c9705f..7d07f9086936 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -89,6 +89,7 @@ struct tipc_crypto;
>   extern unsigned int tipc_net_id __read_mostly;
>   extern int sysctl_tipc_rmem[3] __read_mostly;
>   extern int sysctl_tipc_named_timeout __read_mostly;
> +extern int sysctl_tipc_node_cleanup __read_mostly;
>   
>   struct tipc_net {
>   	u8  node_id[NODE_ID_LEN];
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 2373a66f3b59..5cf01e182730 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -46,8 +46,11 @@
>   #include "trace.h"
>   #include "crypto.h"
>   
> +int sysctl_tipc_node_cleanup __read_mostly = 300; /* in seconds */
> +
>   #define INVALID_NODE_SIG	0x10000
> -#define NODE_CLEANUP_AFTER	300000
> +#define NODE_CLEANUP_AFTER	\
> +	msecs_to_jiffies(sysctl_tipc_node_cleanup * 1000)
>   
>   /* Flags used to take different actions according to flag type
>    * TIPC_NOTIFY_NODE_DOWN: notify node is down
> @@ -130,7 +133,7 @@ struct tipc_node {
>   	unsigned long keepalive_intv;
>   	struct timer_list timer;
>   	struct rcu_head rcu;
> -	unsigned long delete_at;
> +	unsigned long checkpt;
>   	struct net *peer_net;
>   	u32 peer_hash_mix;
>   #ifdef CONFIG_TIPC_CRYPTO
> @@ -537,7 +540,7 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>   	for (i = 0; i < MAX_BEARERS; i++)
>   		spin_lock_init(&n->links[i].lock);
>   	n->state = SELF_DOWN_PEER_LEAVING;
> -	n->delete_at = jiffies + msecs_to_jiffies(NODE_CLEANUP_AFTER);
> +	n->checkpt = jiffies;
>   	n->signature = INVALID_NODE_SIG;
>   	n->active_links[0] = INVALID_BEARER_ID;
>   	n->active_links[1] = INVALID_BEARER_ID;
> @@ -726,8 +729,8 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
>   		return false;
>   
>   	tipc_node_write_lock(peer);
> -
> -	if (!node_is_up(peer) && time_after(jiffies, peer->delete_at)) {
> +	if (!node_is_up(peer) && NODE_CLEANUP_AFTER &&
> +	    time_after(jiffies, peer->checkpt + NODE_CLEANUP_AFTER)) {
>   		tipc_node_clear_links(peer);
>   		tipc_node_delete_from_list(peer);
>   		deleted = true;
> @@ -1478,7 +1481,7 @@ static void node_lost_contact(struct tipc_node *n,
>   	uint i;
>   
>   	pr_debug("Lost contact with %x\n", n->addr);
> -	n->delete_at = jiffies + msecs_to_jiffies(NODE_CLEANUP_AFTER);
> +	n->checkpt = jiffies;
>   	trace_tipc_node_lost_contact(n, true, " ");
>   
>   	/* Clean up broadcast state */
> diff --git a/net/tipc/sysctl.c b/net/tipc/sysctl.c
> index 58ab3d6dcdce..087a89b27b9a 100644
> --- a/net/tipc/sysctl.c
> +++ b/net/tipc/sysctl.c
> @@ -75,6 +75,14 @@ static struct ctl_table tipc_table[] = {
>   		.extra1         = SYSCTL_ONE,
>   	},
>   #endif
> +	{
> +		.procname	= "node_cleanup",
> +		.data		= &sysctl_tipc_node_cleanup,
> +		.maxlen		= sizeof(sysctl_tipc_node_cleanup),
> +		.mode		= 0644,
> +		.proc_handler	= proc_dointvec_minmax,
> +		.extra1         = SYSCTL_ZERO,
> +	},
>   	{}
>   };
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
