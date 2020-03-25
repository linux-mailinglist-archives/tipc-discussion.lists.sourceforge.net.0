Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 064EE192E4F
	for <lists+tipc-discussion@lfdr.de>; Wed, 25 Mar 2020 17:38:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jH92R-0000Fc-3G; Wed, 25 Mar 2020 16:37:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jH92P-0000FP-5q
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Mar 2020 16:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qcLsukKw8/a7t6nrETrgsr7lxGdZl43G9PZ6zd3aNHQ=; b=leNRcz9leib32YqZALwG7W5f4y
 XWG0hfX/TceSpigHFrMEcM/nEXrhMgiDQWwP2r8+Ix8r+5vGfBsAJLNht0wqBcR3uJuMmcDTcvKHr
 jbw6JekZJUXMWP2SACmPlYnVQE4ZcR9UnXcaFtdM971jEvt7qk3IOhEXI1BKiaoGdcn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qcLsukKw8/a7t6nrETrgsr7lxGdZl43G9PZ6zd3aNHQ=; b=TPzMQULdTtXUD0C8YCigO4ePAy
 SeMFdiUm1RDPhtZvC+myiOy/Jg8cf3N3RNrVMQfOA73XXWcG2nteB93g4wNKm3lKo0jKwK1y8e5HO
 9UITm0GraQT0U/MHNHPTAzx2olpNBwUtltspcdQaRbYX666B7ppFP3qHGMh0qVPFUzWU=;
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jH92J-00GjLq-Ji
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Mar 2020 16:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585154261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qcLsukKw8/a7t6nrETrgsr7lxGdZl43G9PZ6zd3aNHQ=;
 b=MY+iqxBkWjikkaeiKJEzwz/bmqQl+WX8prCp3im3A32UxnY0xalRNL27xKQKFOZd0L3EgI
 QBKcbITbaNBQRE5JFp0BXfepluapfoQSWINZmryW4HE7NhV/5x0IGqAxMxDh732Lt1UUGJ
 ssD1eqyNS50pkp16EuB9QgxLzKJcU5s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-xiYL-hHXPqaBVnWB7hsa1g-1; Wed, 25 Mar 2020 12:37:37 -0400
X-MC-Unique: xiYL-hHXPqaBVnWB7hsa1g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88C558017CC;
 Wed, 25 Mar 2020 16:37:34 +0000 (UTC)
Received: from [10.10.120.60] (ovpn-120-60.rdu2.redhat.com [10.10.120.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C8E135DA7B;
 Wed, 25 Mar 2020 16:37:33 +0000 (UTC)
To: Hoang Le <hoang.h.le@dektech.com.au>, tipc-dek@dektech.com.au,
 maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
References: <20200325074326.11399-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d77d26a5-7ee7-fa7f-dd3b-45bde7700ba0@redhat.com>
Date: Wed, 25 Mar 2020 12:37:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200325074326.11399-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.74 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jH92J-00GjLq-Ji
Subject: Re: [tipc-discussion] [net-next] tipc: Add a missing case of
 TIPC_DIRECT_MSG type
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



On 3/25/20 3:43 AM, Hoang Le wrote:
> In the commit f73b12812a3d
> ("tipc: improve throughput between nodes in netns"), we're missing a check
> to handle TIPC_DIRECT_MSG type, it's still using old sending mechanism for
> this message type. So, throughput improvement is not significant as
> expected.
>
> Besides that, when sending a large message with that type, we're also
> handle wrong receiving queue, it should be enqueued in socket receiving
> instead of multicast messages.
>
> Fix this by adding the missing case for TIPC_DIRECT_MSG.
>
> Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
> Reported-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/msg.h    | 5 +++++
>   net/tipc/node.c   | 3 ++-
>   net/tipc/socket.c | 2 +-
>   3 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index 6d466ebdb64f..871feadbbc19 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -394,6 +394,11 @@ static inline u32 msg_connected(struct tipc_msg *m)
>   	return msg_type(m) == TIPC_CONN_MSG;
>   }
>   
> +static inline u32 msg_direct(struct tipc_msg *m)
> +{
> +	return msg_type(m) == TIPC_DIRECT_MSG;
> +}
> +
>   static inline u32 msg_errcode(struct tipc_msg *m)
>   {
>   	return msg_bits(m, 1, 25, 0xf);
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 0c88778c88b5..10292c942384 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1586,7 +1586,8 @@ static void tipc_lxc_xmit(struct net *peer_net, struct sk_buff_head *list)
>   	case TIPC_MEDIUM_IMPORTANCE:
>   	case TIPC_HIGH_IMPORTANCE:
>   	case TIPC_CRITICAL_IMPORTANCE:
> -		if (msg_connected(hdr) || msg_named(hdr)) {
> +		if (msg_connected(hdr) || msg_named(hdr) ||
> +		    msg_direct(hdr)) {
>   			tipc_loopback_trace(peer_net, list);
>   			spin_lock_init(&list->lock);
>   			tipc_sk_rcv(peer_net, list);
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 693e8902161e..87466607097f 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1461,7 +1461,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>   	}
>   
>   	__skb_queue_head_init(&pkts);
> -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
> +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, true);
>   	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
>   	if (unlikely(rc != dlen))
>   		return rc;
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
