Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 315601C8CFC
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 May 2020 15:51:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jWgvW-0000cm-TO; Thu, 07 May 2020 13:51:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jWgvV-0000cK-Jy
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 13:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x9/XRa/RqxijsmuexwOSvg3CbQmIwvrDj5pK59QmdUg=; b=mGmheqsjXQQ4cNQm1JqSc9AqnU
 uKXIqDfy6mjKJdKRLPfDUDEX2n3GMQJBlfh0xYWJKtO9OXL/96BSReNtmWdVKlQVnShGFCLKYh9Hs
 8UFMWm3UZFZKz/PaArspqP8zub/vfXOeS0aZZU7MYf9wLM3GMMMR9e3lYVrK3vvFIVZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x9/XRa/RqxijsmuexwOSvg3CbQmIwvrDj5pK59QmdUg=; b=OpWQf2CHGV3R1PzG0+4OvhozgC
 8LV2sIpxz4DfL58VKqhPi7t3tAPStaOU4kPINrW4pBUkYYVBZe5/KZCjqug+ni8G8xIozCv9Ir0+c
 6K8k+Y9ShCY2NuR2YuJ8joMVTwjUTqCcrTAVyU6BDh+pOoVeFvkr5mzNz960n2nMEx0M=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jWgvT-00EGSw-RI
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 13:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588859453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x9/XRa/RqxijsmuexwOSvg3CbQmIwvrDj5pK59QmdUg=;
 b=QY/kBxK/UHZtA2sKILxeY1as4IYC/fgACStXpH3p496CR++BwLaWk7VVsIsuTsrpjGLBS2
 0ywRvbZscWd9TUZy1mHbGbegDkF461T0SxX3OEHWn83EBKPgtwPvoEaxvUcjwG4n1jfXaL
 y5FBZURng2BduFQKqj6jjYkqBvnIuUI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-39-SOHxy9nzPpGfzNsj1nTUtQ-1; Thu, 07 May 2020 09:50:47 -0400
X-MC-Unique: SOHxy9nzPpGfzNsj1nTUtQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2C4780B71D;
 Thu,  7 May 2020 13:50:45 +0000 (UTC)
Received: from [10.10.118.229] (ovpn-118-229.rdu2.redhat.com [10.10.118.229])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 962367055D;
 Thu,  7 May 2020 13:50:44 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
 <20200507111249.8760-2-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <70d2adb7-3658-d6c5-c1ec-e469d903f74a@redhat.com>
Date: Thu, 7 May 2020 09:50:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200507111249.8760-2-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWgvT-00EGSw-RI
Subject: Re: [tipc-discussion] [net 1/2] tipc: fix memory leak in service
 subscripting
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



On 5/7/20 7:12 AM, Tuong Lien wrote:
> Upon receipt of a service subscription request from user via a topology
> connection, one 'sub' object will be allocated in kernel, so it will be
> able to send an event of the service if any to the user correspondingly
> then. Also, in case of any failure, the connection will be shutdown and
> all the pertaining 'sub' objects will be freed.
>
> However, there is a race condition as follows resulting in memory leak:
>
>         receive-work       connection        send-work
>                |                |                |
>          sub-1 |<------//-------|                |
>          sub-2 |<------//-------|                |
>                |                |<---------------| evt for sub-x
>          sub-3 |<------//-------|                |
>                :                :                :
>                :                :                :
>                |       /--------|                |
>                |       |        * peer closed    |
>                |       |        |                |
>                |       |        |<-------X-------| evt for sub-y
>                |       |        |<===============|
>          sub-n |<------/        X    shutdown    |
>      -> orphan |                                 |
>
> That is, the 'receive-work' may get the last subscription request while
> the 'send-work' is shutting down the connection due to peer close.
>
> We had a 'lock' on the connection, so the two actions cannot be carried
> out simultaneously. If the last subscription is allocated e.g. 'sub-n',
> before the 'send-work' closes the connection, there will be no issue at
> all, the 'sub' objects will be freed. In contrast the last subscription
> will become orphan since the connection was closed, and we released all
> references.
>
> This commit fixes the issue by simply adding one test if the connection
> remains in 'connected' state soon after we obtain the connection's lock
> then a subscription object can be created as usual, otherwise we ignore
> it.
>
> Reported-by: Thang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/topsrv.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 73dbed0c4b6b..399a89f6f1bf 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -400,7 +400,9 @@ static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
>   		return -EWOULDBLOCK;
>   	if (ret == sizeof(s)) {
>   		read_lock_bh(&sk->sk_callback_lock);
> -		ret = tipc_conn_rcv_sub(srv, con, &s);
> +		/* RACE: the connection can be closed in meanwhile */
s/in meanwhile/in the meantime/
> +		if (likely(connected(con)))
> +			ret = tipc_conn_rcv_sub(srv, con, &s);
>   		read_unlock_bh(&sk->sk_callback_lock);
>   		if (!ret)
>   			return 0;
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
