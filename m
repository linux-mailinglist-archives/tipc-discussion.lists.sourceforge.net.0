Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC41E3D1AFA
	for <lists+tipc-discussion@lfdr.de>; Thu, 22 Jul 2021 02:56:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6N15-0006Fa-GN; Thu, 22 Jul 2021 00:56:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1m6N13-0006FP-Kb
 for tipc-discussion@lists.sourceforge.net; Thu, 22 Jul 2021 00:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rrab8VGcbMQ9Mkp6ru8HUBlhBvBCmMLKfk0T4H82qss=; b=RBvQfmQTEP69pM7Un2tGB2yMBE
 s0pcpQ7wsH7gR5rpUz23sYKDIPqHhK3Hrf5g1oHoID7uwgZ+LjPYS6d3Oji4v58RkPwF83WmsChkM
 m2EOXpoO5nw8oNZbFV29Ogg3RmYUkmGJjvYt1OI0cS38tgGXT+58loEwSbjjw5PTQR1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rrab8VGcbMQ9Mkp6ru8HUBlhBvBCmMLKfk0T4H82qss=; b=AFLC5ArgpvHs/sFpKzQcn4z19h
 rkAP33kzKXfrFzZCwaqahKEQ0rT6a12YbGzdTRsJ3l7to0r15PP+XpJa1TNZwvqkkI0wWuUwX1iow
 m3nR1afuY2qbOZ2RsM8F88dDInxJJ/4TyQHoLGGBPu5N6p71zdzAFrDRZb7D8RThkUqs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6N10-00GGpd-0W
 for tipc-discussion@lists.sourceforge.net; Thu, 22 Jul 2021 00:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626915395;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rrab8VGcbMQ9Mkp6ru8HUBlhBvBCmMLKfk0T4H82qss=;
 b=V8AqQkPNnWCTecI7wJlIphCvGKeadj01DNQB5H+zQJghZXuFHPr9w2upWsOrE+WAhxZGbI
 eQpkomkJO1p80mr/Lj5ZewmXuNKVXmMylsVml4hIp1q0XPrZzFnIFbV38mAfMGAChEiPA2
 tDJcDG0lVjHea3oNUOySmWfwQtwt8qg=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-mxxkwzxePZO99zBAChbomw-1; Wed, 21 Jul 2021 20:56:34 -0400
X-MC-Unique: mxxkwzxePZO99zBAChbomw-1
Received: by mail-qt1-f198.google.com with SMTP id
 w13-20020ac843cd0000b0290251f0b91196so2492512qtn.14
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 21 Jul 2021 17:56:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rrab8VGcbMQ9Mkp6ru8HUBlhBvBCmMLKfk0T4H82qss=;
 b=bWlTxny0RnaMjDJkdxF7hvvs6fuJptdOdNe2tlyskELrlOSbvijYjzFjURPVg5zGri
 jhOYmU4IGsiIps3CsD1imR6i7JBdxqy0tYhTZhvk1Y0yl63vaLDqakh8kAE/TG5o/7SE
 9jAgM1bqSdHO4SBAGY9gL60u0AxxI3xjctqt+A/L3YU2UqTDll8kr+gr+JMcmnMh9Ng/
 T7otDZPIiSwa9oSal5+Hg1KNTMCeJCGr/zS0pUkTcqC+F0q5ITweRw1dxhYrVp1WV1Ch
 Hfq8g2c9kNhB0WUZsyC8P/Ti2uc8hYPM4XEHxzPZ/mISQP3qkxN6JW1jX6RhK7CvdoW/
 NrGA==
X-Gm-Message-State: AOAM532eYAlCr6jJBq/Z4xh9LQ8+u4K+Uj9uBEv0Z1Tq0f36ZPOmF0Mk
 2zCZDVU2L5D/I1yMOmOX/B0AxMXb9yXNl9COv7SCpZClJms99Vb5JGRhXTa5l321imU/uKJcWZZ
 jkS+9qgr5wm4FIxfmcEyBZ1fUcBFG/VkeASPLj75YBO0TIpB5I1jjWMtxbg+q0ltiOMTjGyv7+/
 MIQrIFNXkKjA==
X-Received: by 2002:ac8:5ac6:: with SMTP id d6mr6362049qtd.261.1626915394334; 
 Wed, 21 Jul 2021 17:56:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKxCsDRGauTL4rEB4fN2sSw+acttJqXq05ErMTjD6jTkkJyGYKzN1YQxNNSlSaf46Oe2n2nA==
X-Received: by 2002:ac8:5ac6:: with SMTP id d6mr6362033qtd.261.1626915394102; 
 Wed, 21 Jul 2021 17:56:34 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id d79sm7541120qke.45.2021.07.21.17.56.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Jul 2021 17:56:33 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <721bd5e84b3c4eb906014377d569e6074046b26b.1625935579.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <4746e6e9-d9d4-f883-3b96-936d84bc10e8@redhat.com>
Date: Wed, 21 Jul 2021 20:56:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <721bd5e84b3c4eb906014377d569e6074046b26b.1625935579.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m6N10-00GGpd-0W
Subject: Re: [tipc-discussion] [PATCH net] tipc: fix implicit-connect for
 SYN+
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



On 10/07/2021 12:46, Xin Long wrote:
> For implicit-connect, when it's either SYN- or SYN+, an ACK should
> be sent back to the client immediately. It's not appropriate for
> the client to enter established state only after receiving data
> from the server.
> 
> On client side, after the SYN is sent out, tipc_wait_for_connect()
> should be called to wait for the ACK if timeout is set.
> 
> This patch also restricts __tipc_sendstream() to call __sendmsg()
> only when it's in TIPC_OPEN state, so that the client can program
> in a single loop doing both connecting and data sending like:
> 
>    for (...)
>        sendmsg(dest, buf);
> 
> This makes the implicit-connect more implicit.
> 
> Fixes: b97bf3fd8f6a ("[TIPC] Initial merge")
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/socket.c | 21 +++++++++++++--------
>   1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 34a97ea36cc8..ebd300c26a44 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -158,6 +158,7 @@ static void tipc_sk_remove(struct tipc_sock *tsk);
>   static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dsz);
>   static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dsz);
>   static void tipc_sk_push_backlog(struct tipc_sock *tsk, bool nagle_ack);
> +static int tipc_wait_for_connect(struct socket *sock, long *timeo_p);
>   
>   static const struct proto_ops packet_ops;
>   static const struct proto_ops stream_ops;
> @@ -1515,8 +1516,13 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>   		rc = 0;
>   	}
>   
> -	if (unlikely(syn && !rc))
> +	if (unlikely(syn && !rc)) {
>   		tipc_set_sk_state(sk, TIPC_CONNECTING);
> +		if (timeout) {
> +			timeout = msecs_to_jiffies(timeout);
> +			tipc_wait_for_connect(sock, &timeout);
> +		}
> +	}
>   
>   	return rc ? rc : dlen;
>   }
> @@ -1564,7 +1570,7 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
>   		return -EMSGSIZE;
>   
>   	/* Handle implicit connection setup */
> -	if (unlikely(dest)) {
> +	if (unlikely(dest && sk->sk_state == TIPC_OPEN)) {
>   		rc = __tipc_sendmsg(sock, m, dlen);
>   		if (dlen && dlen == rc) {
>   			tsk->peer_caps = tipc_node_get_capabilities(net, dnode);
> @@ -2689,9 +2695,10 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
>   		       bool kern)
>   {
>   	struct sock *new_sk, *sk = sock->sk;
> -	struct sk_buff *buf;
>   	struct tipc_sock *new_tsock;
> +	struct msghdr m = {NULL,};
>   	struct tipc_msg *msg;
> +	struct sk_buff *buf;
>   	long timeo;
>   	int res;
>   
> @@ -2737,19 +2744,17 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
>   	}
>   
>   	/*
> -	 * Respond to 'SYN-' by discarding it & returning 'ACK'-.
> -	 * Respond to 'SYN+' by queuing it on new socket.
> +	 * Respond to 'SYN-' by discarding it & returning 'ACK'.
> +	 * Respond to 'SYN+' by queuing it on new socket & returning 'ACK'.
>   	 */
>   	if (!msg_data_sz(msg)) {
> -		struct msghdr m = {NULL,};
> -
>   		tsk_advance_rx_queue(sk);
> -		__tipc_sendstream(new_sock, &m, 0);
>   	} else {
>   		__skb_dequeue(&sk->sk_receive_queue);
>   		__skb_queue_head(&new_sk->sk_receive_queue, buf);
>   		skb_set_owner_r(buf, new_sk);
>   	}
> +	__tipc_sendstream(new_sock, &m, 0);
>   	release_sock(new_sk);
>   exit:
>   	release_sock(sk);
> 
Acked by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
